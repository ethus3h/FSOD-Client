// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._E7

package _1EG {
import _0Mr._5R;

import _0y9._1Ds;

import _1Sm._sy;

import _1ik._rG;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _E7 extends Sprite {

    private static const _0pK:int = 16567065;
    private static const _hr:int = 0xFFFFFF;
    private static const _q:int = 0xB2B2B2;

    public const _CQ:_sy = label.textChanged;
    public const selected:_sy = new _sy(_E7);

    public function _E7(_arg1:_rG) {
        this.label = this._1D();
        super();
        this.filter = _arg1;
        this.label.setStringBuilder(new _5R().setParams(_arg1.getName()));
        addChild(this.label);
        this._lF();
    }
    public var label:_1Ds;
    private var filter:_rG;
    private var _01:Boolean;
    private var _1th:Boolean;
    private var _tg:Boolean = false;

    public function destroy():void {
        this._1Rs();
    }

    public function _1FN():_rG {
        return (this.filter);
    }

    public function setSelected(_arg1:Boolean):void {
        this._tg = _arg1;
        this.redraw();
    }

    private function _lF():void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        addEventListener(MouseEvent.CLICK, this._1Lb);
    }

    private function _1Rs():void {
        removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        removeEventListener(MouseEvent.CLICK, this._1Lb);
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

    private function _1D():_1Ds {
        var _local1:_1Ds;
        _local1 = new _1Ds();
        _local1.setBold(true).setColor(0xB3B3B3).setSize(20);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        return (_local1);
    }

    private function _1Lb(_arg1:MouseEvent):void {
        if (!this._tg) {
            this.selected.dispatch(this);
        }
        ;
    }

    private function onMouseUp(_arg1:MouseEvent):void {
        this._1th = false;
        this.redraw();
    }

    private function onMouseDown(_arg1:MouseEvent):void {
        this._1th = true;
        this.redraw();
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._01 = false;
        this._1th = false;
        this.redraw();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._01 = true;
        this.redraw();
    }


}
}//package _1EG

