// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//in ._16c

package _in {

import _0cA._0bz;

import __00U.*;

import _u5._1kJ;
import _u5._default;

import flash.utils.Dictionary;

public class _16c implements _06U {

    private static const _1Y8:int = 6;

    public function _16c(_arg1:_1kJ):void {
        var _local2:Vector.<uint> = Vector.<uint>([0, 1, 2, 2, 1, 3]);
        if (_arg1 != null) {
            this._1jc = _arg1.createIndexBuffer(_1Y8);
            this._1jc.uploadFromVector(_local2, 0, _1Y8);
        }
        ;
    }
    private var _1jc:_default;

    public function apply(_arg1:Class, _arg2:_0bz, _arg3:Dictionary):Object {
        return (this._1jc);
    }

    public function destroy():void {
    }


}
}//package in 

