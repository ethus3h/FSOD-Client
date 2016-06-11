// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//in ._44

package _in {
import _0cA._0bz;

import __00U._06U;

import _u5._1a5;
import _u5._1kJ;

import flash.utils.Dictionary;

public class _44 implements _06U {

    public function _44(_arg1:_1kJ) {
        var _local2:Vector.<Number> = Vector.<Number>([-0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 1, 0, -0.5, -0.5, 0, 0, 1, 0.5, -0.5, 0, 1, 1]);
        this._Zr = _arg1.createVertexBuffer(4, 5);
        this._Zr.uploadFromVector(_local2, 0, 4);
    }
    private var _Zr:_1a5;

    public function apply(_arg1:Class, _arg2:_0bz, _arg3:Dictionary):Object {
        return (this._Zr);
    }

    public function destroy():void {
    }


}
}//package in 

