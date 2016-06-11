// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._mr

package _0Sj {
import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0y9._06T;

import _1L3._1Xt;

import _Z0.ToolTip;

import flash.display.Sprite;

public class _mr extends ToolTip {

    private const _1L2:Sprite = new Sprite();
    private const _VU:_06T = _sC._1Ir(0xFFFFFF, 16, true, true);
    private const _U:_06T = _sC._1Ir(0xFFFFFF, 14, false, true);

    public function _mr(_arg1:_1Xt) {
        super(0x363636, 1, 0xFFFFFF, 1, true);
        this._U.setTextWidth(200).setWordWrap(true);
        this._wN = _arg1;
        this._1dN();
        this._JA();
    }
    private var _wN:_1Xt;

    override protected function alignUI():void {
        this._VU.x = _QU._al;
        this._VU.y = _QU._1kS;
        this._U.x = _QU._al;
        this._U.y = (this._VU.y + this._VU.height);
    }

    private function _JA():void {
        _qH.push(this._VU.textChanged);
        _qH.push(this._U.textChanged);
        this._VU.setStringBuilder(new _5R().setParams(this._wN.name));
        this._U.setStringBuilder(new _5R().setParams(this._wN.description));
    }

    private function _1dN():void {
        this._1L2.addChild(this._VU);
        this._1L2.addChild(this._U);
        addChild(this._1L2);
    }


}
}//package _0Sj

