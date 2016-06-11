// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_2-C._ed

package _2C {
import _08Y._42;
import _08Y._sC;

import _0PF.YardUpgraderView;
import _0PF._0T7;
import _0PF._0UQ;
import _0PF._0Xd;
import _0PF._0ru;
import _0PF._11E;
import _0PF._15v;
import _0PF._1lw;
import _0PF._1w9;
import _0PF._NL;

import _0Sj.FusionStrength;
import _0Sj.PetFeeder;
import _0Sj.PetFuser;
import _0Sj._05E;
import _0Sj._0GN;
import _0Sj._0P;
import _0Sj._0U2;
import _0Sj._0ea;
import _0Sj._0iq;
import _0Sj._0tN;
import _0Sj._0u;
import _0Sj._1Ft;
import _0Sj._1R;
import _0Sj._1zL;
import _0Sj._8a;
import _0Sj._F3;
import _0Sj._IS;
import _0Sj._LF;
import _0Sj._Q7;

import _0cA._0bz;

import _0fB._21C;

import _0ld.CaretakerQueryDialog;
import _0ld.PetPicker;
import _0ld._03J;
import _0ld._0jp;
import _0ld._1EE;
import _0ld._1KQ;
import _0ld._1yV;
import _0ld._5S;

import _1L3._0xm;
import _1L3._IG;

import _1PM.*;

import _1bt._1LA;

import _UB._210;

import _Vb._1f6;
import _Vb._1gk;

import _jP.PetPanel;
import _jP._0gg;

import _vp._00R;
import _vp._04u;
import _vp._06y;
import _vp._0VK;
import _vp._0WT;
import _vp._0Yd;
import _vp._0bO;
import _vp._0cn;
import _vp._0gB;
import _vp._0zI;
import _vp._1AF;
import _vp._1Ex;
import _vp._1PF;
import _vp._1VH;
import _vp._1Wm;
import _vp._1Zd;
import _vp._1a0;
import _vp._1gJ;
import _vp._1i;
import _vp._1zA;
import _vp._Je;
import _vp._QF;
import _vp._Qe;
import _vp._VR;
import _vp._dX;
import _vp._yU;

public class _ed implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var commandCenter:_21C;


    public function configure():void {
        this._sk.map(_0VK)._0MH();
        this._sk.map(_IG)._0MH();
        this._sk.map(_1Zd)._0MH();
        this._sk.map(_sC)._0MH();
        this._sk.map(_0xm)._0MH();
        this._sk.map(_1AF)._0MH();
        this._sk.map(_42)._0MH();
        this.mediatorMap.map(_0T7)._1kd(_11E);
        this.mediatorMap.map(_15v)._1kd(_NL);
        this.mediatorMap.map(_0ru)._1kd(_1w9);
        this.mediatorMap.map(_0ru)._1kd(_1w9);
        this.mediatorMap.map(_0ea)._1kd(_0U2);
        this.mediatorMap.map(PetPanel)._1kd(_0GN);
        this.mediatorMap.map(_0tN)._1kd(_8a);
        this.mediatorMap.map(_0P)._1kd(_0iq);
        this.mediatorMap.map(PetPicker)._1kd(_03J);
        this.mediatorMap.map(PetFeeder)._1kd(_F3);
        this.mediatorMap.map(PetFuser)._1kd(_0u);
        this.mediatorMap.map(_05E)._1kd(_1zL);
        this.mediatorMap.map(_Q7)._1kd(_IS);
        this.mediatorMap.map(_1Ft)._1kd(_LF);
        this.mediatorMap.map(YardUpgraderView)._1kd(_1lw);
        this.mediatorMap.map(CaretakerQueryDialog)._1kd(_0Xd);
        this.mediatorMap.map(FusionStrength)._1kd(_1R);
        this.mediatorMap.map(_1yV)._1kd(_1KQ);
        this.mediatorMap.map(_1EE)._1kd(_5S);
        this.mediatorMap.map(_1gk)._1kd(_1f6);
        this.mediatorMap.map(_0jp)._1kd(_0UQ);
        this._9R.map(_06y)._UN(_0gB);
        this._9R.map(_1Wm)._UN(_dX);
        this._9R.map(_0bO)._UN(_Qe);
        this._9R.map(_1zA)._UN(_04u);
        this._9R.map(_1Ex)._UN(_0cn);
        this._9R.map(_1VH)._UN(_1gJ);
        this._9R.map(_0zI)._UN(_1PF);
        this._9R.map(_yU)._UN(_0WT);
        this._9R.map(_VR)._UN(_0Yd);
        this._9R.map(_1a0)._UN(_Je);
        this._9R.map(_00R)._UN(_QF);
        this._9R.map(_0gg)._UN(_1i);
        this._sk.getInstance(_1VH).dispatch();
    }


}
}//package _2-C

