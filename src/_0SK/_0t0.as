﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0SK._0t0

package _0SK {
import _04g.RegisterWebAccountDialog;

import _1PE.Account;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

import com.company.util._yJ;

public class _0t0 extends _17v {

    [Inject]
    public var view:KongregateAccountDetailDialog;
    [Inject]
    public var account:Account;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _C:_Qo;


    override public function initialize():void {
        this._o6();
        this.view._9S.add(this._1qs);
        this.view.register.add(this._jy);
        this.view.link.add(this.onLink);
    }

    override public function destroy():void {
        this.view._9S.remove(this._1qs);
        this.view.register.remove(this._jy);
        this.view.link.remove(this.onLink);
    }

    private function _o6():void {
        var _local1:String = this._C._02H();
        var _local2:String = this.account._02H();
        var _local3:Boolean = _yJ._0sW(_local2);
        this.view._0Pf(_local1, _local2, _local3);
    }

    private function _1qs():void {
        this._00G.dispatch();
    }

    private function _jy():void {
        this._nU.dispatch(new RegisterWebAccountDialog());
    }

    private function onLink():void {
    }


}
}//package _0SK

