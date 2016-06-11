// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0zG._0Jy

package _0zG {
import _0AI._000;
import _0AI._0oM;
import _0AI._0q8;
import _0AI._1BY;
import _0AI._1Rb;
import _0AI._1dY;
import _0AI._Ds;

import _0cA._0bz;

import _0no._1J7;

import _1PM.*;

import _1bt._1LA;

import _7T._18u;

import _R2._0LX;
import _R2._5f;
import _R2._fo;

import _UB._210;

import _gr._1U7;

import _nf._1GS;

public class _0Jy implements _YL {

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
        this._sk.map(_5f)._0MH();
        this._sk.map(_fo)._0MH();
        this._sk.map(_0LX)._0MH();
        this._sk.map(_18u)._0MH();
        this._sk.map(_1GS)._0MH();
        this.mediatorMap.map(_1BY)._1kd(_0oM);
        this.mediatorMap.map(_Ds)._1kd(_1dY);
        this.mediatorMap.map(_1J7)._1kd(_0q8);
        this.mediatorMap.map(_000)._1kd(_1Rb);
        this._0Ae._0q3(_1GS);
    }


}
}//package _0zG

