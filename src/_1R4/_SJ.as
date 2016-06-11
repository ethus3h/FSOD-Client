// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1R4._SJ

package _1R4 {
import _04g._1vd;

import _07g.TitleView;

import _0CT._8w;

import _0Mr._5R;

import _0od._0Wl;
import _0od._187;

import _0y9._06T;

import _DO.GTween;

import __Nj._M4;

import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.MovieClip;
import flash.display.Sprite;
import flash.events.Event;
import flash.text.TextFieldAutoSize;

import kabam.rotmg.assets.model.Animation;

public class _SJ extends Sprite {

    public static const _19a:int = 5;
    public static const _209:Number = 0.58;

    public function _SJ():void {
        this._1Iu();
        this._0Bf();
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var screen:DisplayObjectContainer;
    private var _1LQ:_06T;
    private var _NA:Vector.<DisplayObject>;
    private var _0qA:MovieClip;
    private var _wU:String;
    private var _0nG:int;
    private var _WU:Animation;

    public function _0Um(_arg1:String, _arg2:int):void {
        this._wU = ((_arg1) ? _arg1 : "");
        this._0nG = _arg2;
        this._G7();
    }

    public function _0fr(_arg1:Animation):void {
        this._WU = _arg1;
        addChild(_arg1);
        _arg1.start();
        _arg1.x = ((399.5 - (_arg1.width * 0.5)) + 5);
        _arg1.y = (245.85 - (_arg1.height * 0.5));
    }

    public function disable():void {
        this._0dg();
    }

    public function _1II():void {
        ((parent) && (parent.removeChild(this)));
    }

    private function _1Iu():void {
        var _local1:Sprite = new Sprite();
        _local1.graphics.beginFill(0);
        _local1.graphics.drawRect(0, 0, 800, 600);
        _local1.graphics.endFill();
        addChild(_local1);
    }

    private function _0Bf():void {
        var _local1:MovieClip;
        this.screen = new MapLoadingScreen();
        _local1 = (this.screen.getChildByName("mapNameContainer") as MovieClip);
        this._1LQ = new _06T().setSize(30).setColor(0xFFFFFF);
        this._1LQ.setBold(true);
        this._1LQ.setAutoSize(TextFieldAutoSize.CENTER);
        this._1LQ.x = _local1.x;
        this._1LQ.y = _local1.y;
        this.screen.addChild(this._1LQ);
        this._0qA = (this.screen.getChildByName("difficulty_indicators") as MovieClip);
        this._NA = new Vector.<DisplayObject>(_19a);
        var _local2:int = 1;
        while (_local2 <= _19a) {
            this._NA[(_local2 - 1)] = this._0qA.getChildByName(("indicator_" + _local2));
            _local2++;
        }
        ;
        addChild(this.screen);
        this._G7();
    }

    private function _G7():void {
        var _local1:int;
        if (this.screen) {
            this._1LQ.setStringBuilder(new _5R().setParams(this._wU));
            if (this._0nG <= 0) {
                this.screen.getChildByName("bgGroup").visible = false;
                this._0qA.visible = false;
            } else {
                this.screen.getChildByName("bgGroup").visible = true;
                this._0qA.visible = true;
                _local1 = 0;
                while (_local1 < _19a) {
                    this._NA[_local1].visible = (_local1 < this._0nG);
                    _local1++;
                }
                ;
            }
            ;
        }
        ;
    }

    private function _0dg():void {
        if (TitleView._1Bs) {
            _8w._1Sz().getInstance(_M4).dispatch(new _1vd());
            TitleView._1Bs = false;
        } else {
            if (TitleView._ut) {
                _8w._1Sz().getInstance(_M4).dispatch(new _187());
                TitleView._ut = false;
            } else {
                if (TitleView._ug) {
                    _8w._1Sz().getInstance(_M4).dispatch(new _187(true));
                    TitleView._ug = false;
                } else {
                    if (TitleView._0zZ) {
                        _8w._1Sz().getInstance(_M4).dispatch(new _0Wl());
                        TitleView._0zZ = false;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        var _local1:GTween = new GTween(this, _209, {alpha: 0});
        _local1.onComplete = this._02p;
        mouseEnabled = false;
        mouseChildren = false;
    }

    private function _02p(_arg1:GTween):void {
        ((parent) && (parent.removeChild(this)));
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this._WU.dispose();
    }


}
}//package _1R4

