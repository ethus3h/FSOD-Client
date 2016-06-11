// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._1kb

package _1Cn {
import _nj.*;

import flash.display.DisplayObjectContainer;
import flash.events.EventDispatcher;

public class _1kb extends EventDispatcher implements _115 {

    private const _1Gl:Vector.<DisplayObjectContainer> = new Vector.<DisplayObjectContainer>();
    private const _handlers:Vector.<_0XC> = new Vector.<_0XC>();

    public function _1kb(_arg1:_LO) {
        this._1fg = _arg1;
    }
    private var _1fg:_LO;

    public function get _1u1():Vector.<DisplayObjectContainer> {
        return (this._1Gl);
    }

    public function _0i5(_arg1:DisplayObjectContainer):void {
        var _local2:_0XC;
        if (!this._04Z(_arg1)) {
            return;
        }
        ;
        this._1Gl.push(_arg1);
        for each (_local2 in this._handlers) {
            this._1fg._0i5(_arg1)._100(_local2);
        }
        ;
        dispatchEvent(new _1Dh(_1Dh._1Ko, _arg1));
    }

    public function _1ze(_arg1:DisplayObjectContainer):void {
        var _local4:_0XC;
        var _local2:int = this._1Gl.indexOf(_arg1);
        if (_local2 == -1) {
            return;
        }
        ;
        this._1Gl.splice(_local2, 1);
        var _local3:_5M = this._1fg._0F9(_arg1);
        for each (_local4 in this._handlers) {
            _local3._g5(_local4);
        }
        ;
        dispatchEvent(new _1Dh(_1Dh._yv, _arg1));
    }

    public function _4U(_arg1:_0XC):void {
        var _local2:DisplayObjectContainer;
        if (this._handlers.indexOf(_arg1) != -1) {
            return;
        }
        ;
        this._handlers.push(_arg1);
        for each (_local2 in this._1Gl) {
            this._1fg._0i5(_local2)._100(_arg1);
        }
        ;
        dispatchEvent(new _1Dh(_1Dh._0XU, null, _arg1));
    }

    public function _p(_arg1:_0XC):void {
        var _local3:DisplayObjectContainer;
        var _local2:int = this._handlers.indexOf(_arg1);
        if (_local2 == -1) {
            return;
        }
        ;
        this._handlers.splice(_local2, 1);
        for each (_local3 in this._1Gl) {
            this._1fg._0F9(_local3)._g5(_arg1);
        }
        ;
        dispatchEvent(new _1Dh(_1Dh._1pk, null, _arg1));
    }

    public function _iO():void {
        var _local1:DisplayObjectContainer;
        var _local2:_5M;
        var _local3:_0XC;
        for each (_local1 in this._1Gl) {
            _local2 = this._1fg._0F9(_local1);
            for each (_local3 in this._handlers) {
                _local2._g5(_local3);
            }
            ;
        }
        ;
    }

    private function _04Z(_arg1:DisplayObjectContainer):Boolean {
        var _local2:DisplayObjectContainer;
        for each (_local2 in this._1Gl) {
            if (_arg1 == _local2) {
                return (false);
            }
            ;
            if (((_local2.contains(_arg1)) || (_arg1.contains(_local2)))) {
                throw (new Error("Containers can not be nested"));
            }
            ;
        }
        ;
        return (true);
    }


}
}//package _1Cn

