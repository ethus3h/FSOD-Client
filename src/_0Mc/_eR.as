// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._eR

package _0Mc {
import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import com.company.ui._V2;

import flash.display.CapsStyle;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;

public class _eR extends Sprite {

    public static const HEIGHT:int = 88;

    public function _eR(_arg1:String, _arg2:Boolean) {
        this.nameText_ = new _06T().setSize(18).setColor(0xB3B3B3);
        this.nameText_.setBold(true);
        this.nameText_.setStringBuilder(new _5R().setParams(_arg1));
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.nameText_);
        this.inputText_ = new _V2(20, 0xB3B3B3, true, 238, 30);
        this.inputText_.y = 30;
        this.inputText_.x = 6;
        this.inputText_.border = false;
        this.inputText_.displayAsPassword = _arg2;
        this.inputText_._1B5();
        addChild(this.inputText_);
        graphics.lineStyle(2, 0x454545, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
        graphics.beginFill(0x333333, 1);
        graphics.drawRect(0, this.inputText_.y, 238, 30);
        graphics.endFill();
        graphics.lineStyle();
        this.inputText_.addEventListener(Event.CHANGE, this._0ch);
        this.errorText_ = new _06T().setSize(12).setColor(16549442);
        this.errorText_.y = (this.inputText_.y + 32);
        this.errorText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.errorText_);
    }
    public var nameText_:_06T;
    public var inputText_:_V2;
    public var errorText_:_06T;

    public function text():String {
        return (this.inputText_.text);
    }

    public function _044(_arg1:String, _arg2:Object = null):void {
        this.errorText_.setStringBuilder(new _5R().setParams(_arg1, _arg2));
    }

    public function _1p9():void {
        this.errorText_.setStringBuilder(new _1M(""));
    }

    public function _0ch(_arg1:Event):void {
        this.errorText_.setStringBuilder(new _1M(""));
    }


}
}//package _0Mc

