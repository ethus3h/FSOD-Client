// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Qj._1lN

package _Qj {
import _0cA._0bz;

import _0jj._mX;

import _0og.BuyBeginnersPackageCommand;
import _0og._1cX;
import _0og._uF;

import _0tB_.BeginnersPackageOfferDialog;
import _0tB_._0mY;
import _0tB_._1Nz;
import _0tB_._D8;
import _0tB_._if;
import _0tB_._tk;

import _1PM.*;

import _1Yg._1Fn;

import _1bt._1LA;

import _1xN._0gf;
import _1xN._1TQ;
import _1xN._Q2;

import _UB._210;

public class _1lN implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        this._sk.map(_1Fn)._0MH();
        this._sk.map(_mX)._0MH();
        this.mediatorMap.map(_tk)._1kd(_D8);
        this.mediatorMap.map(BeginnersPackageOfferDialog)._1kd(_if);
        this.mediatorMap.map(_0mY)._1kd(_1Nz);
        this._9R.map(_1TQ)._UN(_uF);
        this._9R.map(_0gf)._UN(BuyBeginnersPackageCommand);
        this._9R.map(_Q2)._UN(_1cX);
    }


}
}//package _Qj

