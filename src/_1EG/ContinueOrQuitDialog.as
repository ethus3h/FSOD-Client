// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG.ContinueOrQuitDialog

package _1EG {
import _0Mr._1M;
import _0Mr._5R;

import _0y9._1Ds;

import _1Sm._sy;

import _6u._TG;

import _DQ._0jU;

import _n._19y;
import _n._Qp;

import com.company.assembleegameclient.util.Currency;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class ContinueOrQuitDialog extends Sprite {

    public const quit:_sy = new _sy();
    public const _1l7:_sy = new _sy(int, int);
    private const WIDTH:int = 350;
    private const HEIGHT:int = 150;
    private const background:_Qp = _0kH();
    private const title:_1Ds = _JX();
    private const quitSubtitle:_1Ds = _zN();
    private const _0M9:_0jU = _0Un();
    private const continueButton:_19y = _12n();
    private const _Pv:_1Ds = _zN();
    private const _0sR:_1Ds = _zN();

    public function ContinueOrQuitDialog(_arg1:int, _arg2:Boolean) {
        this.cost = _arg1;
        this.continueButton.setPrice(_arg1, Currency._1mE);
        this._0Ca(_arg2);
    }
    private var cost:int;

    public function init(_arg1:int, _arg2:int):void {
        this._0Hr();
        this._0M9.addEventListener(MouseEvent.CLICK, this._Sp);
        this.continueButton.addEventListener(MouseEvent.CLICK, this._1L5);
        this.quitSubtitle.setStringBuilder(new _5R().setParams(_TG._1WK));
        this._Pv.setStringBuilder(new _5R().setParams(_TG._1Jy, {waveNumber: _arg1.toString()}));
        this._0sR.setStringBuilder(new _1M("Processing"));
        this._0sR.visible = false;
        this.align();
        this._1jQ();
        this._18();
    }

    public function _0Ca(_arg1:Boolean):void {
        this._0sR.visible = _arg1;
        this.continueButton.visible = !(_arg1);
    }

    public function destroy():void {
        this._0M9.removeEventListener(MouseEvent.CLICK, this._Sp);
        this.continueButton.removeEventListener(MouseEvent.CLICK, this._1L5);
    }

    private function align():void {
        this.quitSubtitle.x = (70 - (this.quitSubtitle.width / 2));
        this.quitSubtitle.y = 85;
        this._0M9.x = (70 - (this._0M9.width / 2));
        this._0M9.y = 110;
        this._Pv.x = ((105 - (this._Pv.width / 2)) + 140);
        this._Pv.y = 85;
        this.continueButton.x = ((105 - (this.continueButton.width / 2)) + 140);
        this.continueButton.y = 110;
        this._0sR.x = ((105 - (this._0sR.width / 2)) + 140);
        this._0sR.y = 110;
    }

    private function _0Hr():void {
        x = ((stage.stageWidth - this.WIDTH) * 0.5);
        y = ((stage.stageHeight - this.HEIGHT) * 0.5);
    }

    private function _0kH():_Qp {
        var _local1:_Qp = new _Qp();
        _local1.draw(this.WIDTH, this.HEIGHT);
        addChild(_local1);
        return (_local1);
    }

    private function _JX():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(20).setBold(true).setColor(0xB3B3B3);
        _local1.setStringBuilder(new _5R().setParams(_TG._06t));
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        _local1.x = ((this.WIDTH - _local1.width) * 0.5);
        _local1.y = 25;
        addChild(_local1);
        return (_local1);
    }

    private function _1jQ():void {
        this.background.graphics.lineStyle();
        this.background.graphics.beginFill(0x666666, 1);
        this.background.graphics.drawRect(1, 70, (this.background.width - 2), 2);
        this.background.graphics.endFill();
    }

    private function _18():void {
        this.background.graphics.lineStyle();
        this.background.graphics.beginFill(0x666666, 1);
        this.background.graphics.drawRect(140, 70, 2, (this.HEIGHT - 66));
        this.background.graphics.endFill();
    }

    private function _0Un():_0jU {
        var _local1:_0jU = new _0jU(15, _TG._1zV);
        addChild(_local1);
        return (_local1);
    }

    private function _12n():_19y {
        var _local1:_19y = new _19y("", 15, this.cost, Currency._1mE);
        _local1._0CF.addOnce(this.align);
        addChild(_local1);
        return (_local1);
    }

    private function _zN():_1Ds {
        var _local1:_1Ds;
        _local1 = new _1Ds();
        _local1.setSize(15).setColor(0xFFFFFF).setBold(true);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        addChild(_local1);
        return (_local1);
    }

    private function _Sp(_arg1:MouseEvent):void {
        this.quit.dispatch();
    }

    private function _1L5(_arg1:MouseEvent):void {
        this._1l7.dispatch(Currency._1mE, this.cost);
    }


}
}//package _1EG

