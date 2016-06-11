// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0P7._0U1

package _0P7 {
import _0Mr._5R;

import _0y9._1Ds;

import _6u._TG;

import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.filters.DropShadowFilter;
import flash.utils.Timer;

public class _0U1 extends Sprite {

    private const _DM:Number = 1;
    private const _0Im:Number = 7;

    public function _0U1() {
        this._0lJ = this._sd();
        this._xn = this._const();
        this._6A = new _5R();
        super();
        addChild(this._xn);
        this._xn.setStringBuilder(this._6A.setParams(_TG._19g, {time: this._1Fg()}));
        this._1NK = new Timer(1000);
        this._1NK.addEventListener(TimerEvent.TIMER, this._tu);
        this._1NK.start();
    }
    private var _0lJ:Number;
    private var _1NK:Timer;
    private var _xn:_1Ds;
    private var _6A:_5R;

    private function _1Fg():String {
        var _local1:int = this._0lJ;
        var _local2:int = Math.floor((_local1 / 86400000));
        _local1 = (_local1 % 86400000);
        var _local3:int = Math.floor((_local1 / 3600000));
        _local1 = (_local1 % 3600000);
        var _local4:int = Math.floor((_local1 / 60000));
        _local1 = (_local1 % 60000);
        var _local5:int = Math.floor((_local1 / 1000));
        var _local6 = "";
        if (_local2 > 0) {
            _local6 = (((((_local2 + " days, ") + _local3) + " hours, ") + _local4) + " minutes");
        } else {
            _local6 = (((((_local3 + " hours, ") + _local4) + " minutes, ") + _local5) + " seconds");
        }
        ;
        return (_local6);
    }

    private function _sd():Number {
        var _local1:Date = new Date();
        var _local2:Date = this._0RL();
        return ((_local2.getTime() - _local1.getTime()));
    }

    private function _0RL():Date {
        var _local1:Date = new Date();
        if ((((_local1.dayUTC == this._DM)) && ((_local1.hoursUTC < this._0Im)))) {
            _local1.setUTCHours((this._0Im - _local1.hoursUTC));
            return (_local1);
        }
        ;
        _local1.setUTCHours(7);
        _local1.setUTCMinutes(0);
        _local1.setUTCSeconds(0);
        _local1.setUTCMilliseconds(0);
        _local1.setUTCDate((_local1.dateUTC + 1));
        while (_local1.dayUTC != this._DM) {
            _local1.setUTCDate((_local1.dateUTC + 1));
        }
        ;
        return (_local1);
    }

    private function _const():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(14).setColor(16567065).setBold(true);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        return (_local1);
    }

    private function _tu(_arg1:TimerEvent):void {
        this._0lJ = (this._0lJ - 1000);
        this._xn.setStringBuilder(this._6A.setParams(_TG._19g, {time: this._1Fg()}));
    }


}
}//package _0P7

