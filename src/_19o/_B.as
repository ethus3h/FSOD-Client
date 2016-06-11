// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_19o._B-

package _19o {
import _0Mk._1Sw;

import _0cA._0bz;

import _175._05x;
import _175._0CN;
import _175._0IL;
import _175._dS;

import _1PM.*;

import _1bt._1LA;

import _4p._1ae;

import __IN._00v;
import __IN._07;
import __IN._0VQ;
import __IN._0mp;
import __IN._1Kv;
import __IN._Tq;

import _gr._1U7;

public class _B implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var startup:_1U7;
    [Inject]
    public var _0e8:_1ae;


    public function configure():void {
        this._sk.map(_0CN)._nR(new _05x());
        this._sk.map(_dS)._5Z(_0IL);
        this._sk.map(_1Sw);
        this.startup._0q3(_1Sw, -999);
        this._9R.map(_Tq)._UN(_1Kv);
        this._9R.map(_0VQ)._UN(_07);
        this._9R.map(_0mp)._UN(_00v);
        this._xH();
    }

    private function _xH():void {
        this._sk.getInstance(_0mp).dispatch();
    }


}
}//package _19o

