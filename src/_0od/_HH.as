// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._HH

package _0od {
import com.company.ui._V2;

import flash.display.CapsStyle;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;

public class _HH extends Sprite {

    protected static const _1QI:uint = 0x333333;
    protected static const _0GY:uint = 16549442;
    protected static const _xi:uint = 0x454545;
    protected static const _0Qo:uint = 0xB3B3B3;


    public function getHeight():Number {
        return (0);
    }

    protected function _pe(_arg1:_V2, _arg2:int, _arg3:int, _arg4:Boolean):void {
        var _local5:uint = ((_arg4) ? _0GY : _xi);
        graphics.lineStyle(2, _local5, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
        graphics.beginFill(_1QI, 1);
        graphics.drawRect(((_arg1.x - _arg2) - 5), (_arg1.y - _arg3), (_arg1.width + (_arg2 * 2)), (_arg1.height + (_arg3 * 2)));
        graphics.endFill();
        graphics.lineStyle();
    }


}
}//package _0od

