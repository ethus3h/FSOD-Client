// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._Xn

package _0od {
import _03u._wP;

import _0hi._0Q9;

import _1i0._1aE;

import __Nj._M4;

import _r7._17v;

public class _Xn extends _17v {

    [Inject]
    public var view:WebForgotPasswordDialog;
    [Inject]
    public var _1gm:_0Q9;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _0d5:_1aE;


    override public function initialize():void {
        this.view.submit.add(this._1qI);
        this.view.register.add(this._jy);
        this.view.cancel.add(this.onCancel);
        this._0d5.add(this._0DN);
    }

    override public function destroy():void {
        this.view.submit.remove(this._1qI);
        this.view.register.remove(this._jy);
        this.view.cancel.remove(this.onCancel);
        this._0d5.add(this._0DN);
    }

    private function _0T1():void {
        this.view._bx();
    }

    private function _0mM():void {
        this.view.parent.removeChild(this.view);
    }

    private function _1qI(_arg1:String):void {
        this._1gm.dispatch(_arg1);
    }

    private function _jy():void {
        this._nU.dispatch(new _0Wl());
    }

    private function onCancel():void {
        this._nU.dispatch(new WebLoginDialog());
    }

    private function _0DN(_arg1:_wP):void {
        this.view._08D(_arg1.error);
        this.view._bx();
    }


}
}//package _0od

