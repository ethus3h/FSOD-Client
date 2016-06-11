// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0og._uF

package _0og {

import _03u._1hp;
import _03u._2w;
import _03u._BW;
import _03u._Fk;
import _03u._wP;

import _0tB_.BeginnersPackageOfferDialog;
import _0tB_._di;

import _10k._0az;

import _1PE.Account;

import _1Yg._1Fn;

import _Ny._6J;

import __Nj._M4;

public class _uF {

    [Inject]
    public var account:Account;
    [Inject]
    public var model:_1Fn;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _0DH:_0az;
    [Inject]
    public var _Fz:_6J;
    [Inject]
    public var _1ZX:_BW;


    public function execute():void {
        var _local1:_Fk = new _Fk(this._0DH, this._PZ(), this._zR());
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _PZ():_wP {
        var _local1:_2w = new _2w();
        ((this.account._vD()) && (_local1.add(this._Fz)));
        _local1.add(new _1hp(this._nU, new BeginnersPackageOfferDialog()));
        return (_local1);
    }

    private function _zR():_wP {
        var _local1:_2w = new _2w();
        _local1.add(new _1hp(this._nU, new _di()));
        return (_local1);
    }


}
}//package _0og

