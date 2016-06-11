// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_nl._He

package _nl {
import _04g.RegisterWebAccountDialog;

import _0cA._0bz;

import _0hi._0Dl;
import _0hi._1Uy;
import _0hi._dK;

import _17m._0Jp;
import _17m._0uE;

import _1PE.Account;

import _1PM.*;

import _1T3._hh;

import _1bt._1LA;

import _Ny._0Ut;
import _Ny._0Vt;
import _Ny._1PD;
import _Ny._1nF;

import _PJ._1bH;

import _UB._210;

import _VN._05e;
import _VN._077;
import _VN._0Ak;
import _VN._0Hg;
import _VN._0gZ;
import _VN._q0;

import __Hk.SteamAccountDetailDialog;
import __Hk._Mq;
import __Hk._each;

public class _He implements _YL {

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
        this._1Oc();
    }

    protected function _aI():void {
        this._sk.map(Account)._5Z(_0ft);
        this._sk.map(_hh)._5Z(_1bH);
        this._sk.map(_1Uy)._0MH();
    }

    protected function _mP():void {
        this._9R.map(_dK)._UN(_0Jp);
        this._9R.map(_0Dl)._UN(_0uE);
    }

    protected function _0Ge():void {
        this.mediatorMap.map(SteamAccountDetailDialog)._1kd(_each);
        this.mediatorMap.map(RegisterWebAccountDialog)._1kd(_Mq);
    }

    protected function _1Oc():void {
        this._sk.map(_0Y9)._5Z(_05e);
        this._sk.map(_1nF)._131(_0Hg);
        this._sk.map(_0Ak);
        this._sk.map(_0Vt)._131(_077);
        this._sk.map(_1PD)._131(_q0);
        this._sk.map(_0Ut)._131(_0gZ);
    }


}
}//package _nl

