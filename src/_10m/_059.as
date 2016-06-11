// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_10m._059

package _10m {
import _0cA._0bz;

import _0hL._1As;

import _1Cn._1Dh;

import _1PM._1YQ;
import _1PM._Ld;

import _nj._115;

import flash.display.DisplayObjectContainer;

public class _059 {

    private const _01p:String = _1As.create(_059);

    public function _059(_arg1:_Ld, _arg2:_115) {
        this._0gD = _arg1._F4(this);
        this._6y = _arg1._sk;
        this._12 = _arg2;
        _arg1._11b._112(this.destroy);
        this.init();
    }
    private var _0gD:_1YQ;
    private var _6y:_0bz;
    private var _12:_115;
    private var _0xo:_Ld;

    public function toString():String {
        return (this._01p);
    }

    private function init():void {
        var _local1:DisplayObjectContainer;
        for each (_local1 in this._12._1u1) {
            this._0gD.debug("Adding context existence event listener to container {0}", [_local1]);
            _local1.addEventListener(ModularContextEvent._1qG, this._0m2);
        }
        ;
        this._12.addEventListener(_1Dh._1Ko, this._yB);
        this._12.addEventListener(_1Dh._yv, this._0dj);
    }

    private function destroy():void {
        var _local1:DisplayObjectContainer;
        for each (_local1 in this._12._1u1) {
            this._0gD.debug("Removing context existence event listener from container {0}", [_local1]);
            _local1.removeEventListener(ModularContextEvent._1qG, this._0m2);
        }
        ;
        this._12.removeEventListener(_1Dh._1Ko, this._yB);
        this._12.removeEventListener(_1Dh._yv, this._0dj);
        if (this._0xo) {
            this._0gD.debug("Unlinking parent injector for child context {0}", [this._0xo]);
            this._0xo._sk._ff = null;
        }
        ;
    }

    private function _yB(_arg1:_1Dh):void {
        this._0gD.debug("Adding context existence event listener to container {0}", [_arg1.container]);
        _arg1.container.addEventListener(ModularContextEvent._1qG, this._0m2);
    }

    private function _0dj(_arg1:_1Dh):void {
        this._0gD.debug("Removing context existence event listener from container {0}", [_arg1.container]);
        _arg1.container.removeEventListener(ModularContextEvent._1qG, this._0m2);
    }

    private function _0m2(_arg1:ModularContextEvent):void {
        _arg1.stopImmediatePropagation();
        this._0xo = _arg1.context;
        this._0gD.debug("Context existence event caught. Configuring child context {0}", [this._0xo]);
        this._0xo._sk._ff = this._6y;
    }


}
}//package _10m

