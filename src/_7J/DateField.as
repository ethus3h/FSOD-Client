// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_7J.DateField

package _7J {
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _1iA._9Q;

import _6u._TG;

import com.company.ui._V2;

import flash.display.CapsStyle;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.FocusEvent;
import flash.events.TextEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class DateField extends Sprite {

    private static const _1QI:uint = 0x333333;
    private static const _0GY:uint = 16549442;
    private static const _xi:uint = 0x454545;
    private static const _0Qo:uint = 0xB3B3B3;
    private static const _zZ:String = "1234567890";
    private static const _0VN:uint = 0x555555;

    public function DateField() {
        this._1jO = new _9Q();
        this._1gP = new Date().getFullYear();
        this.label = new _06T().setSize(18).setColor(0xB3B3B3);
        this.label.setBold(true);
        this.label.setStringBuilder(new _5R().setParams(name));
        this.label.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.label);
        this._KY = new _V2(20, _0Qo, true, 35, 30);
        this._KY.restrict = _zZ;
        this._KY.maxChars = 2;
        this._KY.y = 30;
        this._KY.x = 6;
        this._KY.border = false;
        this._KY._1B5();
        this._KY.addEventListener(TextEvent.TEXT_INPUT, this._0ks);
        this._KY.addEventListener(FocusEvent.FOCUS_OUT, this._15l);
        this._KY.addEventListener(Event.CHANGE, this._7z);
        this._zd = this._1s(this._KY, _TG._1Q8);
        addChild(this._zd);
        addChild(this._KY);
        this.days = new _V2(20, _0Qo, true, 35, 30);
        this.days.restrict = _zZ;
        this.days.maxChars = 2;
        this.days.y = 30;
        this.days.x = 63;
        this.days.border = false;
        this.days._1B5();
        this.days.addEventListener(TextEvent.TEXT_INPUT, this._1LI);
        this.days.addEventListener(FocusEvent.FOCUS_OUT, this._0TQ);
        this.days.addEventListener(Event.CHANGE, this._Y3);
        this._06C = this._1s(this.days, _TG._1ka);
        addChild(this._06C);
        addChild(this.days);
        this._f7 = new _V2(20, _0Qo, true, 55, 30);
        this._f7.restrict = _zZ;
        this._f7.maxChars = 4;
        this._f7.y = 30;
        this._f7.x = 118;
        this._f7.border = false;
        this._f7._1B5();
        this._f7.restrict = _zZ;
        this._f7.addEventListener(TextEvent.TEXT_INPUT, this._xg);
        this._f7.addEventListener(Event.CHANGE, this._v3);
        this._1xq = this._1s(this._f7, _TG._1QW);
        addChild(this._1xq);
        addChild(this._f7);
        this._WB(false);
    }
    public var label:_06T;
    public var days:_V2;
    public var _KY:_V2;
    public var _f7:_V2;
    private var _06C:_06T;
    private var _zd:_06T;
    private var _1xq:_06T;
    private var _1gP:int;
    private var _1jO:_9Q;

    public function setTitle(_arg1:String):void {
        this.label.setStringBuilder(new _5R().setParams(_arg1));
    }

    public function _WB(_arg1:Boolean):void {
        this._pe(this._KY, 0, 0, _arg1);
        this._pe(this.days, 0, 0, _arg1);
        this._pe(this._f7, 0, 0, _arg1);
    }

    public function _u6():Boolean {
        var _local1:int = int(this._KY.text);
        var _local2:int = int(this.days.text);
        var _local3:int = int(this._f7.text);
        return (this._1jO._u6(_local1, _local2, _local3, 100));
    }

    public function _IT():String {
        var _local1:String = this._02e(this._KY.text, 2);
        var _local2:String = this._02e(this.days.text, 2);
        var _local3:String = this._02e(this._f7.text, 4);
        return (((((_local1 + "/") + _local2) + "/") + _local3));
    }

    public function _0EL():_sy {
        return (this.label.textChanged);
    }

    private function _pe(_arg1:_V2, _arg2:int, _arg3:int, _arg4:Boolean):void {
        var _local5:uint = ((_arg4) ? _0GY : _xi);
        graphics.lineStyle(2, _local5, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
        graphics.beginFill(_1QI, 1);
        graphics.drawRect(((_arg1.x - _arg2) - 5), (_arg1.y - _arg3), (_arg1.width + (_arg2 * 2)), (_arg1.height + (_arg3 * 2)));
        graphics.endFill();
        graphics.lineStyle();
    }

    private function _1s(_arg1:_V2, _arg2:String):_06T {
        var _local3:_06T = new _06T().setSize(16).setColor(_0VN);
        _local3.setTextWidth((_arg1.width + 4)).setTextHeight(_arg1.height);
        _local3.x = (_arg1.x - 6);
        _local3.y = (_arg1.y + 3);
        _local3.setStringBuilder(new _5R().setParams(_arg2));
        _local3.setAutoSize(TextFieldAutoSize.CENTER);
        return (_local3);
    }

    private function _0FR(_arg1:String):int {
        while (_arg1.length < 4) {
            _arg1 = (_arg1 + "0");
        }
        ;
        return (int(_arg1));
    }

    private function _02e(_arg1:String, _arg2:int):String {
        while (_arg1.length < _arg2) {
            _arg1 = ("0" + _arg1);
        }
        ;
        return (_arg1);
    }

    private function _0ks(_arg1:TextEvent):void {
        var _local2:String = (this._KY.text + _arg1.text);
        var _local3:int = int(_local2);
        if (((!((_local2 == "0"))) && (!(this._1jO._10i(_local3))))) {
            _arg1.preventDefault();
        }
        ;
    }

    private function _15l(_arg1:FocusEvent):void {
        var _local2:int = int(this._KY.text);
        if ((((_local2 < 10)) && (!((this.days.text == ""))))) {
            this._KY.text = ("0" + _local2.toString());
        }
        ;
    }

    private function _7z(_arg1:Event):void {
        this._zd.visible = !(this._KY.text);
    }

    private function _1LI(_arg1:TextEvent):void {
        var _local2:String = (this.days.text + _arg1.text);
        var _local3:int = int(_local2);
        if (((!((_local2 == "0"))) && (!(this._1jO._0x5(_local3))))) {
            _arg1.preventDefault();
        }
        ;
    }

    private function _0TQ(_arg1:FocusEvent):void {
        var _local2:int = int(this.days.text);
        if ((((_local2 < 10)) && (!((this.days.text == ""))))) {
            this.days.text = ("0" + _local2.toString());
        }
        ;
    }

    private function _Y3(_arg1:Event):void {
        this._06C.visible = !(this.days.text);
    }

    private function _xg(_arg1:TextEvent):void {
        var _local2:String = (this._f7.text + _arg1.text);
        var _local3:int = this._0FR(_local2);
        if (_local3 > this._1gP) {
            _arg1.preventDefault();
        }
        ;
    }

    private function _v3(_arg1:Event):void {
        this._1xq.visible = !(this._f7.text);
    }


}
}//package _7J

