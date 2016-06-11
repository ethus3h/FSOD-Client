// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_06-._0Rt

package _06 {
import _0cA._0bz;

import _0cy._0Ij;

import _0oZ.Console;

import _1Jj._0X;
import _1Jj._0ji;
import _1Jj._y0;

import _1PM._Ld;

import _1RN._035;
import _1RN._0Qv;
import _1RN._15D;
import _1RN._1ii;
import _1RN._1mv;
import _1RN._7E;
import _1RN._BC;
import _1RN._RX;
import _1RN._Yg;
import _1RN._b3;
import _1RN._bw;
import _1RN._lf;

import _1bt._1LA;

import _8x._0Df;
import _8x._1A;
import _8x._1D5;
import _8x._1RV;
import _8x._CJ;
import _8x._Jp;
import _8x._bi;

import _KG._GT;

import _UB._210;

public class _0Rt {

    [Inject]
    public var context:_Ld;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    [PostConstruct]
    public function setup():void {
        this._aI();
        this._mP();
        this._0ol();
        this._0Ge();
        this.context._11b._Dy(this.init);
    }

    private function _aI():void {
        this._sk.map(Console)._0MH();
        this._sk.map(_035)._0MH();
        this._sk.map(_lf)._0MH();
        this._sk.map(_1mv)._0MH();
        this._sk.map(_0Qv)._0MH();
    }

    private function _mP():void {
        this._9R.map(_BC)._UN(_y0);
        this._9R.map(_1ii)._UN(_0ji);
        this._9R.map(_15D)._UN(_0X);
    }

    private function _0ol():void {
        this._sk.map(_7E)._0MH();
        this._sk.map(_Yg)._0MH();
        this._sk.map(_RX)._0MH();
        this._sk.map(_b3)._0MH();
        this._sk.map(_bw)._0MH();
    }

    private function _0Ge():void {
        this.mediatorMap.map(_1A)._1kd(_Jp);
        this.mediatorMap.map(_CJ)._1kd(_bi);
        this.mediatorMap.map(_1RV)._1kd(_0Df);
        this.mediatorMap.map(_1RV)._1kd(_1D5);
    }

    private function init():void {
        this.context._XV(new _GT(this.context));
        this._sk.getInstance(_15D).dispatch();
        var _local1:_0Ij = this.context._sk.getInstance(_0Ij);
        _local1.console.addChild(new _1RV());
    }


}
}//package _06-

