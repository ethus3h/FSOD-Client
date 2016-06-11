// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._gF

package _07g {
import _0hi._DG;

import _1PE.Account;

import _Ny._6J;

import __Nj._0ay;

import _r7._17v;

public class _gF extends _17v {

    [Inject]
    public var account:Account;
    [Inject]
    public var _Fz:_6J;
    [Inject]
    public var view:_0Ek;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _ky:_DG;


    override public function initialize():void {
        this._Fz.start();
        this.view._7u.add(this._1L);
        this.view.cancel.add(this.onCancel);
    }

    override public function destroy():void {
        this.view._7u.remove(this._1L);
        this.view.cancel.remove(this.onCancel);
    }

    public function onCancel():void {
        this.closeDialogs.dispatch();
    }

    public function _1L():void {
        this._ky.dispatch();
    }


}
}//package _07g

