// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._1WN

package _0od {
import _085._LQ;

import _0CT._8w;

import _0hi._1yd;

import _0tf._0yo;

import _1PE.Account;

import _1i0._1aE;

import _6u._TG;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

public class _1WN extends _17v {

    [Inject]
    public var view:_187;
    [Inject]
    public var login:_1yd;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _X8:_1aE;
    [Inject]
    public var account:Account;


    override public function initialize():void {
        this.view._ck.add(this._Km);
        this.view.register.add(this._jy);
        this.view.forgot.add(this._1sl);
        this._X8.add(this._205);
    }

    override public function destroy():void {
        this.view._ck.remove(this._Km);
        this.view.register.remove(this._jy);
        this.view.forgot.remove(this._1sl);
        this._X8.remove(this._205);
    }

    private function _Km(_arg1:_LQ):void {
        var _local2:_0yo;
        this.view.email._1p9();
        this.view.disable();
        if (this.account.getUserId().toLowerCase() == _arg1.username.toLowerCase()) {
            _local2 = _8w._1Sz().getInstance(_0yo);
            _local2.sendRequest("/account/verify", {
                guid: _arg1.username,
                password: _arg1.password,
                fromResetFlow: "yes"
            });
            _local2.complete.addOnce(this.onComplete);
        } else {
            this.view.email._044(_TG._H);
            this.view._bx();
        }
        ;
    }

    private function _jy():void {
        this._nU.dispatch(new _0Wl());
    }

    private function _1sl():void {
        this._nU.dispatch(new WebForgotPasswordDialog());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (!_arg1) {
            this._205(_arg2);
        } else {
            this._nU.dispatch(new _0xZ());
        }
        ;
    }

    private function _205(_arg1:String):void {
        this.view._044(_arg1);
        this.view._bx();
    }


}
}//package _0od

