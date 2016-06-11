// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1YS

package _0Sj {
import _0Mr._5R;

import _0ld.CaretakerQueryDialog;

import _0y9._06T;

import _1Sm._sy;

import _v9._108;
import _v9._qi;

import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;

public class _1YS extends Sprite {

    private static const WIDTH:int = (CaretakerQueryDialog.WIDTH - 40);//234
    private static const HEIGHT:int = 40;
    private static const BEVEL:int = 2;
    private static const OUT:uint = 0x5C5C5C;
    private static const _0Il:uint = 0x7F7F7F;

    private const _1FZ:_qi = new _qi();
    private const rect:_108 = new _108(WIDTH, HEIGHT, BEVEL);
    private const background:Shape = _0kH();
    private const _0bV:_06T = _0DS();
    public const textChanged:_sy = _0bV.textChanged;

    public function _1YS(_arg1:String, _arg2:String) {
        this.info = _arg2;
        this._0bV.setStringBuilder(new _5R().setParams(_arg1));
        this._0w8();
    }
    public var info:String;

    private function _0kH():Shape {
        var _local1:Shape = new Shape();
        this._QO(_local1, OUT);
        addChild(_local1);
        return (_local1);
    }

    private function _QO(_arg1:Shape, _arg2:uint):void {
        _arg1.graphics.clear();
        _arg1.graphics.beginFill(_arg2);
        this._1FZ._EN(0, 0, this.rect, _arg1.graphics);
        _arg1.graphics.endFill();
    }

    private function _0DS():_06T {
        var _local1:_06T = new _06T().setSize(16).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE).setPosition((WIDTH / 2), (HEIGHT / 2));
        _local1.mouseEnabled = false;
        addChild(_local1);
        return (_local1);
    }

    private function _0w8():void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._QO(this.background, _0Il);
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._QO(this.background, OUT);
    }


}
}//package _0Sj

