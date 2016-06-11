// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_VN._077

package _VN {
import _03u._0MI;

import _0tf._0yo;

import _1PE._0Q8;

import _1PM._1YQ;

import _Ny.*;

import _Vb._Hx;

import __Nj._M4;

import _nl._0Y9;

import com.company.assembleegameclient.util.offer.Offer;

public class _077 extends _0MI implements _0Vt {

    [Inject]
    public var steam:_0Y9;
    [Inject]
    public var payment:_0Q8;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var _048:_0yo;
    private var offer:Offer;


    override protected function startTask():void {
        this._1TT.debug("start task");
        this.offer = this.payment.offer;
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/steamworks/purchaseOffer", {
            steamid: this.steam._0nH(),
            data: this.offer.data_
        });
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._do();
        } else {
            this._zt(_arg2);
        }
        ;
    }

    private function _do():void {
        this._1TT.debug("purchaseOffer complete");
        this.steam._1S4.addOnce(this._aG);
    }

    private function _aG(_arg1:uint, _arg2:String, _arg3:Boolean):void {
        this._1TT.debug("payment authorized {0},{1},{2}", [_arg1, _arg2, _arg3]);
        this._048._1Vb(2);
        this.client.complete.addOnce(this._168);
        this._048.sendRequest("/steamworks/finalizePurchase", {
            appid: _arg1,
            orderid: _arg2,
            authorized: ((_arg3) ? 1 : 0)
        });
    }

    private function _168(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._0hD();
        } else {
            this._1KN(_arg2);
        }
        ;
    }

    private function _0hD():void {
        this._1TT.debug("purchaseFinalized complete");
        _Ug(true);
    }

    private function _1KN(_arg1:String):void {
        this._1TT.debug("purchaseFinalized error {0}", [_arg1]);
        this._nU.dispatch(new _Hx(("Error: " + _arg1)));
        _Ug(false);
    }

    private function _zt(_arg1:String):void {
        this._1TT.debug("purchaseOffer request error {0}", [_arg1]);
        this._nU.dispatch(new _Hx(("Error: " + _arg1)));
        _Ug(false);
    }


}
}//package _VN

