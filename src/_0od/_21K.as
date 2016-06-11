// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._21K

package _0od {
import _03u._wP;

import _085._LQ;

import _0hi._1yd;

import _1i0._1aE;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

public class _21K extends _17v {

    [Inject]
    public var view:WebLoginDialog;
    [Inject]
    public var login:_1yd;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _X8:_1aE;


    override public function initialize():void {
        this.view.signIn.add(this._Km);
        this.view.register.add(this._jy);
        this.view.cancel.add(this.onCancel);
        this.view.forgot.add(this._1sl);
        this._X8.add(this._205);
    }

    override public function destroy():void {
        this.view.signIn.remove(this._Km);
        this.view.register.remove(this._jy);
        this.view.cancel.remove(this.onCancel);
        this.view.forgot.remove(this._1sl);
        this._X8.remove(this._205);
    }

    private function _Km(_arg1:_LQ):void {
        this.view.disable();
        this.login.dispatch(_arg1);
    }

    private function _jy():void {
        this._nU.dispatch(new _0Wl());
    }

    private function onCancel():void {
        this._00G.dispatch();
    }

    private function _1sl():void {
        this._nU.dispatch(new WebForgotPasswordDialog());
    }

    private function _205(_arg1:_wP):void {
        this.view._044(_arg1.error);
        this.view._bx();
    }


}
}//package _0od

