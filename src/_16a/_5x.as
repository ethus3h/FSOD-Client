// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_16a._5x

package _16a {
import _0cA._0bz;

import _12._1Ie;
import _12._kv;

import _1PM.*;

import _1bt._1LA;

import _FT._09t;
import _FT._0Bq;
import _FT._0Rf;
import _FT._1Qu;
import _FT._1bY;

import _UB._210;

import _gr._1U7;

public class _5x implements _YL {

    [Inject]
    public var context:_Ld;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var _0Ae:_1U7;


    public function configure():void {
        this._sk.map(_1Ie);
        this._sk.map(_kv)._0MH();
        this._sk.map(_1Qu)._0MH();
        this._9R.map(_0Rf)._UN(_0Bq);
        this._9R.map(_09t)._UN(_1bY);
        this._0Ae._1CI(_09t);
    }


}
}//package _16a

