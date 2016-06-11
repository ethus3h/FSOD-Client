// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_10m._1hV

package _10m {
import _0cA._0bz;

import _0hL._1As;

import _1PM._1YQ;
import _1PM._Ld;

import flash.display.DisplayObjectContainer;

public class _1hV {

    private const _01p:String = _1As.create(_1hV);

    public function _1hV(_arg1:_Ld, _arg2:DisplayObjectContainer) {
        this._0gD = _arg1._F4(this);
        this._6y = _arg1._sk;
        this._1RR = _arg2;
        _arg1._11b._112(this.destroy);
        this.init();
    }
    private var _0gD:_1YQ;
    private var _6y:_0bz;
    private var _1RR:DisplayObjectContainer;
    private var _0xo:_Ld;

    public function toString():String {
        return (this._01p);
    }

    private function init():void {
        this._0gD.debug("Listening for context existence events on contextView {0}", [this._1RR]);
        this._1RR.addEventListener(ModularContextEvent._1qG, this._0m2);
    }

    private function destroy():void {
        this._0gD.debug("Removing modular context existence event listener from contextView {0}", [this._1RR]);
        this._1RR.removeEventListener(ModularContextEvent._1qG, this._0m2);
        if (this._0xo) {
            this._0gD.debug("Unlinking parent injector for child context {0}", [this._0xo]);
            this._0xo._sk._ff = null;
        }
        ;
    }

    private function _0m2(_arg1:ModularContextEvent):void {
        _arg1.stopImmediatePropagation();
        this._0xo = _arg1.context;
        this._0gD.debug("Context existence event caught. Configuring child context {0}", [this._0xo]);
        this._0xo._sk._ff = this._6y;
    }


}
}//package _10m

