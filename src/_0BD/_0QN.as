// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0BD._0QN

package _0BD {
import flash.display.Sprite;

public class _0QN {

    private static const _05A:Number = 95;
    public static const _0PY:Number = 25;
    private static const _iv:Number = 0.4;
    private static const _3n:Number = 0;
    public static const _1F6:uint = 28;


    public static function _1x3():Sprite {
        var _local1:Number = _05A;
        var _local2:Number = _0PY;
        return (_S(_local1, _local2));
    }

    public static function _S(_arg1:Number, _arg2:Number):Sprite {
        var _local3:Sprite = new Sprite();
        return (_0mt(_local3, _arg1, _arg2));
    }

    private static function _0mt(_arg1:Sprite, _arg2:Number, _arg3:Number):Sprite {
        _arg1.graphics.beginFill(_3n, _iv);
        _arg1.graphics.drawRoundRect(0, 0, _arg2, _arg3, 12, 12);
        _arg1.graphics.endFill();
        return (_arg1);
    }


}
}//package _0BD

