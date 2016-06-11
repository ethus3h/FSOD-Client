// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0og.BuyBeginnersPackageCommand

package _0og {
import _04g._GE;

import _0hi._0PT;

import _0tB_._0mY;

import _1PE.Account;
import _1PE._0Q8;

import _1Yg._1Fn;

import _1fj._0Iw;

import _1xN._Q2;

import _6u._TG;

import __Nj._M4;

import _yh._10;

public class BuyBeginnersPackageCommand {

    private static const _1GH:String = _TG._0O7;//"BuyBeginnersPackageCommand.registerDialog"

    [Inject]
    public var account:Account;
    [Inject]
    public var model:_1Fn;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _0kI:_0PT;
    [Inject]
    public var _0DK:_Q2;


    public function execute():void {
        if (this.account._vD()) {
            this._1XY();
        } else {
            this._NO();
        }
        ;
    }

    private function _1XY():void {
        if ((((this.account is _0Iw)) || ((this.account is _10)))) {
            this._nU.dispatch(new _0mY());
        } else {
            this._1Nj();
        }
        ;
    }

    private function _1Nj():void {
        var _local1:_0Q8 = new _0Q8();
        _local1.offer = this.model._0ku();
        this._0DK.dispatch(_local1);
    }

    private function _NO():void {
        this._nU.dispatch(new _GE(_1GH));
    }


}
}//package _0og

