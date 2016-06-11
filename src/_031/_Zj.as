// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_031._Zj

package _031 {

import _03u._1hp;
import _03u._2w;
import _03u._BW;
import _03u._Fk;
import _03u._wP;

import _0od.WebAccountDetailDialog;

import _1i0._18D;
import _1i0._1aE;

import _Ny._1AK;

import __1Ye._0nK;

import __Nj._0ay;
import __Nj._M4;

public class _Zj {

    [Inject]
    public var _2:_1AK;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var close:_0ay;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _X8:_1aE;
    [Inject]
    public var _16k:_18D;


    public function execute():void {
        var _local1:_Fk = new _Fk(this._2, this._z2(), this._0qZ());
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _z2():_wP {
        var _local1:_2w = new _2w();
        _local1.add(new _1hp(this._16k, this._lw()));
        _local1.add(new _1hp(this._nU, new WebAccountDetailDialog()));
        return (_local1);
    }

    private function _0qZ():_wP {
        return (new _1hp(this._X8, this._2));
    }

    private function _lw():_0nK {
        var _local1:_0nK = new _0nK();
        _local1.category = "account";
        _local1._0HR = "passwordChanged";
        return (_local1);
    }


}
}//package _031

