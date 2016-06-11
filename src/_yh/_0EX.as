// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_yh._0EX

package _yh {
import _0Vn.KabamAccountDetailDialog;
import _0Vn._0Nd;
import _0Vn._24;
import _0Vn._Ar;

import _0cA._0bz;

import _0hi._1Uy;
import _0hi._dK;

import _1PE.Account;

import _1PM.*;

import _1T3._hh;

import _1bt._1LA;

import _54._0Hs;
import _54._0aD;

import _Ny._0Vt;
import _Ny._1PD;
import _Ny._1nF;

import _UB._210;

import _YW._11;

import _Zg._g7;

import _db._10I;
import _db._5q;
import _db._8h;

public class _0EX implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        this._1d6();
        this._mP();
        this._0Ge();
        this._1Oc();
    }

    protected function _1d6():void {
        this._sk.map(_10I)._5Z(_8h);
        this._sk.map(Account)._5Z(_10);
        this._sk.map(_hh)._5Z(_5q);
        this._sk.map(_1Uy)._0MH();
    }

    protected function _0Ge():void {
        this.mediatorMap.map(KabamAccountDetailDialog)._1kd(_24);
        this.mediatorMap.map(_0Nd)._1kd(_Ar);
    }

    protected function _1Oc():void {
        this._sk.map(_0Vt)._131(_0aD);
        this._sk.map(_1nF)._131(_11);
        this._sk.map(_1PD)._131(_0Hs);
    }

    private function _mP():void {
        this._9R.map(_dK)._UN(_g7);
    }


}
}//package _yh

