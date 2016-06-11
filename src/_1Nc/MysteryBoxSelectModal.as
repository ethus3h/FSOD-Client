// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Nc.MysteryBoxSelectModal

package _1Nc {
import _08Y._sC;

import _0CT._8w;

import _0Mr._5R;

import _0Sj._05E;
import _0Sj._1l_;

import _0cA._0bz;

import _0y9._06T;

import _1N.MysteryBoxInfo;

import _OP._of;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;

public class MysteryBoxSelectModal extends Sprite {

    public static const _Uk:int = 20;

    public static var _0JX:int;
    public static var _ZZ:int;
    public static var _15o:int;
    public static var open:Boolean;
    public static var _Go:Class = _1gQ;

    public static function _cv():int {
        return ((300 + (_0JX / 2)));
    }

    private static function makeModalBackground(_arg1:int, _arg2:int):_1l_ {
        var _local3:_1l_ = new _1l_();
        _local3.draw(_arg1, _arg2, _1l_._Ct);
        return (_local3);
    }

    public function MysteryBoxSelectModal():void {
        this.box_ = new Sprite();
        super();
        _0JX = 385;
        _ZZ = 60;
        _15o = 77;
        var _local1:_0bz = _8w._1Sz();
        var _local2:_of = _local1.getInstance(_of);
        this._0hn = _local2._1F8();
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        addChild(this.box_);
        this._0lP();
        this._18F();
        open = true;
    }
    private var _Mt:_05E;
    private var box_:Sprite;
    private var _0hn:Object;
    private var titleString:String = "MysteryBoxSelectModal.titleString";

    public function _4D(_arg1:String, _arg2:int, _arg3:int):_06T {
        var _local4:_06T = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth((_0JX - (_Uk * 2)));
        _local4.setBold(true);
        _local4.setStringBuilder(new _5R().setParams(_arg1));
        _local4.setWordWrap(true);
        _local4.setMultiLine(true);
        _local4.setAutoSize(TextFieldAutoSize.CENTER);
        _local4.setHorizontalAlign(TextFormatAlign.CENTER);
        _local4.filters = [new DropShadowFilter(0, 0, 0)];
        _local4.x = _arg2;
        _local4.y = _arg3;
        return (_local4);
    }

    private function _18F():void {
        this.box_.x = ((600 / 2) - (_0JX / 2));
        this.box_.y = ((WebMain._0b2.stageHeight / 2) - (_ZZ / 2));
    }

    private function _0lP():void {
        var _local1:MysteryBoxInfo;
        var _local2:DisplayObject;
        var _local5:int;
        var _local6:MysteryBoxSelectEntry;
        for each (_local1 in this._0hn) {
            _ZZ = (_ZZ + _15o);
        }
        ;
        _local2 = new _Go();
        _local2.width = (_0JX + 1);
        _local2.height = (_ZZ - 25);
        _local2.y = 27;
        _local2.alpha = 0.95;
        this.box_.addChild(_local2);
        this.box_.addChild(makeModalBackground(_0JX, _ZZ));
        this._Mt = _sC._1JY(_0JX);
        this.box_.addChild(this._Mt);
        this.box_.addChild(this._4D(this.titleString, _Uk, 6).setSize(18));
        var _local3:Number = 20;
        var _local4:Number = 50;
        _local5 = 0;
        for each (_local1 in this._0hn) {
            if (_local5 == 6) break;
            _local6 = new MysteryBoxSelectEntry(_local1);
            _local6.x = (x + _local3);
            _local6.y = (y + _local4);
            _local4 = (_local4 + _15o);
            this.box_.addChild(_local6);
            _local5++;
        }
        ;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        open = false;
    }


}
}//package _1Nc

