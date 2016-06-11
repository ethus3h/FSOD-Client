// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fj._1DC

package _1fj {
import _031._0MZ;
import _031._0tu;
import _031._18W;
import _031._19k;
import _031._1ut;
import _031._1vg;
import _031._Zj;

import _085._011;

import _0cA._0bz;

import _0hi._0Q9;
import _0hi._1JC;
import _0hi._1Uy;
import _0hi._1pq;
import _0hi._1yd;
import _0hi._dK;

import _0od.WebAccountDetailDialog;
import _0od.WebChangePasswordDialog;
import _0od.WebForgotPasswordDialog;
import _0od.WebLoginDialog;
import _0od._00g;
import _0od._0G0;
import _0od._0Wl;
import _0od._0ep;
import _0od._0pj;
import _0od._0xZ;
import _0od._187;
import _0od._1Ju;
import _0od._1WN;
import _0od._21K;
import _0od._Xn;
import _0od._yS;

import _1PE.Account;

import _1PM.*;

import _1T3._hh;

import _1bt._1LA;

import _54._0Hs;
import _54._0aD;
import _54._0wH;
import _54._15s;
import _54._1Qq;
import _54._1aA;
import _54._1pa;
import _54._HA;

import _Ny._0Ut;
import _Ny._0Vt;
import _Ny._1AK;
import _Ny._1PD;
import _Ny._1Rf;
import _Ny._1bJ;
import _Ny._1nF;
import _Ny._bX;

import _UB._210;

import _nb._0Ff;

public class _1DC implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        this._aI();
        this._mP();
        this._0Ge();
        this._0ww();
    }

    protected function _aI():void {
        this._sk.map(Account)._5Z(_0Iw);
        this._sk.map(_hh)._5Z(_011);
    }

    protected function _mP():void {
        this._9R.map(_dK)._UN(_0tu);
        this._9R.map(_1yd)._UN(_1vg);
        this._9R.map(_1pq)._UN(_18W);
        this._9R.map(_0Ff)._UN(_Zj);
        this._9R.map(_0Q9)._UN(_1ut);
        this._9R.map(_1JC)._UN(_19k);
        this._9R.map(_1Uy)._UN(_0MZ);
    }

    protected function _0Ge():void {
        this.mediatorMap.map(_0ep)._1kd(_0pj);
        this.mediatorMap.map(WebChangePasswordDialog)._1kd(_1Ju);
        this.mediatorMap.map(WebForgotPasswordDialog)._1kd(_Xn);
        this.mediatorMap.map(WebAccountDetailDialog)._1kd(_yS);
        this.mediatorMap.map(_0Wl)._1kd(_00g);
        this.mediatorMap.map(WebLoginDialog)._1kd(_21K);
        this.mediatorMap.map(_187)._1kd(_1WN);
        this.mediatorMap.map(_0xZ)._1kd(_0G0);
    }

    protected function _0ww():void {
        this._sk.map(_1AK)._131(_1pa);
        this._sk.map(_1nF)._131(_1Qq);
        this._sk.map(_bX)._131(_15s);
        this._sk.map(_0Vt)._131(_0aD);
        this._sk.map(_1PD)._131(_0Hs);
        this._sk.map(_0Ut)._131(_0wH);
        this._sk.map(_1bJ)._131(_HA);
        this._sk.map(_1Rf)._131(_1aA);
    }


}
}//package _1fj

