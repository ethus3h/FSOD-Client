// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG.BattleSummaryDialog

package _1EG {
import _0Mr._5R;

import _0P7.BattleSummaryText;

import _0y9._1Ds;

import _1Sm._sy;

import _6u._TG;

import _DQ._0jU;

import _n._Qp;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class BattleSummaryDialog extends Sprite {

    public const close:_sy = new _sy();
    private const WIDTH:int = 264;
    private const HEIGHT:int = 302;
    private const background:_Qp = _0kH();
    private const _mA = _0gV();

    public function BattleSummaryDialog() {
        this._lG = _0kD;
        this._17E = this._JX();
        this._Mt = this._0Cf();
        super();
        this._1OT(25);
        this._1OT(132);
        this._1OT(252);
        this._dk();
    }
    private var _lG:Class;
    private var _0ox:BattleSummaryText;
    private var _1rp:BattleSummaryText;
    private var _17E:_1Ds;
    private var _Mt:_0jU;

    public function _0Hr():void {
        x = ((stage.stageWidth - this.WIDTH) * 0.5);
        y = ((stage.stageHeight - this.HEIGHT) * 0.5);
    }

    public function _1aS(_arg1:int, _arg2:int):void {
        if (this._0ox) {
            removeChild(this._0ox);
        }
        ;
        this._0ox = new BattleSummaryText(_TG._rU, _arg1, _arg2);
        this._0ox.y = ((60 - (this._0ox.height / 2)) + 132);
        this._0ox.x = ((this.WIDTH / 4) - (this._0ox.width / 2));
        addChild(this._0ox);
    }

    public function _1Wy(_arg1:int, _arg2:int):void {
        if (this._1rp) {
            removeChild(this._1rp);
        }
        ;
        this._1rp = new BattleSummaryText(_TG._1Cg, _arg1, _arg2);
        this._1rp.y = ((60 - (this._1rp.height / 2)) + 132);
        this._1rp.x = (((this.WIDTH / 4) - (this._1rp.width / 2)) + (this.WIDTH / 2));
        addChild(this._1rp);
    }

    private function _0kH():_Qp {
        var _local1:_Qp = new _Qp();
        _local1.draw(this.WIDTH, this.HEIGHT);
        addChild(_local1);
        return (_local1);
    }

    private function _dk():void {
        this.background.graphics.lineStyle();
        this.background.graphics.beginFill(0x666666, 1);
        this.background.graphics.drawRect((this.WIDTH / 2), 132, 2, 120);
        this.background.graphics.endFill();
    }

    private function _1OT(_arg1:int):void {
        this.background.graphics.lineStyle();
        this.background.graphics.beginFill(0x666666, 1);
        this.background.graphics.drawRect(1, _arg1, (this.background.width - 2), 2);
        this.background.graphics.endFill();
    }

    private function _0gV() {
        var _local1:* = new this._lG();
        _local1.y = 27;
        _local1.x = 2;
        addChild(_local1);
        return (_local1);
    }

    private function _JX():_1Ds {
        var _local1:_1Ds;
        _local1 = new _1Ds();
        _local1.setSize(18).setBold(true).setColor(0xB3B3B3);
        _local1.setStringBuilder(new _5R().setParams(_TG._1sT));
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        _local1.x = ((this.WIDTH - _local1.width) * 0.5);
        _local1.y = 3;
        addChild(_local1);
        return (_local1);
    }

    private function _0Cf():_0jU {
        var _local1:_0jU;
        _local1 = new _0jU(16, _TG._1gC, 100);
        _local1.addEventListener(MouseEvent.CLICK, this._1OJ);
        _local1.y = ((this.HEIGHT - _local1.height) - 10);
        _local1.x = ((this.WIDTH / 2) - (_local1.width / 2));
        addChild(_local1);
        return (_local1);
    }

    private function _1OJ(_arg1:MouseEvent):void {
        this._Mt.removeEventListener(MouseEvent.CLICK, this._1OJ);
        this.close.dispatch();
    }


}
}//package _1EG

