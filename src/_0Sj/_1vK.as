// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1vK

package _0Sj {
import _0Mr._5R;

import _0y9._06T;

import _v9._108;
import _v9._qi;

import flash.display.Shape;
import flash.display.Sprite;
import flash.text.TextFieldAutoSize;

import flashx.textLayout.formats.VerticalAlign;

public class _1vK extends Sprite {

    private const WIDTH:int = 235;
    private const HEIGHT:int = 252;
    private const BEVEL:int = 4;
    private const _1ay:int = 6;
    private const _0qM:int = 25;
    private const _1U6:int = 8;
    private const _0VO:Shape = new Shape();
    private const _0bV:_06T = makeText();

    public function _1vK() {
        addChild(this._0VO);
        addChild(this._0bV);
    }

    public function _1Nq(_arg1:String):void {
        this._0bV.setStringBuilder(new _5R().setParams(_arg1));
        this._0bV.textChanged.add(this._0LW);
    }

    private function makeText():_06T {
        var _local1:_06T = new _06T().setSize(16).setLeading(3).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(VerticalAlign.TOP).setMultiLine(true).setWordWrap(true).setPosition(this._1U6, this._1U6).setTextWidth((this.WIDTH - (2 * this._1U6))).setTextHeight((this.HEIGHT - (2 * this._1U6)));
        return (_local1);
    }

    private function _0LW():void {
        this._1Il();
    }

    private function _1Il():void {
        var _local1:_qi = new _qi();
        var _local2:_108 = new _108(this.WIDTH, (this._0bV.height + 16), this.BEVEL);
        this._0VO.graphics.beginFill(0xE0E0E0);
        _local1._EN(0, 0, _local2, this._0VO.graphics);
        this._0VO.graphics.endFill();
        this._0VO.graphics.beginFill(0xE0E0E0);
        this._0VO.graphics.moveTo((this._0qM - this._1ay), 0);
        this._0VO.graphics.lineTo(this._0qM, -(this._1ay));
        this._0VO.graphics.lineTo((this._0qM + this._1ay), 0);
        this._0VO.graphics.endFill();
    }


}
}//package _0Sj

