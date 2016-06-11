// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_13d._RK

package _13d {
import _03u._0MI;

import _0tf._0yo;

import _10a._FU;

import _1PE.Account;

import _20I._0Hi;
import _20I._1GP;

import _Vb.ErrorDialog;

import __Nj._M4;

public class _RK extends _0MI {

    [Inject]
    public var skin:_1GP;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var account:Account;
    [Inject]
    public var player:_FU;
    [Inject]
    public var _nU:_M4;


    override protected function startTask():void {
        this.skin.setState(_0Hi.PURCHASING);
        this.player._0xd(-(this.skin.cost));
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("account/purchaseSkin", this._0HO());
    }

    private function _0HO():Object {
        var _local1:Object = this.account._1iT();
        _local1.skinType = this.skin.id;
        return (_local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._6F();
        } else {
            this._JR(_arg2);
        }
        ;
        _Ug(_arg1, _arg2);
    }

    private function _6F():void {
        this.skin.setState(_0Hi.OWNED);
        this.skin._1dU(true);
    }

    private function _JR(_arg1:String):void {
        var _local2:ErrorDialog = new ErrorDialog(_arg1);
        this._nU.dispatch(_local2);
        this.skin.setState(_0Hi.PURCHASABLE);
        this.player._0xd(this.skin.cost);
    }


}
}//package _13d

