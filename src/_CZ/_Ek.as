// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CZ._Ek

package _CZ {
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _Ek extends Sprite {

    public function _Ek(_arg1:String, _arg2:int, _arg3:int) {
        this._1DH = new _5R();
        super();
        this.w_ = _arg2;
        this.h_ = _arg3;
        this.name_ = _arg1;
        mouseChildren = false;
        this.nameText_ = new _06T().setSize(16).setColor(0xB3B3B3).setBold(true);
        this.nameText_.setStringBuilder(this._1DH.setParams(_arg1));
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.nameText_);
        this._QO(0x363636);
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
    }
    public var w_:int;
    public var h_:int;
    private var name_:String;
    private var nameText_:_06T;
    private var _1DH:_5R;

    public function _0EL():_sy {
        return (this.nameText_.textChanged);
    }

    public function getValue():String {
        return (this.name_);
    }

    public function setValue(_arg1:String):void {
        this.name_ = _arg1;
        this.nameText_.setStringBuilder(this._1DH.setParams(_arg1));
    }

    public function setWidth(_arg1:int):void {
        this.w_ = _arg1;
        this.nameText_.x = ((this.w_ / 2) - (this.nameText_.width / 2));
        this.nameText_.y = ((this.h_ / 2) - (this.nameText_.height / 2));
        this._QO(0x363636);
    }

    private function _QO(_arg1:uint):void {
        graphics.clear();
        graphics.lineStyle(2, 0x545454);
        graphics.beginFill(_arg1, 1);
        graphics.drawRect(0, 0, this.w_, this.h_);
        graphics.endFill();
        graphics.lineStyle();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._QO(0x565656);
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._QO(0x363636);
    }


}
}//package _CZ

