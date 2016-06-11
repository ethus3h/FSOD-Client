// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_rB.BuyPackageTask

package _rB {
import _03u._0MI;

import _0Rk._0Vz;

import _0jj._bn;

import _0tf._0yo;

import _10a._FU;

import _1PE.Account;

import _6u._TG;

import com.company.assembleegameclient.map._0H0;

public class BuyPackageTask extends _0MI {

    private static const _tv:Array = ["Package is not Available", "Package is not Available Right Now", "Invalid PackageId"];

    [Inject]
    public var client:_0yo;
    [Inject]
    public var account:Account;
    [Inject]
    public var _1pv:_0en;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _p5:_0H0;
    [Inject]
    public var _4k:_0Vz;
    [Inject]
    public var _tw:_bn;


    override protected function startTask():void {
        var _local1:Object = this.account._1iT();
        _local1.packageId = this._4k.packageID;
        this._qP._0xd(-(this._4k.price));
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/purchasePackage", _local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        var _local3:XML = new XML(_arg2);
        if (_arg1) {
            this._6F(_local3);
        } else {
            this._JR(_local3);
        }
        ;
        _Ug(true, _arg2);
    }

    private function _6F(_arg1:XML):void {
        if (this._4k.quantity != _0Vz._1lb) {
            this._4k.quantity--;
        }
        ;
        this._4k.numPurchased++;
        this._p5.dispatch(_TG._1YR, 11495650);
        this._tw.dispatch();
        if (this._4k.quantity <= 0) {
            this._1pv.start();
        }
        ;
    }

    private function _JR(_arg1:XML):void {
        this._qP._0xd(this._4k.price);
        this._1xa(_arg1[0]);
    }

    private function _1xa(_arg1:String):void {
        this._p5.dispatch(_arg1, 16744576);
        if (_tv.indexOf(_arg1) != -1) {
            this._1pv.start();
        }
        ;
    }


}
}//package _rB

