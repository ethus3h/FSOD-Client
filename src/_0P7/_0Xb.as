﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0P7._0Xb

package _0P7 {
import _0Mr._5R;

import _0y9._06T;

import _v9._108;
import _v9._qi;

import flash.display.Shape;
import flash.display.Sprite;
import flash.text.TextFieldAutoSize;

import flashx.textLayout.formats.VerticalAlign;

public class _0Xb extends Sprite {

    private const WIDTH:int = 174;
    private const HEIGHT:int = 225;
    private const BEVEL:int = 4;
    private const _1ay:int = 6;
    private const _1U6:int = 8;

    public function _0Xb(_arg1:String) {
        addChild(this._1Il());
        addChild(this.makeText(_arg1));
    }

    private function _1Il():Shape {
        var _local1:Shape = new Shape();
        this._1Te(_local1);
        return (_local1);
    }

    private function _1Te(_arg1:Shape):void {
        var _local2:_qi = new _qi();
        var _local3:_108 = new _108(this.WIDTH, this.HEIGHT, this.BEVEL);
        var _local4:int = 21;
        _arg1.graphics.beginFill(0xE0E0E0);
        _local2._EN(0, 0, _local3, _arg1.graphics);
        _arg1.graphics.endFill();
        _arg1.graphics.beginFill(0xE0E0E0);
        _arg1.graphics.moveTo(0, (_local4 - this._1ay));
        _arg1.graphics.lineTo(-(this._1ay), _local4);
        _arg1.graphics.lineTo(0, (_local4 + this._1ay));
        _arg1.graphics.endFill();
    }

    private function makeText(_arg1:String):_06T {
        var _local2:_06T = new _06T().setSize(16).setLeading(3).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(VerticalAlign.TOP).setMultiLine(true).setWordWrap(true).setPosition(this._1U6, this._1U6).setTextWidth((this.WIDTH - (2 * this._1U6))).setTextHeight((this.HEIGHT - (2 * this._1U6)));
        _local2.setStringBuilder(new _5R().setParams(_arg1));
        return (_local2);
    }


}
}//package _0P7

