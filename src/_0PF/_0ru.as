// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._0ru

package _0PF {
import _07g._2v;

import _08Y._42;
import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0Sj.FusionStrength;
import _0Sj.PetFuser;
import _0Sj._05E;
import _0Sj._0Rz;
import _0Sj._1l_;

import _0y9._06T;

import _1L3._0xm;
import _1L3._tM;

import _1Sm._sy;

import _6u._TG;

import _Vb.*;

public class _0ru extends _0YT implements _1gk {

    private static const _yR:_sy = new _sy();

    public const _A:_0Rz = _sC._1h6(_TG._8V, (_QU._0ws - 39));
    private const background:_1l_ = _sC._1dP();
    private const _1MG:_06T = _sC._1Ir(0xB3B3B3, 18, true);
    private const _0eb:_06T = _sC._1Xm();
    private const _01s:PetFuser = _sC._Jg();
    private const _Mt:_05E = _sC._1JY(_QU._IY);
    private const _17G:FusionStrength = _sC._1TV();
    public const closed:_sy = new _sy();

    public function _0ru() {
        this._A.clicked.addOnce(this._0xi);
    }
    public var _1S3:_sy;
    public var _1tX:_sy;
    public var _1VT:_sy;

    public function init(_arg1:_0xm):void {
        this._1MG.setStringBuilder(new _5R().setParams(_TG._0k6));
        this._1S3 = this._01s._1S3;
        this._1tX = this._A._1hq;
        this._1VT = this._A._0ms;
        this._A._0KW(!(_arg1._7U()));
        this._A.setPrefix(((_arg1._7U()) ? _TG._8V : _TG._0Qn));
        if (_arg1._7U()) {
            this._A._1pN(_42._1ZP(_tM._0yp(_arg1._1uw._07I())));
            this._A._1hi(_42._0Xn(_tM._0yp(_arg1._1uw._07I())));
        }
        ;
        this._Mt.clicked.add(this._0mM);
        this._CL();
        this._1dN();
        this._1Ku();
    }

    public function destroy():void {
        this._A._29.remove(this._0GK);
    }

    public function _zK():_sy {
        return (_yR);
    }

    private function _0xi():void {
        _yR.dispatch();
    }

    private function _1dN():void {
        addChild(this.background);
        addChild(this._1MG);
        addChild(this._0eb);
        addChild(this._A);
        addChild(this._01s);
        addChild(this._17G);
        addChild(this._Mt);
    }

    private function _1Ku():void {
        _0Hr();
        this._1ps();
    }

    private function _1ps():void {
        this._01s.x = Math.round(((_QU._IY - this._01s.width) * 0.5));
    }

    private function _CL():void {
        var _local1:_2v = new _2v();
        _local1.push(this._1MG.textChanged);
        _local1.push(this._0eb.textChanged);
        _local1.complete.addOnce(this._0KA);
        this._A._29.add(this._0GK);
    }

    private function _0KA():void {
        this._1MG.y = 5;
        this._1MG.x = ((_QU._IY - this._1MG.width) * 0.5);
        this._0eb.x = ((_QU._IY - this._0eb.width) * 0.5);
    }

    private function _0GK():void {
        this._A.x = ((_QU._IY - this._A.width) / 2);
    }

    private function _0mM():void {
        this.closed.dispatch();
    }


}
}//package _0PF

