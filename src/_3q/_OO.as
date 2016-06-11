// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_3q._OO

package _3q {
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _1pV.Timespan;

import flash.display.Sprite;
import flash.events.MouseEvent;

public class _OO extends Sprite {

    private static const _0pK:int = 16567065;
    private static const _hr:int = 0xFFFFFF;
    private static const _q:int = 0xB2B2B2;

    public const selected:_sy = new _sy(_OO);

    public function _OO(_arg1:Timespan) {
        this.timespan = _arg1;
        this._1D(_arg1);
        this._lF();
        this.redraw();
    }
    private var timespan:Timespan;
    private var label:_06T;
    private var _01:Boolean;
    private var _1th:Boolean;
    private var _tg:Boolean;

    public function _0Ud():Timespan {
        return (this.timespan);
    }

    public function _1dU(_arg1:Boolean):void {
        this._tg = _arg1;
        this.redraw();
    }

    private function _1D(_arg1:Timespan):void {
        this.label = new _06T().setSize(20).setColor(0xFFFFFF);
        this.label.setBold(true);
        this.label.setStringBuilder(new _5R().setParams(_arg1.getName()));
        this.label.x = 2;
        addChild(this.label);
    }

    private function _lF():void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        addEventListener(MouseEvent.CLICK, this._1Lb);
    }

    private function redraw():void {
        if (this._01) {
            this.label.setColor(_0pK);
        } else {
            if (((this._tg) || (this._1th))) {
                this.label.setColor(_hr);
            } else {
                this.label.setColor(_q);
            }
            ;
        }
        ;
    }

    private function _1Lb(_arg1:MouseEvent):void {
        this.selected.dispatch(this);
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._01 = true;
        this.redraw();
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._01 = false;
        this._1th = false;
        this.redraw();
    }

    private function onMouseDown(_arg1:MouseEvent):void {
        this._1th = true;
        this.redraw();
    }

    private function onMouseUp(_arg1:MouseEvent):void {
        this._1th = false;
        this.redraw();
    }


}
}//package _3q

