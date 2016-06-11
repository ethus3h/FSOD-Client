// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Yc._NT

package _Yc {
import _0cA._0bz;

import _0cZ.PackageButton;
import _0cZ.PackageOfferDialog;
import _0cZ._018;
import _0cZ._0x3;
import _0cZ._1DB;
import _0cZ._1JH;

import _0fO._1J;
import _0fO._oh;

import _0jj._0FC;
import _0jj._0XB;
import _0jj._10z;
import _0jj._12S;
import _0jj._12b;
import _0jj._16L;
import _0jj._1Td;
import _0jj._1ez;
import _0jj._1t5;
import _0jj._CH;
import _0jj._Oj;
import _0jj._bn;

import _1PM.*;

import _1bt._1LA;

import _UB._210;

import _gr._1U7;

import _rB._0en;
import _rB._1P7;

public class _NT implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var _0dM:_1U7;


    public function configure():void {
        this._sk.map(_1P7)._0MH();
        this._sk.map(_10z)._0MH();
        this._sk.map(_0en);
        this.mediatorMap.map(PackageButton)._1kd(_1DB);
        this.mediatorMap.map(PackageOfferDialog)._1kd(_1JH);
        this.mediatorMap.map(_018)._1kd(_0x3);
        this.mediatorMap.map(_oh)._1kd(_1J);
        this._9R.map(_12b)._UN(_0FC)._8z(_0Yw, _1Td);
        this._9R.map(_Oj)._UN(_1ez);
        this._9R.map(_bn)._UN(_12S);
        this._9R.map(_CH)._UN(_16L);
        this._9R.map(_1t5)._UN(_0XB);
        this._0dM._0q3(_0en);
    }


}
}//package _Yc

