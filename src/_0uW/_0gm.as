// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0uW._0gm

package _0uW {
import _0cA._0cp;

import flash.utils.Dictionary;
import flash.utils.getQualifiedClassName;

public class _0gm {

    public function _0gm(_arg1:Boolean = true) {
        if (_arg1) {
            this.ctor = new _0kt();
        }
        ;
    }
    public var ctor:_13U;
    public var injectionPoints:_kL;
    public var _0Y5:_04V;
    private var _1mA:Boolean;

    public function _1GT(_arg1:Array, _arg2:Array = null, _arg3:uint = 2147483647, _arg4:Dictionary = null):_0gm {
        this.ctor = new _13U(this._0TW(_arg1, ((_arg2) || ([]))), _arg3, _arg4);
        return (this);
    }

    public function _0ai(_arg1:String, _arg2:Class, _arg3:String = "", _arg4:Boolean = false, _arg5:Dictionary = null):_0gm {
        if (this._1mA) {
            throw (new _0cp("Can't add injection point after post construct method"));
        }
        ;
        this._0yf(new _xw(((getQualifiedClassName(_arg2) + "|") + _arg3), _arg1, _arg4, _arg5));
        return (this);
    }

    public function _0yI(_arg1:String, _arg2:Array, _arg3:Array = null, _arg4:uint = 2147483647, _arg5:Boolean = false, _arg6:Dictionary = null):_0gm {
        if (this._1mA) {
            throw (new _0cp("Can't add injection point after post construct method"));
        }
        ;
        this._0yf(new _0hu(_arg1, this._0TW(_arg2, ((_arg3) || ([]))), Math.min(_arg4, _arg2.length), _arg5, _arg6));
        return (this);
    }

    public function _2j(_arg1:String, _arg2:Array, _arg3:Array = null, _arg4:uint = 2147483647):_0gm {
        this._1mA = true;
        this._0yf(new _1oY(_arg1, this._0TW(_arg2, ((_arg3) || ([]))), Math.min(_arg4, _arg2.length), 0));
        return (this);
    }

    public function _1sB(_arg1:String, _arg2:Array, _arg3:Array = null, _arg4:uint = 2147483647):_0gm {
        var _local5:_04V = new _04V(_arg1, this._0TW(_arg2, ((_arg3) || ([]))), Math.min(_arg4, _arg2.length), 0);
        if (this._0Y5) {
            this._0Y5.last.next = _local5;
            this._0Y5.last = _local5;
        } else {
            this._0Y5 = _local5;
            this._0Y5.last = _local5;
        }
        ;
        return (this);
    }

    public function _0yf(_arg1:_kL):void {
        if (this.injectionPoints) {
            this.injectionPoints.last.next = _arg1;
            this.injectionPoints.last = _arg1;
        } else {
            this.injectionPoints = _arg1;
            this.injectionPoints.last = _arg1;
        }
        ;
    }

    private function _0TW(_arg1:Array, _arg2:Array):Array {
        var _local3:Array = new Array(_arg1.length);
        var _local4:int = _local3.length;
        while (_local4--) {
            _local3[_local4] = ((getQualifiedClassName(_arg1[_local4]) + "|") + ((_arg2[_local4]) || ("")));
        }
        ;
        return (_local3);
    }


}
}//package _0uW

