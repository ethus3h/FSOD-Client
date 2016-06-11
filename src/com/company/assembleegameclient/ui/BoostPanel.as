// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.BoostPanel

package com.company.assembleegameclient.ui {
import _07g._2v;

import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.filters.DropShadowFilter;
import flash.utils.Timer;

public class BoostPanel extends Sprite {

    public const _1Zk:_sy = new _sy();
    private const SPACE:uint = 40;

    public function BoostPanel(_arg1:Player) {
        this.player = _arg1;
        this._0j0();
        this._me();
        this._Ok();
    }
    private var timer:Timer;
    private var player:Player;
    private var _W8:_0ss;
    private var _0Qw:_0ss;
    private var _1dr:int;

    private function _Ok():void {
        this.timer = new Timer(1000);
        this.timer.addEventListener(TimerEvent.TIMER, this.update);
        this.timer.start();
    }

    private function _1NK(_arg1:_0ss, _arg2:int):void {
        if (_arg1) {
            if (_arg2) {
                _arg1.setTime(_arg2);
            } else {
                this._1Mh();
                this._me();
            }
            ;
        }
        ;
    }

    private function _0j0():void {
        var _local2:Bitmap;
        var _local3:_06T;
        var _local1:BitmapData = TextureRedrawer.redraw(AssetLibrary._Rb("lofiInterfaceBig", 22), 20, true, 0);
        _local2 = new Bitmap(_local1);
        _local2.x = -3;
        _local2.y = -1;
        addChild(_local2);
        _local3 = new _06T().setSize(16).setColor(0xFF00);
        _local3.setBold(true);
        _local3.setStringBuilder(new _5R().setParams(_TG._El));
        _local3.setMultiLine(true);
        _local3.mouseEnabled = true;
        _local3.filters = [new DropShadowFilter(0, 0, 0)];
        _local3.x = 20;
        _local3.y = 4;
        addChild(_local3);
    }

    private function _Gr():void {
        graphics.clear();
        graphics.lineStyle(2, 0xFFFFFF);
        graphics.beginFill(0x333333);
        graphics.drawRoundRect(0, 0, 150, (height + 5), 10);
        this._1Zk.dispatch();
    }

    private function _me():void {
        this._1dr = 25;
        var _local1:_2v = new _2v();
        this._141(_local1);
        this._TJ(_local1);
        if (_local1.isEmpty()) {
            this._Gr();
        } else {
            _local1.complete.addOnce(this._Gr);
        }
        ;
    }

    private function _TJ(_arg1:_2v):void {
        if (this.player._1XI) {
            this._W8 = this._104(new _5R().setParams(_TG._catch), this.player._1XI);
            this._05Z(_arg1, this._W8);
        }
        ;
    }

    private function _141(_arg1:_2v):void {
        var _local2:String;
        if (this.player._kw) {
            _local2 = "1.5x";
            this._0Qw = this._104(new _5R().setParams(_TG._1QD, {rate: _local2}), this.player._kw);
            this._05Z(_arg1, this._0Qw);
        }
        ;
    }

    private function _05Z(_arg1:_2v, _arg2:_0ss):void {
        _arg1.push(_arg2.textChanged);
        addChild(_arg2);
        _arg2.y = this._1dr;
        _arg2.x = 10;
        this._1dr = (this._1dr + this.SPACE);
    }

    private function _1Mh():void {
        if (((this._W8) && (this._W8.parent))) {
            removeChild(this._W8);
        }
        ;
        if (((this._0Qw) && (this._0Qw.parent))) {
            removeChild(this._0Qw);
        }
        ;
        this._W8 = null;
        this._0Qw = null;
    }

    private function _104(_arg1:_1vN, _arg2:int):_0ss {
        var _local3:_0ss = new _0ss();
        _local3._1Hq(_arg1);
        _local3.setTime(_arg2);
        return (_local3);
    }

    private function update(_arg1:TimerEvent):void {
        this._1NK(this._W8, this.player._1XI);
        this._1NK(this._0Qw, this.player._kw);
    }


}
}//package com.company.assembleegameclient.ui

