// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bb.Executer

package _bb {
import _s2._1i5;

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.utils.getDefinitionByName;

public class Executer extends EventDispatcher {

    public static const _0g:String = "returned";
    public static const _1j:String = "ExeValue|((com.junkbyte.console.core::)?Executer)";
    private static const _xD:String = "#";

    public static function _0pz(_arg1:Object, _arg2:String, _arg3:Object = null) {
        var _local4:Executer = new (Executer)();
        _local4._02U(_arg3);
        return (_local4.exec(_arg1, _arg2));
    }
    public var _1s2:Boolean;
    private var _1jK:Array;
    private var _l1:Boolean;
    private var _1qX;
    private var _0H3;
    private var _0N1:Object;
    private var _0VG:Array;

    public function get returned() {
        return (this._0H3);
    }

    public function get scope() {
        return (this._1qX);
    }

    public function _02U(_arg1:Object):void {
        this._0N1 = _arg1;
    }

    public function _uH(_arg1:Array):void {
        this._0VG = _arg1;
    }

    public function exec(_arg1, _arg2:String) {
        var s:* = _arg1;
        var str:String = _arg2;
        if (this._l1) {
            throw (new Error("CommandExec.exec() is already runnnig. Does not support loop backs."));
        }
        ;
        this._l1 = true;
        this._1qX = s;
        this._1jK = [];
        if (!this._0N1) {
            this._0N1 = new Object();
        }
        ;
        if (!this._0VG) {
            this._0VG = new Array();
        }
        ;
        try {
            this._0Ki(str);
        } catch (e:Error) {
            reset();
            throw (e);
        }
        ;
        this.reset();
        return (this._0H3);
    }

    private function reset():void {
        this._0N1 = null;
        this._0VG = null;
        this._1jK = null;
        this._l1 = false;
    }

    private function _0Ki(_arg1:String):void {
        var _local5:String;
        var _local6:String;
        var _local7:String;
        var _local8:int;
        var _local9:int;
        var _local10:String;
        var _local11:*;
        var _local2:RegExp = /''|""|('(.*?)[^\\]')|("(.*?)[^\\]")/;
        var _local3:Object = _local2.exec(_arg1);
        while (_local3 != null) {
            _local6 = _local3[0];
            _local7 = _local6.charAt(0);
            _local8 = _local6.indexOf(_local7);
            _local9 = _local6.lastIndexOf(_local7);
            _local10 = _local6.substring((_local8 + 1), _local9).replace(/\\(.)/g, "$1");
            _arg1 = this._1Fm(_arg1, new ExeValue(_local10), (_local3.index + _local8), ((_local3.index + _local9) + 1));
            _local3 = _local2.exec(_arg1);
        }
        ;
        if (_arg1.search(new RegExp("'|\"")) >= 0) {
            throw (new Error("Bad syntax extra quotation marks"));
        }
        ;
        var _local4:Array = _arg1.split(/\s*;\s*/);
        for each (_local5 in _local4) {
            if (_local5.length) {
                _local11 = this._0N1[_0g];
                if (((_local11) && ((_local5 == "/")))) {
                    this._1qX = _local11;
                    dispatchEvent(new Event(Event.COMPLETE));
                } else {
                    this._YJ(_local5);
                }
                ;
            }
            ;
        }
        ;
    }

    private function _YJ(_arg1:String) {
        var _local3:int;
        var _local4:int;
        var _local5:int;
        var _local6:String;
        var _local7:Boolean;
        var _local8:int;
        var _local9:String;
        var _local10:Array;
        var _local11:String;
        var _local12:ExeValue;
        var _local13:String;
        _arg1 = this._Bb(_arg1);
        var _local2:int = _arg1.lastIndexOf("(");
        while (_local2 >= 0) {
            _local3 = _arg1.indexOf(")", _local2);
            if (_arg1.substring((_local2 + 1), _local3).search(/\w/) >= 0) {
                _local4 = _local2;
                _local5 = (_local2 + 1);
                while ((((_local4 >= 0)) && ((_local4 < _local5)))) {
                    _local4++;
                    _local4 = _arg1.indexOf("(", _local4);
                    _local5 = _arg1.indexOf(")", (_local5 + 1));
                }
                ;
                _local6 = _arg1.substring((_local2 + 1), _local5);
                _local7 = false;
                _local8 = (_local2 - 1);
                while (true) {
                    _local9 = _arg1.charAt(_local8);
                    if (((_local9.match(/[^\s]/)) || ((_local8 <= 0)))) {
                        if (_local9.match(/\w/)) {
                            _local7 = true;
                        }
                        ;
                        break;
                    }
                    ;
                    _local8--;
                }
                ;
                if (_local7) {
                    _local10 = _local6.split(",");
                    _arg1 = this._1Fm(_arg1, new ExeValue(_local10), (_local2 + 1), _local5);
                    for (_local11 in _local10) {
                        _local10[_local11] = this._nm(this._Bb(_local10[_local11])).value;
                    }
                    ;
                } else {
                    _local12 = new ExeValue(_local12);
                    _arg1 = this._1Fm(_arg1, _local12, _local2, (_local5 + 1));
                    _local12.setValue(this._nm(this._Bb(_local6)).value);
                }
                ;
            }
            ;
            _local2 = _arg1.lastIndexOf("(", (_local2 - 1));
        }
        ;
        this._0H3 = this._nm(_arg1).value;
        if (((this._0H3) && (this._1s2))) {
            _local13 = typeof(this._0H3);
            if ((((_local13 == "object")) || ((_local13 == "xml")))) {
                this._1qX = this._0H3;
            }
            ;
        }
        ;
        dispatchEvent(new Event(Event.COMPLETE));
        return (this._0H3);
    }

    private function _1Fm(_arg1:String, _arg2, _arg3:int, _arg4:int):String {
        _arg1 = (((_arg1.substring(0, _arg3) + _xD) + this._1jK.length) + _arg1.substring(_arg4));
        this._1jK.push(_arg2);
        return (_arg1);
    }

    private function _nm(_arg1:String):ExeValue {
        var _local7:String;
        var _local8:*;
        var _local11:int;
        var _local12:int;
        var _local13:String;
        var _local14:ExeValue;
        var _local15:ExeValue;
        var _local2:RegExp = /\s*(((\|\||\&\&|[+|\-|*|\/|\%|\||\&|\^]|\=\=?|\!\=|\>\>?\>?|\<\<?)\=?)|=|\~|\sis\s|typeof|delete\s)\s*/g;
        var _local3:Object = _local2.exec(_arg1);
        var _local4:Array = [];
        if (_local3 == null) {
            _local4.push(_arg1);
        } else {
            _local11 = 0;
            while (_local3 != null) {
                _local12 = _local3.index;
                _local13 = _local3[0];
                _local3 = _local2.exec(_arg1);
                if (_local3 == null) {
                    _local4.push(_arg1.substring(_local11, _local12));
                    _local4.push(this._Bb(_local13));
                    _local4.push(_arg1.substring((_local12 + _local13.length)));
                } else {
                    _local4.push(_arg1.substring(_local11, _local12));
                    _local4.push(this._Bb(_local13));
                    _local11 = (_local12 + _local13.length);
                }
                ;
            }
            ;
        }
        ;
        var _local5:int = _local4.length;
        var _local6:int;
        while (_local6 < _local5) {
            _local4[_local6] = this._Ep(_local4[_local6]);
            _local6 = (_local6 + 2);
        }
        ;
        var _local9:RegExp = /((\|\||\&\&|[+|\-|*|\/|\%|\||\&|\^]|\>\>\>?|\<\<)\=)|=/;
        _local6 = 1;
        while (_local6 < _local5) {
            _local7 = _local4[_local6];
            if (_local7.replace(_local9, "") != "") {
                _local8 = this._1hB(_local4[(_local6 - 1)], _local7, _local4[(_local6 + 1)]);
                _local14 = ExeValue(_local4[(_local6 - 1)]);
                _local14.setValue(_local8);
                _local4.splice(_local6, 2);
                _local6 = (_local6 - 2);
                _local5 = (_local5 - 2);
            }
            ;
            _local6 = (_local6 + 2);
        }
        ;
        _local4.reverse();
        var _local10:ExeValue = _local4[0];
        _local6 = 1;
        while (_local6 < _local5) {
            _local7 = _local4[_local6];
            if (_local7.replace(_local9, "") == "") {
                _local10 = _local4[(_local6 - 1)];
                _local15 = _local4[(_local6 + 1)];
                if (_local7.length > 1) {
                    _local7 = _local7.substring(0, (_local7.length - 1));
                }
                ;
                _local8 = this._1hB(_local15, _local7, _local10);
                _local15.setValue(_local8);
            }
            ;
            _local6 = (_local6 + 2);
        }
        ;
        return (_local10);
    }

    private function _Ep(_arg1:String):ExeValue {
        var firstparts:Array;
        var newstr:String;
        var defclose:int;
        var newobj:* = undefined;
        var classstr:String;
        var def:* = undefined;
        var havemore:Boolean;
        var index:int;
        var isFun:Boolean;
        var basestr:String;
        var newv:ExeValue;
        var newbase:* = undefined;
        var closeindex:int;
        var paramstr:String;
        var params:Array;
        var nss:Array;
        var ns:Namespace;
        var nsv:* = undefined;
        var str:String = _arg1;
        var v:ExeValue = new ExeValue(this._1qX);
        if (str.indexOf("new ") == 0) {
            newstr = str;
            defclose = str.indexOf(")");
            if (defclose >= 0) {
                newstr = str.substring(0, (defclose + 1));
            }
            ;
            newobj = this._1JW(newstr.substring(4));
            str = this._1Fm(str, new ExeValue(newobj), 0, newstr.length);
        }
        ;
        var reg:RegExp = /\.|\(/g;
        var result:Object = reg.exec(str);
        if ((((result == null)) || (!(isNaN(Number(str)))))) {
            return (this._1D1(str, this._1qX));
        }
        ;
        firstparts = String(str.split("(")[0]).split(".");
        if (firstparts.length > 0) {
            while (firstparts.length) {
                classstr = firstparts.join(".");
                try {
                    def = getDefinitionByName(this._Bb(classstr));
                    havemore = (str.length > classstr.length);
                    str = this._1Fm(str, new ExeValue(def), 0, classstr.length);
                    if (havemore) {
                        reg.lastIndex = 0;
                        result = reg.exec(str);
                    } else {
                        return (this._1D1(str));
                    }
                    ;
                    break;
                } catch (e:Error) {
                    firstparts.pop();
                }
                ;
            }
            ;
        }
        ;
        var previndex:int;
        while (result != null) {
            index = result.index;
            isFun = (str.charAt(index) == "(");
            basestr = this._Bb(str.substring(previndex, index));
            newv = (((previndex == 0)) ? this._1D1(basestr, v.value) : new ExeValue(v.value, basestr));
            if (isFun) {
                newbase = newv.value;
                closeindex = str.indexOf(")", index);
                paramstr = str.substring((index + 1), closeindex);
                paramstr = this._Bb(paramstr);
                params = [];
                if (paramstr) {
                    params = this._1D1(paramstr).value;
                }
                ;
                if (!(newbase is Function)) {
                    try {
                        var nss:Array = [AS3];
                        for each(var ns:Namespace in nss) {
                            var nsv:* = v.obj.ns::[basestr];
                            if (nsv is Function) {
                                newbase = nsv;
                                break;
                            }
                        }
                    } catch (e:Error) {
                    }
                    ;
                    if (!(newbase is Function)) {
                        throw (new Error((basestr + " is not a function.")));
                    }
                    ;
                }
                ;
                v.obj = (newbase as Function).apply(v.value, params);
                v.prop = null;
                index = (closeindex + 1);
            } else {
                v = newv;
            }
            ;
            previndex = (index + 1);
            reg.lastIndex = (index + 1);
            result = reg.exec(str);
            if (result == null) {
                if ((index + 1) < str.length) {
                    reg.lastIndex = str.length;
                    result = {index: str.length};
                }
                ;
            }
            ;
        }
        ;
        return (v);
    }

    private function _1D1(_arg1:String, _arg2 = null):ExeValue {
        var v:ExeValue;
        var vv:ExeValue;
        var key:String;
        var str:String = _arg1;
        var base = _arg2;
        v = new ExeValue();
        if (str == "true") {
            v.obj = true;
        } else {
            if (str == "false") {
                v.obj = false;
            } else {
                if (str == "this") {
                    v.obj = this._1qX;
                } else {
                    if (str == "null") {
                        v.obj = null;
                    } else {
                        if (!isNaN(Number(str))) {
                            v.obj = Number(str);
                        } else {
                            if (str.indexOf(_xD) == 0) {
                                vv = this._1jK[str.substring(_xD.length)];
                                v.obj = vv.value;
                            } else {
                                if (str.charAt(0) == "$") {
                                    key = str.substring(1);
                                    if (this._0VG.indexOf(key) < 0) {
                                        v.obj = this._0N1;
                                        v.prop = key;
                                    } else {
                                        if ((this._0N1 is _1i5)) {
                                            v.obj = _1i5(this._0N1).get(key);
                                        } else {
                                            v.obj = this._0N1[key];
                                        }
                                        ;
                                    }
                                    ;
                                } else {
                                    try {
                                        v.obj = getDefinitionByName(str);
                                    } catch (e:Error) {
                                        v.obj = base;
                                        v.prop = str;
                                    }
                                    ;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        return (v);
    }

    private function _1hB(_arg1:ExeValue, _arg2:String, _arg3:ExeValue) {
        switch (_arg2) {
            case "=":
                return (_arg3.value);
            case "+":
                return ((_arg1.value + _arg3.value));
            case "-":
                return ((_arg1.value - _arg3.value));
            case "*":
                return ((_arg1.value * _arg3.value));
            case "/":
                return ((_arg1.value / _arg3.value));
            case "%":
                return ((_arg1.value % _arg3.value));
            case "^":
                return ((_arg1.value ^ _arg3.value));
            case "&":
                return ((_arg1.value & _arg3.value));
            case ">>":
                return ((_arg1.value >> _arg3.value));
            case ">>>":
                return ((_arg1.value >>> _arg3.value));
            case "<<":
                return ((_arg1.value << _arg3.value));
            case "~":
                return (~(_arg3.value));
            case "|":
                return ((_arg1.value | _arg3.value));
            case "!":
                return (!(_arg3.value));
            case ">":
                return ((_arg1.value > _arg3.value));
            case ">=":
                return ((_arg1.value >= _arg3.value));
            case "<":
                return ((_arg1.value < _arg3.value));
            case "<=":
                return ((_arg1.value <= _arg3.value));
            case "||":
                return (((_arg1.value) || (_arg3.value)));
            case "&&":
                return (((_arg1.value) && (_arg3.value)));
            case "is":
                return ((_arg1.value is _arg3.value));
            case "typeof":
                return (typeof(_arg3.value));
            case "delete":
                return (delete _arg3.obj[_arg3.prop]);
            case "==":
                return ((_arg1.value == _arg3.value));
            case "===":
                return ((_arg1.value === _arg3.value));
            case "!=":
                return (!((_arg1.value == _arg3.value)));
            case "!==":
                return (!((_arg1.value === _arg3.value)));
        }
        ;
    }

    private function _1JW(_arg1:String) {
        var _local5:int;
        var _local6:String;
        var _local7:Array;
        var _local8:int;
        var _local2:int = _arg1.indexOf("(");
        var _local3:String = (((_local2 > 0)) ? _arg1.substring(0, _local2) : _arg1);
        _local3 = this._Bb(_local3);
        var _local4:* = this._1D1(_local3).value;
        if (_local2 > 0) {
            _local5 = _arg1.indexOf(")", _local2);
            _local6 = _arg1.substring((_local2 + 1), _local5);
            _local6 = this._Bb(_local6);
            _local7 = [];
            if (_local6) {
                _local7 = this._1D1(_local6).value;
            }
            ;
            _local8 = _local7.length;
            if (_local8 == 0) {
                return (new (_local4)());
            }
            ;
            if (_local8 == 1) {
                return (new _local4(_local7[0]));
            }
            ;
            if (_local8 == 2) {
                return (new _local4(_local7[0], _local7[1]));
            }
            ;
            if (_local8 == 3) {
                return (new _local4(_local7[0], _local7[1], _local7[2]));
            }
            ;
            if (_local8 == 4) {
                return (new _local4(_local7[0], _local7[1], _local7[2], _local7[3]));
            }
            ;
            if (_local8 == 5) {
                return (new _local4(_local7[0], _local7[1], _local7[2], _local7[3], _local7[4]));
            }
            ;
            if (_local8 == 6) {
                return (new _local4(_local7[0], _local7[1], _local7[2], _local7[3], _local7[4], _local7[5]));
            }
            ;
            if (_local8 == 7) {
                return (new _local4(_local7[0], _local7[1], _local7[2], _local7[3], _local7[4], _local7[5], _local7[6]));
            }
            ;
            if (_local8 == 8) {
                return (new _local4(_local7[0], _local7[1], _local7[2], _local7[3], _local7[4], _local7[5], _local7[6], _local7[7]));
            }
            ;
            if (_local8 == 9) {
                return (new _local4(_local7[0], _local7[1], _local7[2], _local7[3], _local7[4], _local7[5], _local7[6], _local7[7], _local7[8]));
            }
            ;
            if (_local8 == 10) {
                return (new _local4(_local7[0], _local7[1], _local7[2], _local7[3], _local7[4], _local7[5], _local7[6], _local7[7], _local7[8], _local7[9]));
            }
            ;
            throw (new Error("CommandLine can't create new class instances with more than 10 arguments."));
        }
        ;
        return (null);
    }

    private function _Bb(_arg1:String):String {
        _arg1 = _arg1.replace(/\s*(.*)/, "$1");
        var _local2:int = (_arg1.length - 1);
        while (_local2 > 0) {
            if (_arg1.charAt(_local2).match(/\s/)) {
                _arg1 = _arg1.substring(0, _local2);
            } else {
                break;
            }
            ;
            _local2--;
        }
        ;
        return (_arg1);
    }


}
}//package _bb

class ExeValue {

    public var obj;
    public var prop:String;

    public function ExeValue(_arg1:Object = null, _arg2:String = null):void {
        this.obj = _arg1;
        this.prop = _arg2;
    }

    public function get value() {
        return (((this.prop) ? this.obj[this.prop] : this.obj));
    }

    public function setValue(_arg1):void {
        if (this.prop) {
            this.obj[this.prop] = _arg1;
        } else {
            this.obj = _arg1;
        }
        ;
    }


}

