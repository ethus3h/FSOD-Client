// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._0T7

package _0PF {
import _07g._2v;

import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0Sj._05E;
import _0Sj._1l_;
import _0Sj._g4;

import _0y9._06T;

import _1L3._1FO;

import _1Sm._sy;

import flash.display.Sprite;

public class _0T7 extends Sprite {

    private const background:_1l_ = _sC._1AZ(_QU._IY, _QU._1Ce);
    private const _1MG:_06T = _sC._1h(0xFFFFFF, 18, true);
    private const _A:_g4 = _sC._1O7();
    private const _Mt:_05E = _sC._1JY(_QU._IY);

    public function _0T7() {
        this._06m = new _sy(_1FO);
        super();
    }
    public var _06m:_sy;

    public function init():void {
        this._CL();
        this._1dN();
        this._1MG.setStringBuilder(new _5R().setParams("Available Pets"));
        this._A.buttonOne._1Nq("SELECT PET");
        this._0Hr();
    }

    private function _1dN():void {
        addChild(this.background);
        addChild(this._1MG);
        addChild(this._A);
        addChild(this._Mt);
    }

    private function _0Hr():void {
        this.x = ((stage.width - this.width) / 2);
        this.y = ((stage.height - this.height) / 2);
    }

    private function _CL():void {
        var _local1:_2v = new _2v();
        _local1.push(this._1MG.textChanged);
        _local1.complete.addOnce(this._0KA);
    }

    private function _0KA():void {
        this._1MG.x = ((_QU._IY - this._1MG.width) / 2);
    }


}
}//package _0PF

