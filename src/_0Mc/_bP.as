// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._bP

package _0Mc {
import _0MO._0WQ;

import _0tf._0yo;

import _10a._FU;

import _1PE.Account;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

import com.company.util._0CM;

public class _bP extends _17v {

    [Inject]
    public var view:NewChooseNameFrame;
    [Inject]
    public var account:Account;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _LY:_0WQ;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var _qP:_FU;
    private var name:String;


    override public function initialize():void {
        this.view.choose.add(this._19A);
        this.view.cancel.add(this.onCancel);
    }

    override public function destroy():void {
        this.view.choose.remove(this._19A);
        this.view.cancel.remove(this.onCancel);
    }

    private function _19A(_arg1:String):void {
        this.name = _arg1;
        if (_arg1.length < 1) {
            this.view._044("Name too short");
        } else {
            this._Iw();
        }
        ;
    }

    private function _Iw():void {
        var _local1:Object = {name: this.name};
        _0CM._0lh(_local1, this.account._1iT());
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/setName", _local1);
        this.view.disable();
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._02K();
        } else {
            this._02X(_arg2);
        }
        ;
    }

    private function _02K():void {
        if (this._qP != null) {
            this._qP.setName(this.name);
        }
        ;
        this._LY.dispatch(this.name);
        this.closeDialogs.dispatch();
    }

    private function _02X(_arg1:String):void {
        this.view._044(_arg1);
        this.view._bx();
    }

    private function onCancel():void {
        this.closeDialogs.dispatch();
    }


}
}//package _0Mc

