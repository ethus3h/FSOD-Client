// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1Ft

package _0Sj {
import _07g._2v;

import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0Ql._ZQ;

import _0y9._06T;

import _1L3._1Xt;

import _1Sm._1xK;
import _1Sm._sy;

import _6u._TG;

import _Z0.ToolTip;

import flash.display.Sprite;
import flash.events.MouseEvent;

public class _1Ft extends Sprite {

    public const _HF:_sy = new _sy(ToolTip);

    public function _1Ft(_arg1:_1Xt, _arg2:int) {
        this._1HM = _arg1;
        this._01j = _arg2;
        this._LH = new _ZQ(this, MouseEvent.MOUSE_OVER).add(this._Uf);
        this.textColor = ((_arg1._7q()) ? 0xB3B3B3 : 0x666666);
        this._JA();
        this._04K();
        _arg1._1an.add(this._0nZ);
    }
    public var _0Yt:_06T;
    private var _LH:_1xK;
    private var _1N:_06T;
    private var _1HM:_1Xt;
    private var _01j:int;
    private var textColor:int;
    private var tooltip:_mr;

    public function destroy():void {
        this._1HM._1an.remove(this._0nZ);
    }

    private function _0nZ(_arg1:_1Xt):void {
        this._0PE();
    }

    private function _04K():void {
        graphics.beginFill(this.textColor);
        graphics.drawCircle(0, -5, 1.5);
    }

    private function _JA():void {
        this._n8();
        if (this._1HM._7q()) {
            this._1LL();
        }
        ;
    }

    private function _1LL():void {
        this._0Yt = _sC._1h(this.textColor, 13, true);
        addChild(this._0Yt);
        this._CL();
        this._0PE();
        (((this._1HM.level >= _QU._da)) && (this._0Yt.setColor(_QU._1Dg)));
    }

    private function _0PE():void {
        if (this._0Yt) {
            this._0Yt.setStringBuilder(new _5R().setParams(this._1n4(this._1HM), {level: this._1HM.level}));
        }
        ;
    }

    private function _n8():void {
        this._1N = _sC._1h(this.textColor, 13, true);
        this._1N.setStringBuilder(new _5R().setParams(this._1HM.name));
        this._1N.x = 3;
        addChild(this._1N);
    }

    private function _1n4(_arg1:_1Xt):String {
        return ((((_arg1.level < _QU._da)) ? _TG._0YH : _TG._09l));
    }

    private function _CL():void {
        var _local1:_2v = new _2v();
        _local1.push(this._0Yt.textChanged);
        _local1.complete.addOnce(this._0KA);
    }

    private function _0KA():void {
        this._0Yt.x = (this._01j - this._0Yt.width);
    }

    private function _Uf(_arg1:MouseEvent):void {
        this.tooltip = new _mr(this._1HM);
        this.tooltip._0jH(this);
        this._HF.dispatch(this.tooltip);
    }


}
}//package _0Sj

