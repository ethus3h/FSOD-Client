// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1l_

package _0Sj {
import _v9._108;
import _v9._qi;

import flash.display.CapsStyle;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;

public class _1l_ extends Sprite {

    public static const HORIZONTAL_DIVISION:String = "HORIZONTAL_DIVISION";
    public static const VERTICAL_DIVISION:String = "VERTICAL_DIVISION";
    private static const BEVEL:int = 4;
    public static const _Oq:int = 0;
    public static const _Ct:int = 1;
    public static const _1c8:int = 2;
    public static const _QM:int = 3;


    public function draw(_arg1:int, _arg2:int, _arg3:int = 0):void {
        var _local4:_108 = new _108(_arg1, _arg2, BEVEL);
        var _local5:_qi = new _qi();
        graphics.lineStyle(1, 0xFFFFFF, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
        if (_arg3 == _Ct) {
            graphics.lineStyle(1, 0x363636, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
            graphics.beginFill(0x363636, 1);
            _local5._EN(1, 1, new _108((_arg1 - 2), 29, BEVEL), graphics);
            graphics.endFill();
            graphics.beginFill(0x363636, 1);
            graphics.drawRect(1, 15, (_arg1 - 2), 15);
            graphics.endFill();
            graphics.lineStyle(2, 0xFFFFFF, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
            graphics.beginFill(0x363636, 0);
            _local5._EN(0, 0, _local4, graphics);
            graphics.endFill();
        } else {
            if (_arg3 == _1c8) {
                graphics.lineStyle(2, 0xFFFFFF, 1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3);
                graphics.beginFill(0x363636, 0);
                _local5._EN(0, 0, _local4, graphics);
                graphics.endFill();
            } else {
                if (_arg3 == _Oq) {
                    graphics.beginFill(0x363636);
                    _local5._EN(0, 0, _local4, graphics);
                    graphics.endFill();
                } else {
                    if (_arg3 == _QM) {
                        graphics.beginFill(0);
                        _local5._EN(0, 0, _local4, graphics);
                        graphics.endFill();
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }

    public function _0ho(_arg1:String, _arg2:int):void {
        if (_arg1 == HORIZONTAL_DIVISION) {
            this._1vy(_arg2);
        } else {
            if (_arg1 == VERTICAL_DIVISION) {
                this._13O(_arg2);
            }
            ;
        }
        ;
    }

    private function _1vy(_arg1:int):void {
        graphics.lineStyle();
        graphics.endFill();
        graphics.moveTo(1, _arg1);
        graphics.beginFill(0x666666, 1);
        graphics.drawRect(1, _arg1, (width - 2), 2);
    }

    private function _13O(_arg1:int):void {
        graphics.lineStyle();
        graphics.moveTo(_arg1, 1);
        graphics.lineStyle(2, 0x666666);
        graphics.lineTo(_arg1, (height - 1));
    }


}
}//package _0Sj

