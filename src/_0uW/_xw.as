// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0uW._xw

package _0uW {
import _0cA._0bz;

import _0vT.SsInternal;

import _4N._0MX;

import __00U._06U;

import flash.utils.Dictionary;
import flash.utils.getQualifiedClassName;

public class _xw extends _kL {

    public function _xw(_arg1:String, _arg2:String, _arg3:Boolean, _arg4:Dictionary) {
        this._03 = _arg2;
        this._0dO = _arg1;
        this._0pD = _arg3;
        this.injectParameters = _arg4;
    }
    private var _03:String;
    private var _0dO:String;
    private var _0pD:Boolean;

    override public function applyInjection(_arg1:Object, _arg2:Class, _arg3:_0bz):void {
        var _local4:_06U = _arg3.SsInternal::_1BQ(this._0dO);
        if (!_local4) {
            if (this._0pD) {
                return;
            }
            ;
            throw (new _0MX((((((((('Injector is missing a mapping to handle injection into property "' + this._03) + '" of object "') + _arg1) + '" with type "') + getQualifiedClassName(_arg2)) + '". Target dependency: "') + this._0dO) + '"')));
        }
        ;
        _arg1[this._03] = _local4.apply(_arg2, _arg3, injectParameters);
    }


}
}//package _0uW

