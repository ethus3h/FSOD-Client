// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._Qp

package _n {
import _v9._108;
import _v9._qi;

import flash.display.CapsStyle;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;

public class _Qp extends Sprite {

    private static const BEVEL:int = 4;


    public function draw(_arg1:int, _arg2:int):void {
        var _local3:_108 = new _108(_arg1, _arg2, BEVEL);
        var _local4:_qi = new _qi();
        graphics.lineStyle(1, 0xFFFFFF, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
        graphics.beginFill(0x363636);
        _local4._EN(0, 0, _local3, graphics);
        graphics.endFill();
    }


}
}//package _n-

