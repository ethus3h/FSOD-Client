// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_G8._0EU

package _G8 {
import _0Mr._5R;

import _0y9._06T;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _0EU extends Sprite {

    private static const _Cq:int = 16;

    public function _0EU(_arg1:String) {
        this.text_ = _arg1;
        this._1Ws = new _06T().setSize(_Cq).setColor(0xB3B3B3);
        this._1Ws.setBold(true);
        this._1Ws.setStringBuilder(new _5R().setParams(_arg1));
        this._1Ws.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        addChild(this._1Ws);
        this.selected_ = false;
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }
    public var text_:String;
    protected var _1Ws:_06T;
    protected var selected_:Boolean;

    public function setSelected(_arg1:Boolean):void {
        this.selected_ = _arg1;
        this.redraw(false);
    }

    private function redraw(_arg1:Boolean):void {
        this._1Ws.setSize(_Cq);
        this._1Ws.setColor(this.getColor(_arg1));
    }

    private function getColor(_arg1:Boolean):uint {
        if (this.selected_) {
            return (0xFFC800);
        }
        ;
        return (((_arg1) ? 0xFFFFFF : 0xB3B3B3));
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this.redraw(true);
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this.redraw(false);
    }


}
}//package _G8

