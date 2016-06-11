// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0AI._000

package _0AI {
import _0CT._8w;

import _6u._00t;

import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.text.TextField;
import flash.utils.Timer;

public class _000 extends Sprite {

    private const WIDTH:int = 280;
    private const HEIGHT:int = 25;
    private const _0bp:int = 2;
    private const _1k1:String = "                                                                               ";
    private const _hM:String = "                                                                                ";
    private static var _1Cd:String = "";

    public static function _8N(_arg1:String):void {
        _000._1Cd = _arg1;
    }

    public function _000() {
        this._0Zt = this._10B();
        this.timer = new Timer(0.17, 0);
        this._QO();
        this.align();
        this.visible = false;
        if (_000._1Cd != "") {
            this._t9(_000._1Cd);
            _000._1Cd = "";
        }
        ;
    }
    public var _0Zt:TextField;
    private var timer:Timer;
    private var _v8:uint = 0;
    private var _1CK:int = 0;

    public function _t9(_arg1:String):void {
        if (this.visible == false) {
            this.visible = true;
        } else {
            return;
        }
        ;
        this._0Zt.text = ((this._1k1 + _arg1) + this._hM);
        this.timer.addEventListener(TimerEvent.TIMER, this._1WD);
        this._v8 = 1;
        this.timer.start();
    }

    private function align():void {
        this._0Zt.x = 5;
        this._0Zt.y = 2;
    }

    private function _QO():void {
        graphics.beginFill(0, 0.4);
        graphics.drawRoundRect(0, 0, this.WIDTH, this.HEIGHT, 12, 12);
        graphics.endFill();
    }

    private function _10B():TextField {
        var _local1:TextField;
        _local1 = new TextField();
        var _local2:_00t = _8w._1Sz().getInstance(_00t);
        _local2.apply(_local1, 16, 0xFFFFFF, false);
        _local1.selectable = false;
        _local1.doubleClickEnabled = false;
        _local1.mouseEnabled = false;
        _local1.mouseWheelEnabled = false;
        _local1.text = "";
        _local1.wordWrap = false;
        _local1.multiline = false;
        _local1.selectable = false;
        _local1.width = (this.WIDTH - 10);
        _local1.height = 25;
        addChild(_local1);
        return (_local1);
    }

    private function _1WD(_arg1:TimerEvent):void {
        this.timer.stop();
        if (this._0Zt.scrollH < this._0Zt.maxScrollH) {
            this._1CK++;
            this._0Zt.scrollH = this._1CK;
            this.timer.start();
        } else {
            if ((((this._v8 >= 1)) && ((this._v8 < this._0bp)))) {
                this._v8++;
                this._1CK = 0;
                this._0Zt.scrollH = 0;
                this.timer.start();
            } else {
                this._v8 = 0;
                this._1CK = 0;
                this._0Zt.scrollH = 0;
                this.timer.removeEventListener(TimerEvent.TIMER, this._1WD);
                this.visible = false;
            }
            ;
        }
        ;
    }


}
}//package _0AI

