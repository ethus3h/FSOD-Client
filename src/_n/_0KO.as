// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._0KO

package _n {
import _1Sm._sy;

import _v9._108;
import _v9._qi;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

final class _0KO extends Sprite {

    public static const WIDTH:int = _14L.WIDTH;//20
    public static const BEVEL:int = _14L.BEVEL;//4
    public static const _1U6:int = _14L._1U6;//0

    public const _1kl:_sy = new _sy(int);
    public const _1sA:_sy = new _sy(Number);
    public const rect:_108 = new _108((WIDTH - (_1U6 * 2)), 0, BEVEL);
    private const _1FZ:_qi = new _qi();

    private var _0ek:Number;
    private var _01:Boolean;
    private var _1th:Boolean;


    public function redraw():void {
        var _local1:int = ((((this._01) || (this._1th))) ? 16767876 : 0xCCCCCC);
        graphics.clear();
        graphics.beginFill(_local1);
        this._1FZ._EN(_1U6, 0, this.rect, graphics);
        graphics.endFill();
    }

    public function _lF():void {
        addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        if (((parent) && (parent.parent))) {
            parent.parent.addEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
        } else {
            if (WebMain._0b2) {
                WebMain._0b2.addEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
            }
            ;
        }
        ;
    }

    public function _1Rs():void {
        removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        if (((parent) && (parent.parent))) {
            parent.parent.removeEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
        } else {
            if (WebMain._0b2) {
                WebMain._0b2.removeEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
            }
            ;
        }
        ;
        this.onMouseUp();
    }

    protected function _0YS(_arg1:MouseEvent):void {
        if (_arg1.delta > 0) {
            this._1sA.dispatch(-0.25);
        } else {
            if (_arg1.delta < 0) {
                this._1sA.dispatch(0.25);
            }
            ;
        }
        ;
    }

    private function onMouseDown(_arg1:MouseEvent = null):void {
        this._1th = true;
        this._0ek = (parent.mouseY - y);
        if (stage != null) {
            stage.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }
        ;
        addEventListener(Event.ENTER_FRAME, this._Lt);
        this.redraw();
    }

    private function onMouseUp(_arg1:MouseEvent = null):void {
        this._1th = false;
        if (stage != null) {
            stage.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }
        ;
        removeEventListener(Event.ENTER_FRAME, this._Lt);
        this.redraw();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._01 = true;
        this.redraw();
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._01 = false;
        this.redraw();
    }

    private function _Lt(_arg1:Event):void {
        this._1kl.dispatch(int((parent.mouseY - this._0ek)));
    }


}
}//package _n-

