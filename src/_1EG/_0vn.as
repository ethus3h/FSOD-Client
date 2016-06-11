// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._0vn

package _1EG {
import _0Mr._1M;

import _0y9._1Ds;

import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.filters.DropShadowFilter;
import flash.utils.Timer;

public class _0vn extends Sprite {

    private const _co:_1Ds = _rj();
    private const _0o1:_1M = new _1M();
    private const timer:Timer = new Timer(1000);

    private var _0Di:Number = 0;


    public function start():void {
        this._1NK(null);
        this.timer.addEventListener(TimerEvent.TIMER, this._1NK);
        this.timer.start();
    }

    public function stop():void {
        this.timer.removeEventListener(TimerEvent.TIMER, this._1NK);
        this.timer.stop();
    }

    private function _rj():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(24).setBold(true).setColor(0xFFFFFF);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        addChild(_local1);
        return (_local1);
    }

    private function _1NK(_arg1:TimerEvent):void {
        var _local2:int = (this._0Di / 60);
        var _local3:int = (this._0Di % 60);
        var _local4:String = (((_local2 < 10)) ? "0" : "");
        _local4 = (_local4 + (_local2 + ":"));
        _local4 = (_local4 + (((_local3 < 10)) ? "0" : ""));
        _local4 = (_local4 + _local3);
        this._co.setStringBuilder(this._0o1.setString(_local4));
        this._0Di++;
    }


}
}//package _1EG

