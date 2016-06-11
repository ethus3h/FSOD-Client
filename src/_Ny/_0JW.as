// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Ny._0JW

package _Ny {
import _03u._0MI;

import _0tf._0yo;

import _10a._FU;

import _1PE.Account;

import __Nj._M4;

public class _0JW extends _0MI {

    [Inject]
    public var account:Account;
    [Inject]
    public var price:int;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var model:_FU;


    override protected function startTask():void {
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/purchaseCharSlot", this.account._1iT());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._1YO()));
        _Ug(_arg1, _arg2);
    }

    private function _1YO():void {
        this.model._1d2((this.model._06Y() + 1));
        this.model._0xd(-(this.price));
    }


}
}//package _Ny

