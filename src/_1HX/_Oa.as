// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1HX._Oa

package _1HX {
import _0cA._0cp;

import _0uW._04V;
import _0uW._0gm;
import _0uW._0hu;
import _0uW._0kt;
import _0uW._13U;
import _0uW._1oY;
import _0uW._xw;

import avmplus.DescribeTypeJSON;

import flash.utils.Dictionary;
import flash.utils.getQualifiedClassName;

public class _Oa extends _0Pa implements _0o6 {

    private const _I2:DescribeTypeJSON = new DescribeTypeJSON();


    public function _1yO(_arg1:Class, _arg2:Class):Boolean {
        if (_arg1 == _arg2) {
            return (true);
        }
        ;
        var _local3:String = getQualifiedClassName(_arg2);
        var _local4:Object = this._I2.getInstanceDescription(_arg1).traits;
        return (((((_local4.bases as Array).indexOf(_local3) > -1)) || (((_local4.interfaces as Array).indexOf(_local3) > -1))));
    }

    public function _0Kg(_arg1:Class):_0gm {
        var _local2:Object;
        _local2 = this._I2.getInstanceDescription(_arg1);
        var _local3:Object = _local2.traits;
        var _local4:String = _local2.name;
        var _local5:_0gm = new _0gm(false);
        this._0mf(_local5, _local3, _local4);
        this._wK(_local5, _local3.variables);
        this._wK(_local5, _local3.accessors);
        this._lX(_local5, _local3.methods, _local4);
        this._RG(_local5, _local3.variables, _local4);
        this._RG(_local5, _local3.accessors, _local4);
        this._RG(_local5, _local3.methods, _local4);
        this._1z0(_local5, _local3.methods, _local4);
        return (_local5);
    }

    private function _0mf(_arg1:_0gm, _arg2:Object, _arg3:String):void {
        var _local5:Dictionary;
        var _local6:Array;
        var _local4:Array = _arg2.constructor;
        if (!_local4) {
            _arg1.ctor = (((_arg2.bases.length > 0)) ? new _0kt() : null);
            return;
        }
        ;
        _local5 = this._1pW("Inject", _arg2.metadata);
        _local6 = ((((_local5) && (_local5.name))) || ("")).split(",");
        var _local7:int = this._7p(_local4, _local6, _arg3);
        _arg1.ctor = new _13U(_local4, _local7, _local5);
    }

    private function _lX(_arg1:_0gm, _arg2:Array, _arg3:String):void {
        var _local6:Object;
        var _local7:Dictionary;
        var _local8:Boolean;
        var _local9:Array;
        var _local10:Array;
        var _local11:uint;
        var _local12:_0hu;
        if (!_arg2) {
            return;
        }
        ;
        var _local4:uint = _arg2.length;
        var _local5:int;
        while (_local5 < _local4) {
            _local6 = _arg2[_local5];
            _local7 = this._1pW("Inject", _local6.metadata);
            if (!_local7) {
            } else {
                _local8 = (_local7.optional == "true");
                _local9 = ((_local7.name) || ("")).split(",");
                _local10 = _local6.parameters;
                _local11 = this._7p(_local10, _local9, _arg3);
                _local12 = new _0hu(_local6.name, _local10, _local11, _local8, _local7);
                _arg1._0yf(_local12);
            }
            ;
            _local5++;
        }
        ;
    }

    private function _RG(_arg1:_0gm, _arg2:Array, _arg3:String):void {
        var _local4:Array = this._0hw(_1oY, "PostConstruct", _arg2, _arg3);
        var _local5:int;
        var _local6:int = _local4.length;
        while (_local5 < _local6) {
            _arg1._0yf(_local4[_local5]);
            _local5++;
        }
        ;
    }

    private function _1z0(_arg1:_0gm, _arg2:Array, _arg3:String):void {
        var _local4:Array = this._0hw(_04V, "PreDestroy", _arg2, _arg3);
        if (!_local4.length) {
            return;
        }
        ;
        _arg1._0Y5 = _local4[0];
        _arg1._0Y5.last = _local4[0];
        var _local5:int = 1;
        var _local6:int = _local4.length;
        while (_local5 < _local6) {
            _arg1._0Y5.last.next = _local4[_local5];
            _arg1._0Y5.last = _local4[_local5];
            _local5++;
        }
        ;
    }

    private function _wK(_arg1:_0gm, _arg2:Array):void {
        var _local5:Object;
        var _local6:Dictionary;
        var _local7:String;
        var _local8:Boolean;
        var _local9:_xw;
        if (!_arg2) {
            return;
        }
        ;
        var _local3:uint = _arg2.length;
        var _local4:int;
        while (_local4 < _local3) {
            _local5 = _arg2[_local4];
            _local6 = this._1pW("Inject", _local5.metadata);
            if (!_local6) {
            } else {
                _local7 = ((_local6.name) || (""));
                _local8 = (_local6.optional == "true");
                _local9 = new _xw(((_local5.type + "|") + _local7), _local5.name, _local8, _local6);
                _arg1._0yf(_local9);
            }
            ;
            _local4++;
        }
        ;
    }

    private function _7p(_arg1:Array, _arg2:Array, _arg3:String):uint {
        var _local7:Object;
        var _local8:String;
        var _local9:String;
        var _local4:uint;
        var _local5:uint = _arg1.length;
        var _local6:int;
        while (_local6 < _local5) {
            _local7 = _arg1[_local6];
            _local8 = ((_arg2[_local6]) || (""));
            _local9 = _local7.type;
            if (_local9 == "*") {
                if (!_local7.optional) {
                    throw (new _0cp((('Error in method definition of injectee "' + _arg3) + ". Required parameters can't have type \"*\".")));
                }
                ;
                _local9 = null;
            }
            ;
            if (!_local7.optional) {
                _local4++;
            }
            ;
            _arg1[_local6] = ((_local9 + "|") + _local8);
            _local6++;
        }
        ;
        return (_local4);
    }

    private function _0hw(_arg1:Class, _arg2:String, _arg3:Array, _arg4:String):Array {
        var _local8:Object;
        var _local9:Object;
        var _local10:Array;
        var _local11:Array;
        var _local12:uint;
        var _local13:int;
        var _local5:Array = [];
        if (!_arg3) {
            return (_local5);
        }
        ;
        var _local6:uint = _arg3.length;
        var _local7:int;
        while (_local7 < _local6) {
            _local8 = _arg3[_local7];
            _local9 = this._1pW(_arg2, _local8.metadata);
            if (!_local9) {
            } else {
                _local10 = ((_local9.name) || ("")).split(",");
                _local11 = _local8.parameters;
                if (_local11) {
                    _local12 = this._7p(_local11, _local10, _arg4);
                } else {
                    _local11 = [];
                    _local12 = 0;
                }
                ;
                _local13 = parseInt(_local9.order, 10);
                if (_local13.toString(10) != _local9.order) {
                    _local13 = int.MAX_VALUE;
                }
                ;
                _local5.push(new _arg1(_local8.name, _local11, _local12, _local13));
            }
            ;
            _local7++;
        }
        ;
        if (_local5.length > 0) {
            _local5.sortOn("order", Array.NUMERIC);
        }
        ;
        return (_local5);
    }

    private function _1pW(_arg1:String, _arg2:Array):Dictionary {
        var _local5:Object;
        var _local6:Array;
        var _local7:Dictionary;
        var _local8:int;
        var _local9:int;
        var _local10:Object;
        var _local3:uint = ((_arg2) ? _arg2.length : 0);
        var _local4:int;
        while (_local4 < _local3) {
            _local5 = _arg2[_local4];
            if (_local5.name == _arg1) {
                _local6 = _local5.value;
                _local7 = new Dictionary();
                _local8 = _local6.length;
                _local9 = 0;
                while (_local9 < _local8) {
                    _local10 = _local6[_local9];
                    _local7[_local10.key] = ((_local7[_local10.key]) ? ((_local7[_local10.key] + ",") + _local10.value) : _local10.value);
                    _local9++;
                }
                ;
                return (_local7);
            }
            ;
            _local4++;
        }
        ;
        return (null);
    }


}
}//package _1HX

