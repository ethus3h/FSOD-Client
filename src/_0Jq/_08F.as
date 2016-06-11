// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Jq._08F

package _0Jq {
import _05j.Chat;
import _05j._06k;
import _05j._0TJ;
import _05j._0kF;
import _05j._0uT;
import _05j._1Zw;
import _05j._1lV;
import _05j._9l;
import _05j._yN;

import _0cA._0bz;

import _14.Text;

import _1PM.*;

import _1TC._08E;

import _1cr._Fv;

import _1d9._0z0;
import _1d9._21G;
import _1d9._pF;

import _1qL._1Jo;

import _Kt._0NT;
import _Kt._0We;
import _Kt._0nY;
import _Kt._1SB;
import _Kt._1VS;
import _Kt._1Wa;
import _Kt._1cd;
import _Kt._OR;

import _UB._210;

import _md._0AH;
import _md._1tJ;

public class _08F implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _NB:_Fv;
    [Inject]
    public var _9R:_1Jo;
    [Inject]
    public var mediatorMap:_210;


    public function configure():void {
        this._sk.map(_0AH)._0MH();
        this._sk.map(_08F)._0MH();
        this._sk.map(_0kF)._0MH();
        this._sk.map(_1tJ)._0MH();
        this._sk.map(_0NT)._0MH();
        this._sk.map(_1SB)._0MH();
        this._sk.map(_1Wa)._0MH();
        this._9R.map(_0z0)._UN(_0We);
        this._9R.map(_pF)._UN(_OR);
        this._9R.map(_21G)._UN(_OR);
        this._NB.map(_08E.TEXT)._0VH(Text)._do(_1cd);
        this._9R.map(_0nY)._UN(_1VS);
        this.mediatorMap.map(_0uT)._1kd(_yN);
        this.mediatorMap.map(_06k)._1kd(_1Zw);
        this.mediatorMap.map(Chat)._1kd(_9l);
        this.mediatorMap.map(_0TJ)._1kd(_1lV);
    }


}
}//package _0Jq

