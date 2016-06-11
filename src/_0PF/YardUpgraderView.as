// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF.YardUpgraderView

package _0PF {
import _07g._2v;

import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0Sj._05E;
import _0Sj._0Rz;
import _0Sj._1l_;

import _0y9._06T;

import _1L3._1s6;

import _1Sm._sy;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.text.TextFormatAlign;

public class YardUpgraderView extends Sprite {

    private const background:_1l_ = _sC._1oI(_QU._IY, 392);
    private const _1MG:_06T = _sC._1h(0xFFFFFF, 18, true);
    private const _1lr:_06T = _sC._1h(0xB3B3B3, 13, false);
    private const _Kx:_06T = _sC._1h(16777103, 16, true);
    private const _A:_0Rz = _sC._1h6("YardUpgraderView.upgrade", 357);
    private const _Mt:_05E = _sC._1JY(_QU._IY);
    private const _15p:DisplayObject = new _y4();
    private const _6I:_0xA = new _0xA();
    public const closed:_sy = new _sy();

    public function YardUpgraderView() {
        super();
    }
    public var _1VT:_sy;
    public var _1tX:_sy;
    private var _1HM:_1s6;

    public function init(_arg1:_1s6):void {
        this._1HM = _arg1;
        this._Mt.clicked.add(this._0zc);
        this._VS();
        this._JB();
        this._CL();
        this._1dN();
        this._1Ku();
    }

    public function destroy():void {
        this._A._29.remove(this._0GK);
    }

    public function _RE(_arg1:int):void {
        this._A._1pN(_arg1);
    }

    public function _0S1(_arg1:int):void {
        this._A._1hi(_arg1);
    }

    private function _VS():void {
        this._1VT = this._A._0ms;
        this._1tX = this._A._1hq;
        this._A._1hi(this._1HM._06g);
        this._A._1pN(this._1HM._1X7);
    }

    private function _JB():void {
        this._1MG.setStringBuilder(new _5R().setParams("YardUpgraderView.title"));
        this._Kx.setStringBuilder(new _5R().setParams(this._1nY(this._1HM._20Q)));
        this._1lr.setStringBuilder(new _5R().setParams("YardUpgraderView.info"));
        this._1lr.setTextWidth((_QU._IY - 40)).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER);
        this._6I._We("YardUpgraderView.currentMax", this._1nY(this._1HM._lK));
    }

    private function _1nY(_arg1:String):String {
        return ((("{" + _arg1) + "}"));
    }

    private function _0zc():void {
        this.closed.dispatch();
    }

    private function _0jL(_arg1:Boolean):void {
        this._Mt.disabled = _arg1;
        this._A._0KW(_arg1);
    }

    private function _1dN():void {
        this._15p.y = 31;
        addChild(this.background);
        addChild(this._1MG);
        addChild(this._Kx);
        addChild(this._1lr);
        addChild(this._A);
        addChild(this._Mt);
        addChild(this._15p);
        addChild(this._6I);
    }

    private function _1Ku():void {
        this._0Hr();
        this._15p.y = 30;
        this._6I.x = 11;
        this._6I.y = 300;
    }

    private function _0Hr():void {
        this.x = ((stage.stageWidth - this.width) * 0.5);
        this.y = ((stage.stageHeight - this.height) * 0.5);
    }

    private function _CL():void {
        var _local1:_2v = new _2v();
        _local1.push(this._1MG.textChanged);
        _local1.push(this._1lr.textChanged);
        _local1.push(this._Kx.textChanged);
        _local1.complete.addOnce(this._0KA);
        this._A._29.add(this._0GK);
    }

    private function _0KA():void {
        this._1MG.x = ((_QU._IY - this._1MG.width) * 0.5);
        this._1lr.x = ((_QU._IY - this._1lr.width) * 0.5);
        this._Kx.x = ((_QU._IY - this._Kx.width) * 0.5);
        this._1MG.y = 20;
        this._1lr.y = 229;
        this._Kx.y = 269;
    }

    private function _0GK():void {
        this._A.x = ((_QU._IY - this._A.width) / 2);
    }


}
}//package _0PF

