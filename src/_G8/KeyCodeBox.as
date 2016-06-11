// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_G8.KeyCodeBox

package _G8 {
import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.util._1N;

import flash.display.Graphics;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.utils.getTimer;

public class KeyCodeBox extends Sprite {

    public static const WIDTH:int = 80;
    public static const HEIGHT:int = 32;

    public function KeyCodeBox(_arg1:uint) {
        this._0e9 = _arg1;
        this.selected_ = false;
        this._RI = false;
        this._fw = new _06T().setSize(16).setColor(0xFFFFFF);
        this._fw.setBold(true);
        this._fw.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        this._fw.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        addChild(this._fw);
        this._QO();
        this._lO();
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }
    public var _0e9:uint;
    public var selected_:Boolean;
    public var _RI:Boolean;
    private var _fw:_06T = null;

    public function value():uint {
        return (this._0e9);
    }

    public function _JQ(_arg1:uint):void {
        if (_arg1 == this._0e9) {
            return;
        }
        ;
        this._0e9 = _arg1;
        this._1DY();
        dispatchEvent(new Event(Event.CHANGE, true));
    }

    public function _1DY():void {
        this._1Nq(new _1M(_1N._Dq[this._0e9]));
    }

    private function _QO():void {
        var _local1:Graphics = graphics;
        _local1.clear();
        _local1.lineStyle(2, ((((this.selected_) || (this._RI))) ? 0xB3B3B3 : 0x444444));
        _local1.beginFill(0x333333);
        _local1.drawRect(0, 0, WIDTH, HEIGHT);
        _local1.endFill();
        _local1.lineStyle();
    }

    private function _1Nq(_arg1:_1vN):void {
        this._fw.setStringBuilder(_arg1);
        this._fw.x = (WIDTH / 2);
        this._fw.y = (HEIGHT / 2);
        this._QO();
    }

    private function _lO():void {
        this._RI = false;
        removeEventListener(Event.ENTER_FRAME, this._0Ap);
        if (stage != null) {
            removeEventListener(KeyboardEvent.KEY_DOWN, this._nA);
            stage.removeEventListener(MouseEvent.MOUSE_DOWN, this._07D, true);
        }
        ;
        this._1DY();
        addEventListener(MouseEvent.CLICK, this._1Bd);
    }

    private function _0jr():void {
        if (stage == null) {
            return;
        }
        ;
        stage.stageFocusRect = false;
        stage.focus = this;
        this._RI = true;
        removeEventListener(MouseEvent.CLICK, this._1Bd);
        addEventListener(Event.ENTER_FRAME, this._0Ap);
        addEventListener(KeyboardEvent.KEY_DOWN, this._nA);
        stage.addEventListener(MouseEvent.MOUSE_DOWN, this._07D, true);
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this.selected_ = true;
        this._QO();
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this.selected_ = false;
        this._QO();
    }

    private function _1Bd(_arg1:MouseEvent):void {
        this._0jr();
    }

    private function _0Ap(_arg1:Event):void {
        var _local2:int = (getTimer() / 400);
        var _local3 = ((_local2 % 2) == 0);
        if (_local3) {
            this._1Nq(new _1M(""));
        } else {
            this._1Nq(new _5R().setParams(_TG._0JS));
        }
        ;
    }

    private function _nA(_arg1:KeyboardEvent):void {
        _arg1.stopImmediatePropagation();
        this._0e9 = _arg1.keyCode;
        this._lO();
        dispatchEvent(new Event(Event.CHANGE, true));
    }

    private function _07D(_arg1:MouseEvent):void {
        this._lO();
    }


}
}//package _G8

