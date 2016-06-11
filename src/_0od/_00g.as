// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._00g

package _0od {
import _03u._wP;

import _085._LQ;

import _0hi._1JC;

import _1d9._1gY;

import _1i0._1aE;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

public class _00g extends _17v {

    [Inject]
    public var view:_0Wl;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var register:_1JC;
    [Inject]
    public var _IR:_1aE;
    [Inject]
    public var _P7:_1gY;


    override public function initialize():void {
        this.view.register.add(this._jy);
        this.view.signIn.add(this._Km);
        this.view.cancel.add(this.onCancel);
        this._IR.add(this._1z);
        this._P7.dispatch(false);
    }

    override public function destroy():void {
        this.view.register.remove(this._jy);
        this.view.signIn.remove(this._Km);
        this.view.cancel.remove(this.onCancel);
        this._IR.remove(this._1z);
        this._P7.dispatch(true);
    }

    private function _jy(_arg1:_LQ):void {
        this.view.disable();
        this.register.dispatch(_arg1);
    }

    private function onCancel():void {
        this._00G.dispatch();
    }

    private function _Km():void {
        this._nU.dispatch(new WebLoginDialog());
    }

    private function _1z(_arg1:_wP):void {
        this.view._2J(_arg1.error);
        this.view._bx();
    }


}
}//package _0od

