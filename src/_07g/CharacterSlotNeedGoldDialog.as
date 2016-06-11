// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g.CharacterSlotNeedGoldDialog

package _07g {
import _1Sm._sy;

import _6u._TG;

import _Vb.Dialog;

import flash.display.Sprite;
import flash.events.Event;

public class CharacterSlotNeedGoldDialog extends Sprite {

    private static const _1n8:String = "/charSlotNeedGold";

    public const _7u:_sy = new _sy();
    public const cancel:_sy = new _sy();

    private var _16Y:Dialog;
    private var price:int;


    public function setPrice(_arg1:int):void {
        this.price = _arg1;
        ((((this._16Y) && (contains(this._16Y)))) && (removeChild(this._16Y)));
        this._1l1();
        this._16Y.addEventListener(Dialog.LEFT_BUTTON, this.onCancel);
        this._16Y.addEventListener(Dialog.RIGHT_BUTTON, this._1L);
    }

    private function _1l1():void {
        this._16Y = new Dialog(_TG._1IO, "", _TG._Vy, _TG._07N, _1n8);
        this._16Y._Mu(_TG._0I, {price: this.price});
        addChild(this._16Y);
    }

    public function onCancel(_arg1:Event):void {
        this.cancel.dispatch();
    }

    public function _1L(_arg1:Event):void {
        this._7u.dispatch();
    }


}
}//package _07g

