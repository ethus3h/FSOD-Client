// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._yS

package _0od {
import _0CT._8w;

import _0hi._1G5;
import _0hi._1IP;

import _0tf._0yo;

import _1PE.Account;

import _1i0._18D;

import __1Ye._0nK;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

public class _yS extends _17v {

    [Inject]
    public var view:WebAccountDetailDialog;
    [Inject]
    public var account:Account;
    [Inject]
    public var _16k:_18D;
    [Inject]
    public var verify:_1G5;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _1zC:_1IP;


    override public function initialize():void {
        this.view._0GB(this.account._02H(), this.account._ZL());
        this.view.change.add(this._1PA);
        this.view.logout.add(this._Xz);
        this.view.cancel.add(this._1qs);
        this.view.verify.add(this._mO);
    }

    override public function destroy():void {
        this.view.change.remove(this._1PA);
        this.view.logout.remove(this._Xz);
        this.view.cancel.remove(this._1qs);
        this.view.verify.remove(this._mO);
    }

    private function _1PA():void {
        this._nU.dispatch(new WebChangePasswordDialog());
    }

    private function _Xz():void {
        this._1fx();
        this.account.clear();
        this._1zC.dispatch();
        this._nU.dispatch(new WebLoginDialog());
    }

    private function _1fx():void {
        var _local1:_0nK = new _0nK();
        _local1.category = "account";
        _local1._0HR = "loggedOut";
        this._16k.dispatch(_local1);
    }

    private function _1qs():void {
        this._00G.dispatch();
    }

    private function _mO():void {
        var _local1:_0yo = _8w._1Sz().getInstance(_0yo);
        _local1.complete.addOnce(this.onComplete);
        _local1.sendRequest("/account/sendVerifyEmail", this.account._1iT());
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
    }

    private function _z1():void {
        var _local1:_0nK = new _0nK();
        _local1.category = "account";
        _local1._0HR = "verifyEmailSent";
        this._16k.dispatch(_local1);
    }

    private function _31(_arg1:String):void {
        this.account.clear();
    }


}
}//package _0od

