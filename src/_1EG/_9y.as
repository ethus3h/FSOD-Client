// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._9y

package _1EG {
import _0Mr._1M;
import _0Mr._5R;

import _0y9._1Ds;

import _1Sm._sy;

import _6u._TG;

import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.filters.DropShadowFilter;
import flash.utils.Timer;

public class _9y extends Sprite {

    public const close:_sy = new _sy();
    private const _0DW:Sprite = new Sprite();
    private const _1Ed:_1Ds = _h8();
    private const _D3:_1M = new _1M();
    private const _K6:_1Ds = _Ul();
    private const _pa:Timer = new Timer(1000);
    private const _1JU:Sprite = new Sprite();
    private const _1Gg = _1DE();
    private const _F2:_1Ds = _sY();
    private const _12a:_1Ds = _0WI();
    private const _1sD:_1Ds = _D2();
    private const _1Tn:Timer = new Timer(1500, 1);

    public function _9y() {
        this._j3 = _xs;
        super();
    }
    private var _j3:Class;
    private var count:int = 5;
    private var waveNumber:int = -1;

    public function init():void {
        mouseChildren = false;
        mouseEnabled = false;
        this._pa.addEventListener(TimerEvent.TIMER, this._1aB);
        this._pa.start();
    }

    public function destroy():void {
        this._pa.stop();
        this._pa.removeEventListener(TimerEvent.TIMER, this._1aB);
        this._1Tn.stop();
        this._1Tn.removeEventListener(TimerEvent.TIMER, this._oV);
    }

    public function show():void {
        addChild(this._0DW);
        this.center();
    }

    public function _sF(_arg1:int):void {
        this.waveNumber = _arg1;
        this._12a.setStringBuilder(new _1M(this.waveNumber.toString()));
        this._12a.x = ((this._1Gg.width / 2) - (this._12a.width / 2));
    }

    private function center():void {
        x = (300 - (width / 2));
        y = ((contains(this._0DW)) ? 138 : 87.5);
    }

    private function _h8():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(20).setBold(true).setColor(0xCCCCCC);
        _local1.setStringBuilder(new _5R().setParams(_TG._0be));
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
        this._0DW.addChild(_local1);
        return (_local1);
    }

    private function _Ul():_1Ds {
        var _local1:_1Ds;
        _local1 = new _1Ds();
        _local1.setSize(42).setBold(true).setColor(0xCCCCCC);
        _local1.setStringBuilder(this._D3.setString(this.count.toString()));
        _local1.y = this._1Ed.height;
        _local1.x = ((this._1Ed.width / 2) - (_local1.width / 2));
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
        this._0DW.addChild(_local1);
        return (_local1);
    }

    private function _sY():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(18).setBold(true).setColor(16567065);
        _local1.setStringBuilder(new _5R().setParams(_TG._17N));
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
        _local1.x = ((this._1Gg.width / 2) - (_local1.width / 2));
        _local1.y = (((this._1Gg.height / 2) - (_local1.height / 2)) - 15);
        this._1JU.addChild(_local1);
        return (_local1);
    }

    private function _0WI():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(40).setBold(true).setColor(16567065);
        _local1.y = ((this._F2.y + this._F2.height) - 5);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
        this._1JU.addChild(_local1);
        return (_local1);
    }

    private function _1DE() {
        var _local1:* = new this._j3();
        this._1JU.addChild(_local1);
        return (_local1);
    }

    private function _D2():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(32).setBold(true).setColor(0xB3B3B3);
        _local1.setStringBuilder(new _5R().setParams(_TG._1Ac));
        _local1.y = ((this._1Gg.y + this._1Gg.height) - 5);
        _local1.x = ((this._1Gg.width / 2) - (_local1.width / 2));
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 2)];
        this._1JU.addChild(_local1);
        return (_local1);
    }

    private function _1aB(_arg1:TimerEvent):void {
        if (this.count > 1) {
            this.count--;
            this._K6.setStringBuilder(this._D3.setString(this.count.toString()));
            this._K6.x = ((this._1Ed.width / 2) - (this._K6.width / 2));
        } else {
            removeChild(this._0DW);
            addChild(this._1JU);
            this._pa.removeEventListener(TimerEvent.TIMER, this._1aB);
            this._1Tn.addEventListener(TimerEvent.TIMER, this._oV);
            this._1Tn.start();
            this.center();
        }
        ;
    }

    private function _oV(_arg1:TimerEvent):void {
        this._1Tn.removeEventListener(TimerEvent.TIMER, this._oV);
        this.close.dispatch();
    }


}
}//package _1EG

