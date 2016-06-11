// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0uW._0hu

package _0uW {
import _0cA._0bz;

import _0vT.SsInternal;

import _4N._0MX;

import __00U._06U;

import avmplus.getQualifiedClassName;

import flash.utils.Dictionary;

public class _0hu extends _kL {

    private static const _0jX:Array = [];

    public function _0hu(_arg1:String, _arg2:Array, _arg3:uint, _arg4:Boolean, _arg5:Dictionary) {
        this.get = _arg1;
        this._1IK = _arg2;
        this._0Zg = _arg3;
        this._1MN = _arg4;
        this.injectParameters = _arg5;
    }
    protected var _1IK:Array;
    protected var _0Zg:int;
    private var _1MN:Boolean;
    private var get:String;

    override public function applyInjection(_arg1:Object, _arg2:Class, _arg3:_0bz):void {
        var _local4:Array = this._0m0(_arg1, _arg2, _arg3);
        if (_local4.length >= this._0Zg) {
            (_arg1[this.get] as Function).apply(_arg1, _local4);
        }
        ;
        _local4.length = 0;
    }

    protected function _0m0(_arg1:Object, _arg2:Class, _arg3:_0bz):Array {
        var _local7:String;
        var _local8:_06U;
        var _local4:int = this._1IK.length;
        var _local5:Array = _0jX;
        _local5.length = _local4;
        var _local6:int;
        while (_local6 < _local4) {
            _local7 = this._1IK[_local6];
            _local8 = _arg3.SsInternal::_1BQ(_local7);
            if (!_local8) {
                if ((((_local6 >= this._0Zg)) || (this._1MN))) {
                    break;
                }
                ;
                throw (new _0MX(((((((((('Injector is missing a mapping to handle injection into target "' + _arg1) + '" of type "') + getQualifiedClassName(_arg2)) + '". \t\t\t\t\t\tTarget dependency: ') + _local7) + ", method: ") + this.get ) + ", parameter: ") + (_local6 + 1))));
            }
            ;
            _local5[_local6] = _local8.apply(_arg2, _arg3, injectParameters);
            _local6++;
        }
        ;
        return (_local5);
    }


}
}//package _0uW

