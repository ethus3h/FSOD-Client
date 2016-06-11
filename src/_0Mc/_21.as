// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._21-

package _0Mc {
import _03u._wP;

import _04g.MoneyFrame;

import _0hi._1Bh;

import _1EG.ContinueOrQuitDialog;

import _1Fr._qf;

import _1PM._1YQ;

import _1T3._1cZ;
import _1T3._hh;

import _1i0._00d;

import _1ik._f0;

import _Ny._6J;

import _Vb.ErrorDialog;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

import com.company.assembleegameclient.util.offer.Offer;

public class _21 extends _17v {

    [Inject]
    public var view:MoneyFrame;
    [Inject]
    public var model:_1cZ;
    [Inject]
    public var config:_hh;
    [Inject]
    public var _05f:_1Bh;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _17:_00d;
    [Inject]
    public var _Fz:_6J;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _0Hk:_f0;


    override public function initialize():void {
        this.view.buyNow.add(this._Nu);
        this.view.cancel.add(this.onCancel);
        this._17.addOnce(this._uj);
        this._0Ao();
    }

    override public function destroy():void {
        if (this._1b._1P.map.name_ == "Arena") {
            this._nU.dispatch(new ContinueOrQuitDialog(this._0Hk._sx, true));
        }
        ;
        this.view.buyNow.add(this._Nu);
        this.view.cancel.add(this.onCancel);
    }

    protected function _Nu(_arg1:Offer, _arg2:String):void {
        this._1TT.info("offer {0}, paymentMethod {1}", [_arg1, _arg2]);
        this._05f.dispatch(_arg1, _arg2);
    }

    protected function _uj():void {
        this.view._9G();
    }

    protected function onCancel():void {
        this.closeDialogs.dispatch();
    }

    private function _0Ao():void {
        if (this.model._0eR) {
            this.view.initialize(this.model._0eR, this.config);
        } else {
            this._gX();
        }
        ;
    }

    private function _gX():void {
        this._Fz._i4.addOnce(this._1MQ);
        this._Fz.start();
    }

    private function _1MQ(_arg1:_wP, _arg2:Boolean, _arg3:String = ""):void {
        if (_arg2) {
            this.view.initialize(this.model._0eR, this.config);
        } else {
            this._nU.dispatch(new ErrorDialog("Unable to get gold offer information"));
        }
        ;
    }


}
}//package _0Mc

