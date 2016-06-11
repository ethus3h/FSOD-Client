// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1kR

package _0Sj {
import _0Mr._5R;

import _0y9._06T;

import flash.display.DisplayObjectContainer;
import flash.display.Sprite;
import flash.text.TextFieldAutoSize;

public class _1kR {

    private static const _Pi:int = 14;


    public static function _0gu():DisplayObjectContainer {
        var _local1:Sprite = new Sprite();
        _local1.graphics.beginFill(0x535353);
        _local1.graphics.drawRoundRect(0, 0, 222, 40, 10, 10);
        _local1.graphics.endFill();
        return (_local1);
    }

    public static function makeText():_06T {
        var _local1:_06T = new _06T();
        _local1.setStringBuilder(new _5R().setParams("FusionStrength.text")).setAutoSize(TextFieldAutoSize.LEFT).setColor(FusionStrength._C0);
        _01r(_local1);
        return (_local1);
    }

    public static function _0Yu():_06T {
        var _local1:_06T = new _06T().setAutoSize(TextFieldAutoSize.RIGHT);
        _01r(_local1);
        return (_local1);
    }

    private static function _01r(_arg1:_06T):void {
        _arg1.setVerticalAlign(_06T.MIDDLE).setSize(_Pi).setBold(true);
    }


}
}//package _0Sj

