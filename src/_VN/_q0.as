// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_VN._q0

package _VN {
import _03u._0MI;

import _0tf._0yo;

import _1PE.Account;

import _1PM._1YQ;

import _1i0._00d;

import _FT._0Rf;

import _Ny.*;

import _Vb._Hx;

import __Nj._M4;

import _nl._0Y9;

import com.company.assembleegameclient.util.offer.Offer;

import flash.utils.setTimeout;

public class _q0 extends _0MI implements _1PD {

    [Inject]
    public var account:Account;
    [Inject]
    public var steam:_0Y9;
    [Inject]
    public var offer:Offer;
    [Inject]
    public var paymentMethod:String;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _17:_00d;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var first:_0yo;
    [Inject]
    public var _048:_0yo;
    [Inject]
    public var _0sy:_0Rf;


    override protected function startTask():void {
        this._1TT.debug("SteamPurchaseGoldTask startTask");
        this.steam._1S4.addOnce(this._aG);
        this.first._1Vb(2);
        this.first.complete.addOnce(this.onComplete);
        this.first.sendRequest("/steamworks/purchaseOffer", {
            steamid: this.steam._0nH(),
            data: this.offer.data_
        });
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._do();
        } else {
            this.reportError(_arg2);
        }
        ;
    }

    private function _do():void {
        this._1TT.debug("SteamPurchaseGoldTask purchaseOffer confirmed by AppEngine");
        setTimeout(function ():void {
            _17.dispatch();
        }, 1100);
    }

    private function _aG(_arg1:uint, _arg2:String, _arg3:Boolean):void {
        if (_arg3 == false) {
            this._1TT.debug("SteamPurchaseGoldTask payment canceled by user");
            _Ug(true);
            this._048._1Vb(2);
            this._048.sendRequest("/steamworks/finalizePurchase", {
                appid: _arg1,
                orderid: _arg2,
                authorized: 0
            });
        } else {
            this._1TT.debug("SteamPurchaseGoldTask payment authorized by Steam");
            this._048._1Vb(2);
            this._048.complete.addOnce(this._168);
            this._048.sendRequest("/steamworks/finalizePurchase", {
                appid: _arg1,
                orderid: _arg2,
                authorized: ((_arg3) ? 1 : 0)
            });
        }
        ;
    }

    private function _168(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._0hD();
        } else {
            this.reportError(_arg2);
        }
        ;
    }

    private function _0hD():void {
        this._1TT.debug("SteamPurchaseGoldTask purchase finalized");
        this._0sy.dispatch();
        _Ug(true);
    }

    private function reportError(_arg1:String):void {
        var _local2:String = ("Error: " + _arg1);
        this._1TT.debug("finalize error {0}", [_local2]);
        this._nU.dispatch(new _Hx(_local2));
        _Ug(false);
    }


}
}//package _VN

