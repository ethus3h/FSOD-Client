// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Nf._1zp

package __Nf {
import flash.utils.describeType;

public class _1zp {

    public function _1zp(_arg1) {
        this._Vt = this._hw(_arg1);
    }
    private var _Vt:String;

    public function getString():String {
        return (this._Vt);
    }

    private function _hw(_arg1):String {
        if ((_arg1 is String)) {
            return (this._1Vn((_arg1 as String)));
        }
        ;
        if ((_arg1 is Number)) {
            return (((isFinite((_arg1 as Number))) ? _arg1.toString() : "null"));
        }
        ;
        if ((_arg1 is Boolean)) {
            return (((_arg1) ? "true" : "false"));
        }
        ;
        if ((_arg1 is Array)) {
            return (this._1kv((_arg1 as Array)));
        }
        ;
        if ((((_arg1 is Object)) && (!((_arg1 == null))))) {
            return (this._0V(_arg1));
        }
        ;
        return ("null");
    }

    private function _1Vn(_arg1:String):String {
        var _local3:String;
        var _local6:String;
        var _local7:String;
        var _local2 = "";
        var _local4:Number = _arg1.length;
        var _local5:int;
        while (_local5 < _local4) {
            _local3 = _arg1.charAt(_local5);
            switch (_local3) {
                case '"':
                    _local2 = (_local2 + '\\"');
                    break;
                case "\\":
                    _local2 = (_local2 + "\\\\");
                    break;
                case "\b":
                    _local2 = (_local2 + "\\b");
                    break;
                case "\f":
                    _local2 = (_local2 + "\\f");
                    break;
                case "\n":
                    _local2 = (_local2 + "\\n");
                    break;
                case "\r":
                    _local2 = (_local2 + "\\r");
                    break;
                case "\t":
                    _local2 = (_local2 + "\\t");
                    break;
                    if (_local3 < " ") {
                        _local6 = _local3.charCodeAt(0).toString(16);
                        _local7 = (((_local6.length == 2)) ? "00" : "000");
                        _local2 = (_local2 + (("\\u" + _local7) + _local6));
                    } else {
                        _local2 = (_local2 + _local3);
                    }
                    ;
            }
            ;
            _local5++;
        }
        ;
        return ((('"' + _local2) + '"'));
    }

    private function _1kv(_arg1:Array):String {
        var _local2 = "";
        var _local3:int;
        while (_local3 < _arg1.length) {
            if (_local2.length > 0) {
                _local2 = (_local2 + ",");
            }
            ;
            _local2 = (_local2 + this._hw(_arg1[_local3]));
            _local3++;
        }
        ;
        return ((("[" + _local2) + "]"));
    }

    private function _0V(_arg1:Object):String {
        var value:Object;
        var key:String;
        var v:XML;
        var o:Object = _arg1;
        var s:String = "";
        var classInfo:XML = describeType(o);
        if (classInfo.@name.toString() == "Object") {
            for (key in o) {
                value = o[key];
                if ((value is Function)) {
                } else {
                    if (s.length > 0) {
                        s = (s + ",");
                    }
                    ;
                    s = (s + ((this._1Vn(key) + ":") + this._hw(value)));
                }
                ;
            }
            ;
        } else {
            for each (v in classInfo..*.(((name() == "variable")) || ((name() == "accessor")))) {
                if (s.length > 0) {
                    s = (s + ",");
                }
                ;
                s = (s + ((this._1Vn(v.@name.toString()) + ":") + this._hw(o[v.@name])));
            }
            ;
        }
        ;
        return ((("{" + s) + "}"));
    }


}
}//package _Nf

