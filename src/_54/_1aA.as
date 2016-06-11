// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_54._1aA

package _54 {
import _03u._0MI;

import _0tf._0yo;

import _1PE.Account;

import _1i0._18D;

import _Ny.*;

import __1Ye._0nK;

public class _1aA extends _0MI implements _1Rf {

    [Inject]
    public var account:Account;
    [Inject]
    public var _16k:_18D;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/sendVerifyEmail", this.account._1iT());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._1RL();
        } else {
            this._31(_arg2);
        }
        ;
    }

    private function _1RL():void {
        this._z1();
        _Ug(true);
    }

    private function _z1():void {
        var _local1:_0nK = new _0nK();
        _local1.category = "account";
        _local1._0HR = "verifyEmailSent";
        this._16k.dispatch(_local1);
    }

    private function _31(_arg1:String):void {
        this.account.clear();
        _Ug(false);
    }


}
}//package _54

