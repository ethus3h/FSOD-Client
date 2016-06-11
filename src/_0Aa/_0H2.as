// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Aa._0H2

package _0Aa {
import _04g.RegisterWebAccountDialog;

import _09n._87;

import _0SK.KongregateAccountDetailDialog;
import _0SK.KongregateAccountInfoView;
import _0SK._09d;
import _0SK._0t0;
import _0SK._1iH;
import _0SK._Po;
import _0SK._Qo;

import _0cA._0bz;

import _0hi._0Dl;
import _0hi._1Uy;
import _0hi._dK;

import _1PE.Account;

import _1PM.*;

import _1Ry._0DR;
import _1Ry._Fx;

import _1T3._hh;

import _1TZ._0Bl;
import _1TZ._0Hn;
import _1TZ._0Iv;
import _1TZ._0LH;
import _1TZ._14C;
import _1TZ._1Pa;
import _1TZ._1wE;
import _1TZ._eB;

import _1bt._1LA;

import _Ny._0Ut;
import _Ny._0Vt;
import _Ny._1PD;
import _Ny._1nF;
import _Ny._1ys;
import _Ny._bX;

import _UB._210;

import _tb._0DC;
import _tb._0HS;
import _tb._0S;
import _tb._EM;

public class _0H2 implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        this._aI();
        this._mP();
        this._1Oc();
        this._0Ge();
    }

    protected function _aI():void {
        this._sk.map(Account)._5Z(_0KD);
        this._sk.map(_eB)._0MH();
        this._sk.map(_hh)._5Z(_87);
        this._sk.map(_1Uy)._0MH();
    }

    protected function _mP():void {
        this._9R.map(_dK)._UN(_EM);
        this._9R.map(_0Dl)._UN(_0HS);
        this._9R.map(_0DR)._UN(_0DC);
        this._9R.map(_Fx)._UN(_0S);
    }

    protected function _0Ge():void {
        this.mediatorMap.map(KongregateAccountInfoView)._1kd(_1iH);
        this.mediatorMap.map(KongregateAccountDetailDialog)._1kd(_0t0);
        this.mediatorMap.map(RegisterWebAccountDialog)._1kd(_09d);
    }

    protected function _1Oc():void {
        this._sk.map(_Qo)._5Z(_Po);
        this._sk.map(_1nF)._131(_1Pa);
        this._sk.map(_0Bl);
        this._sk.map(_bX)._131(_0LH);
        this._sk.map(_1ys)._131(_14C);
        this._sk.map(_0Vt)._131(_0Iv);
        this._sk.map(_1PD)._131(_0Hn);
        this._sk.map(_0Ut)._131(_1wE);
    }


}
}//package _0Aa

