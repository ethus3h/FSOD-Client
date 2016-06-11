// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Nc.MysteryBoxSelectEntry

package _1Nc {
import _0CT._8w;

import _0Mr._1M;
import _0Mr._5R;

import _0Sj._1l_;

import _0y9._06T;

import _1N.MysteryBoxInfo;

import __Nj._M4;

import _n._19y;

import com.company.assembleegameclient.util.Currency;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.ColorMatrixFilter;
import flash.filters.DropShadowFilter;
import flash.geom.Point;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;
import flash.utils.getTimer;

public class MysteryBoxSelectEntry extends Sprite {

    private const buyButton:_19y = new _19y("", 16, 0, Currency.INVALID);
    private const newString:String = "MysteryBoxSelectEntry.newString";
    private const onSaleString:String = "MysteryBoxSelectEntry.onSaleString";
    private const saleEndString:String = "MysteryBoxSelectEntry.saleEndString";
    public static var _1qa:Class = _0oT;

    public function MysteryBoxSelectEntry(_arg1:MysteryBoxInfo):void {
        this._0v8 = new _1qa();
        this._0v8.y = -5;
        this._0v8.width = (MysteryBoxSelectModal._0JX - 5);
        this._0v8.height = (MysteryBoxSelectModal._15o - 8);
        addChild(this._0v8);
        var _local2:DisplayObject = new _1qa();
        _local2.y = 0;
        _local2.width = (MysteryBoxSelectModal._0JX - 5);
        _local2.height = ((MysteryBoxSelectModal._15o - 8) + 5);
        _local2.alpha = 0;
        addChild(_local2);
        this._BI = _arg1;
        var _local3:_06T = this._4D(this._BI.title, 74, 18, 20, true);
        addChild(_local3);
        this._0WD();
        this._0bb();
        if (this._BI._17I()) {
            this.buyButton.setPrice(int(this._BI._0OD), int(this._BI._0BJ));
        } else {
            this.buyButton.setPrice(int(this._BI._GU), int(this._BI._03c));
        }
        ;
        this.buyButton.x = (MysteryBoxSelectModal._0JX - 100);
        this.buyButton.y = 16;
        this.buyButton._1pD = 70;
        this.buyButton.addEventListener(MouseEvent.CLICK, this._0hJ);
        addChild(this.buyButton);
        this._1O6 = this._BI._1O6;
        this._71 = this._BI._71;
        if (this._1O6 == null) {
            this._BI.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this._4X);
        } else {
            this._0kS();
        }
        ;
        if (this._71 == null) {
            this._BI._09X.contentLoaderInfo.addEventListener(Event.COMPLETE, this._DF);
        } else {
            this._06V();
        }
        ;
        addEventListener(MouseEvent.ROLL_OVER, this._oY);
        addEventListener(MouseEvent.ROLL_OUT, this._1DZ);
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }
    public var _BI:MysteryBoxInfo;
    private var _1O6:DisplayObject;
    private var _YP:_1l_;
    private var _71:DisplayObject;
    private var _j:_06T;
    private var _1fC:_06T;
    private var _1Ua:Boolean = false;
    private var _07b:Boolean = false;
    private var _0v8:DisplayObject;

    public function _4D(_arg1:String, _arg2:int, _arg3:int, _arg4:int = 12, _arg5:Boolean = false):_06T {
        var _local6:_06T = new _06T().setSize(_arg4).setColor(0xFFFFFF).setTextWidth((MysteryBoxSelectModal._0JX - 185));
        _local6.setBold(true);
        if (_arg5) {
            _local6.setStringBuilder(new _1M(_arg1));
        } else {
            _local6.setStringBuilder(new _5R().setParams(_arg1));
        }
        ;
        _local6.setWordWrap(true);
        _local6.setMultiLine(true);
        _local6.setAutoSize(TextFieldAutoSize.LEFT);
        _local6.setHorizontalAlign(TextFormatAlign.LEFT);
        _local6.filters = [new DropShadowFilter(0, 0, 0)];
        _local6.x = _arg2;
        _local6.y = _arg3;
        return (_local6);
    }

    private function _0WD():void {
        if (this._BI.isNew()) {
            this._j = this._4D(this.newString, 74, 0).setColor(0xFFDE00);
            addChild(this._j);
        }
        ;
    }

    private function _0bb():void {
        var _local1:_5R;
        var _local2:_06T;
        if (this._BI._17I()) {
            this._1fC = this._4D(this.onSaleString, int(((320 * MysteryBoxSelectModal._0JX) / 415)), 0).setColor(0xFF00);
            addChild(this._1fC);
            _local1 = this._BI._0yz();
            _local2 = this._4D("", (int(((250 * MysteryBoxSelectModal._0JX) / 415)) - 32), 46).setColor(0xFF0000);
            _local2.setStringBuilder(_local1);
            addChild(_local2);
        }
        ;
    }

    private function _0kS():void {
        if (this._1O6 == null) {
            return;
        }
        ;
        this._1O6.width = 48;
        this._1O6.height = 48;
        this._1O6.x = 14;
        this._1O6.y = 6;
        addChild(this._1O6);
    }

    private function _06V():void {
        var _local3:Array;
        var _local4:ColorMatrixFilter;
        if (this._71 == null) {
            return;
        }
        ;
        var _local1:int = 8;
        this._71.width = (291 - _local1);
        this._71.height = ((598 - (_local1 * 2)) - 2);
        var _local2:Point = this.globalToLocal(new Point(((MysteryBoxSelectModal._cv() + 1) + 14), (2 + _local1)));
        this._71.x = _local2.x;
        this._71.y = _local2.y;
        if (((this._1Ua) && (!(this._07b)))) {
            this._07b = true;
            addChild(this._71);
            this._YP = new _1l_();
            this._YP.draw(this._71.width, (this._71.height + 2), _1l_._1c8);
            this._YP.x = this._71.x;
            this._YP.y = (this._71.y - 1);
            addChild(this._YP);
            _local3 = [3.0742, -1.8282, -0.246, 0, 50, -0.9258, 2.1718, -0.246, 0, 50, -0.9258, -1.8282, 3.754, 0, 50, 0, 0, 0, 1, 0];
            _local4 = new ColorMatrixFilter(_local3);
            this._0v8.filters = [_local4];
        }
        ;
    }

    private function _Wc():void {
        if (this._07b) {
            removeChild(this._YP);
            removeChild(this._71);
            this._07b = false;
            this._0v8.filters = [];
        }
        ;
    }

    private function _oY(_arg1:MouseEvent):void {
        this._1Ua = true;
        this._06V();
    }

    private function _1DZ(_arg1:MouseEvent):void {
        this._1Ua = false;
        this._Wc();
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local2:Number = (1.05 + (0.05 * Math.sin((getTimer() / 200))));
        if (this._j) {
            this._j.scaleX = _local2;
            this._j.scaleY = _local2;
        }
        ;
        if (this._1fC) {
            this._1fC.scaleX = _local2;
            this._1fC.scaleY = _local2;
        }
        ;
    }

    private function _4X(_arg1:Event):void {
        this._BI.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this._4X);
        this._1O6 = DisplayObject(this._BI.loader);
        this._0kS();
    }

    private function _DF(_arg1:Event):void {
        this._BI._09X.contentLoaderInfo.removeEventListener(Event.COMPLETE, this._DF);
        this._71 = DisplayObject(this._BI._09X);
        this._06V();
    }

    private function _0hJ(_arg1:MouseEvent):void {
        var _local2:_M4 = _8w._1Sz().getInstance(_M4);
        var _local3:MysteryBoxRollModal = new MysteryBoxRollModal(this._BI);
        _local3._1lZ = MysteryBoxSelectModal(parent.parent);
        _local2.dispatch(_local3);
    }


}
}//package _1Nc

