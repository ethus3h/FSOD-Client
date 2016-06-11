// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._1k2

package _07g {
import _04g._13e;

import _0Aa._0KD;

import _0SK.KongregateAccountInfoView;

import _0Vn.KabamAccountInfoView;

import _0od._0ep;

import _10a._FU;

import _1PE.Account;

import _1fj._0Iw;

import _1i0._1PV;
import _1i0._GV;

import _U1._Y5;

import _Z0.ToolTip;

import __Hk._1Q;

import _nl._0ft;

import _r7._17v;

import _yh._10;

public class _1k2 extends _17v {

    [Inject]
    public var view:_Y5;
    [Inject]
    public var account:Account;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _5:_1PV;
    [Inject]
    public var _E:_GV;


    override public function initialize():void {
        this.view.tooltip.add(this._0GA);
        this.view._K3(this._qP._Pw());
        this.view._I8(this._qP._03n(), this._qP._1wz());
        this.view._1pl(this._11c());
    }

    override public function destroy():void {
        this.view.tooltip.remove(this._0GA);
        this._E.dispatch();
    }

    private function _11c():_13e {
        var _local1:_13e;
        switch (this.account._0iC()) {
            case _0Iw._12M:
                _local1 = new _0ep();
                break;
            case _10._12M:
                _local1 = new KabamAccountInfoView();
                break;
            case _0KD._12M:
                _local1 = new KongregateAccountInfoView();
                break;
            case _0ft._12M:
                _local1 = new _1Q();
                break;
        }
        ;
        return (_local1);
    }

    private function _0GA(_arg1:ToolTip):void {
        this._5.dispatch(_arg1);
    }


}
}//package _07g

