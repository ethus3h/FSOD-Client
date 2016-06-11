// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._0jN

package com.company.assembleegameclient.ui {
import _0Mr._5R;

import _0y9._06T;

import _1TG._0Yn;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _0jN extends Sprite {

    public function _0jN(_arg1:int, _arg2:Boolean, _arg3:String) {
        this.text_ = this.makeText().setSize(_arg1).setColor(0xFFFFFF);
        this.text_.setBold(_arg2);
        this.text_.setStringBuilder(new _5R().setParams(_arg3));
        addChild(this.text_);
        this.text_.filters = [new DropShadowFilter(0, 0, 0)];
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        addEventListener(MouseEvent.CLICK, this._1rC);
    }
    public var text_:_06T;
    public var _0Tt:uint = 0xFFFFFF;

    public function _1aa():void {
        removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
    }

    public function setAutoSize(_arg1:String):void {
        this.text_.setAutoSize(_arg1);
    }

    public function _1wK(_arg1:String):void {
        this.text_.setStringBuilder(new _5R().setParams(_arg1));
        this._1bP(0xB3B3B3);
        mouseEnabled = false;
        mouseChildren = false;
    }

    public function setColor(_arg1:uint):void {
        this.text_.setColor(_arg1);
    }

    public function _1bP(_arg1:uint):void {
        this._0Tt = _arg1;
        this.setColor(this._0Tt);
    }

    protected function makeText():_06T {
        return (new _06T());
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this.setColor(16768133);
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this.setColor(this._0Tt);
    }

    private function _1rC(_arg1:MouseEvent):void {
        _0Yn.play("button_click");
    }


}
}//package com.company.assembleegameclient.ui

