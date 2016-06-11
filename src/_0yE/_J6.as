// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yE._J6

package _0yE {
import _1qi._1K8;

import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.geom.Point;
import flash.utils.Timer;

public class _J6 extends _2P {

    private static const _yf:uint = 250;
    private static const _1Sj:int = 3;

    public function _J6(_arg1:int, _arg2:_1K8, _arg3:Boolean) {
        super(_arg1, _arg2);
        mouseChildren = false;
        this._0Y7 = new Timer(_yf, 1);
        this._0Y7.addEventListener(TimerEvent.TIMER_COMPLETE, this._1aH);
        this._1Fw(_arg3);
    }
    private var _0Y7:Timer;
    private var _rt:Point;
    private var _1xH:Boolean;
    private var _0ky:Boolean;

    public function _1Fw(_arg1:Boolean):void {
        if (_arg1) {
            addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        } else {
            removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        }
        ;
    }

    public function _76():DisplayObject {
        return (_Vc.dropTarget);
    }

    protected function beginDragCallback():void {
    }

    protected function endDragCallback():void {
    }

    private function _0XT(_arg1:Boolean):void {
        this._1xH = _arg1;
        if (this._1xH) {
            this._0Y7.reset();
            this._0Y7.start();
        } else {
            this._0Y7.stop();
        }
        ;
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._0XT(false);
    }

    private function onMouseUp(_arg1:MouseEvent):void {
        if (this._0ky) {
            return;
        }
        ;
        if (_arg1.shiftKey) {
            this._0XT(false);
            dispatchEvent(new _110(_110.ITEM_SHIFT_CLICK, this));
        } else {
            if (_arg1.ctrlKey) {
                this._0XT(false);
                dispatchEvent(new _110(_110.ITEM_CTRL_CLICK, this));
            } else {
                if (!this._1xH) {
                    this._0XT(true);
                } else {
                    this._0XT(false);
                    dispatchEvent(new _110(_110.ITEM_DOUBLE_CLICK, this));
                }
                ;
            }
            ;
        }
        ;
    }

    private function onMouseDown(_arg1:MouseEvent):void {
        this._Wl(_arg1);
    }

    private function _Wl(_arg1:MouseEvent):void {
        this._rt = new Point(_arg1.stageX, _arg1.stageY);
        addEventListener(MouseEvent.MOUSE_MOVE, this._nt);
        addEventListener(MouseEvent.MOUSE_OUT, this._TZ);
        addEventListener(MouseEvent.MOUSE_UP, this._TZ);
    }

    private function _TZ(_arg1:MouseEvent):void {
        removeEventListener(MouseEvent.MOUSE_MOVE, this._nt);
        removeEventListener(MouseEvent.MOUSE_OUT, this._TZ);
        removeEventListener(MouseEvent.MOUSE_UP, this._TZ);
    }

    private function _nt(_arg1:MouseEvent):void {
        var _local2:Number = (_arg1.stageX - this._rt.x);
        var _local3:Number = (_arg1.stageY - this._rt.y);
        var _local4:Number = Math.sqrt(((_local2 * _local2) + (_local3 * _local3)));
        if (_local4 > _1Sj) {
            this._TZ(null);
            this._0XT(false);
            this._086(_arg1);
        }
        ;
    }

    private function _1aH(_arg1:TimerEvent):void {
        this._0XT(false);
        dispatchEvent(new _110(_110.ITEM_CLICK, this));
    }

    private function _086(_arg1:MouseEvent):void {
        this._0ky = true;
        stage.addChild(_Vc);
        _Vc.startDrag(true);
        _Vc.x = _arg1.stageX;
        _Vc.y = _arg1.stageY;
        _Vc.addEventListener(MouseEvent.MOUSE_UP, this._08e);
        this.beginDragCallback();
    }

    private function _08e(_arg1:MouseEvent):void {
        this._0ky = false;
        _Vc.stopDrag();
        _Vc.removeEventListener(MouseEvent.MOUSE_UP, this._08e);
        dispatchEvent(new _110(_110.ITEM_MOVE, this));
        this.endDragCallback();
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this._0XT(false);
        this._TZ(null);
        if (this._0ky) {
            _Vc.stopDrag();
        }
        ;
    }


}
}//package _0yE

