// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0CT._0J1

package _0CT {
import _03u._BW;

import _0J8._Qv;

import _0WV._0A;
import _0WV._0WP;
import _0WV._0wT;
import _0WV._0wX;
import _0WV._1Jk;
import _0WV._1gK;
import _0WV._1kq;
import _0WV._1tK;
import _0WV._Ea;
import _0WV._GY;
import _0WV._kH;

import _0cA._0bz;

import _0cy._0Ij;
import _0cy._1XE;
import _0cy._7x;

import _0hi._1Uy;

import _10a._12l;
import _10a._1bT;
import _10a._FU;

import _1PM.*;

import _1bt._1LA;

import _1i0._03T;
import _1i0._0Ie;
import _1i0._0Wt;
import _1i0._0kU;
import _1i0._0lm;
import _1i0._171;
import _1i0._18D;
import _1i0._1Gx;
import _1i0._1PV;
import _1i0._1Uh;
import _1i0._1Zf;
import _1i0._1am;
import _1i0._GV;
import _1i0._Q;
import _1i0._cz;
import _1i0._nB;

import _1s5._1q5;

import _4p._1ae;

import _Kt._1d8;

import _SW._12Q;
import _SW._1z5;

import _UB._210;

import __1Ye.PurchaseCharacterClassTask;
import __1Ye._0sV;
import __1Ye._1bh;
import __1Ye._1nr;

import _gr._1U7;

import flash.display.DisplayObjectContainer;

public class _0J1 implements _YL {

    [Inject]
    public var context:_Ld;
    [Inject]
    public var setup:_1ae;
    [Inject]
    public var _bo:DisplayObjectContainer;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var startup:_1U7;
    private var _p7:_0Ij;


    public function configure():void {
        this._dl();
        this._1bO();
        this._GM();
        this._0B();
        this._nW();
        this.startup._1CI(_03T, -1000);
        this.startup._1CI(_1am, -999);
        this.startup._0q3(_1nr);
        this.context._11b._Dy(this.init);
    }

    private function _dl():void {
        this._sk.map(_FU)._0MH();
        this._sk.map(_12l)._0MH();
        this._sk.map(_1bT)._0MH();
        this._sk.map(_1d8)._0MH();
    }

    private function _1bO():void {
        this._9R.map(_03T)._UN(_1gK);
        this._9R.map(_1am)._UN(_1Jk);
        this._9R.map(_18D)._UN(_0wX);
        this._9R.map(_0Ie)._UN(_0WP);
        this._9R.map(_cz)._UN(_kH);
        this._9R.map(_nB)._UN(_1tK);
        this._9R.map(_0lm)._UN(_GY);
        this._9R.map(_1Gx)._UN(_0A);
        this._9R.map(_1Gx)._UN(_Ea);
        this._9R.map(_1Uy)._UN(_1kq);
        this._9R.map(_1Uy)._UN(_0wT);
    }

    private function _GM():void {
        this._sk.map(_1z5)._5Z(_12Q);
        this._sk.map(_BW)._0MH();
        this._sk.map(PurchaseCharacterClassTask);
        this._sk.map(_0sV);
        this._sk.map(_1bh)._0MH();
        this._sk.map(_1nr);
    }

    private function _0B():void {
        this._sk.map(_Q)._0MH();
        this._sk.map(_1Uh)._0MH();
        this._sk.map(_1Zf)._0MH();
        this._sk.map(_1PV)._0MH();
        this._sk.map(_GV)._0MH();
        this._sk.map(_0kU)._0MH();
        this._sk.map(_171)._0MH();
        this._sk.map(_0Wt)._0MH();
    }

    private function _nW():void {
        this.mediatorMap.map(_1XE)._1kd(_7x);
        this.mediatorMap.map(_1q5)._1kd(_Qv);
    }

    private function init():void {
        this.mediatorMap._13(this._bo);
        this._p7 = new _0Ij();
        this._sk.map(_0Ij)._nR(this._p7);
        this._bo.addChild(this._p7);
    }


}
}//package _0CT

