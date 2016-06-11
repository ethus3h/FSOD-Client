// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cy._7x

package _0cy {
import _10a._1bT;

import _1i0._1Uh;
import _1i0._Q;

import _r7._17v;

import flash.display.Sprite;

public class _7x extends _17v {

    [Inject]
    public var view:_1XE;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var model:_1bT;
    [Inject]
    public var _SH:_1Uh;


    override public function initialize():void {
        this._p2.add(this._1VC);
        this._SH.add(this._1k7);
    }

    override public function destroy():void {
        this._p2.remove(this._1VC);
        this._SH.add(this._1k7);
    }

    private function _1VC(_arg1:Sprite):void {
        this.model._1Ez((Object(_arg1).constructor as Class));
        this.view._p2(_arg1);
    }

    private function _1k7():void {
        this.view._p2(this.view._0TG());
    }


}
}//package _0cy

