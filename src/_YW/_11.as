// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_YW._1-1

package _YW {
import _03u._0MI;

import _0Vn._0Nd;

import _0tf._0yo;

import _1PE.Account;

import _Ny.*;

import __Nj._M4;

import _db._10I;

import _yh._10;

public class _11 extends _0MI implements _1nF {

    [Inject]
    public var account:Account;
    [Inject]
    public var parameters:_10I;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var client:_0yo;
    private var kabam:_10;


    override protected function startTask():void {
        this.kabam = (this.account as _10);
        this.kabam.signedRequest = this.parameters._0wA();
        this.kabam.userSession = this.parameters._17A();
        if (this.kabam.userSession == null) {
            this._nU.dispatch(new _0Nd());
            _Ug(false);
        } else {
            this.sendRequest();
        }
        ;
    }

    private function sendRequest():void {
        var _local1:Object = {
            signedRequest: this.kabam.signedRequest,
            entrytag: this.account._UV()
        };
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/kabam/getcredentials", _local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._0tl(_arg2)));
        _Ug(_arg1, _arg2);
    }

    private function _0tl(_arg1:String):void {
        var _local2:XML = new XML(_arg1);
        this.account._05b(_local2.GUID, _local2.Secret);
        this.account._1EI(_local2.PlatformToken);
    }


}
}//package _YW

