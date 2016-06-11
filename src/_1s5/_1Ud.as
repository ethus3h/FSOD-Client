// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1s5._1Ud

package _1s5 {
import _1i0._1PV;
import _1i0._GV;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class _1Ud implements _1q5 {

    public var tooltip:Sprite;
    private var _1Q0:_GV;
    private var showToolTip:_1PV;
    private var displayObject:DisplayObject;


    public function _0qm(_arg1:DisplayObject):void {
        this.displayObject = _arg1;
        this.displayObject.addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        this.displayObject.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        this.displayObject.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    public function _0TB():void {
        if (this.displayObject != null) {
            this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            this.displayObject = null;
        }
        ;
    }

    public function _0oI():DisplayObject {
        return (this.displayObject);
    }

    public function _1Tg(_arg1:_1PV):void {
        this.showToolTip = _arg1;
    }

    public function _1ml():_1PV {
        return (this.showToolTip);
    }

    public function _Md(_arg1:_GV):void {
        this._1Q0 = _arg1;
    }

    public function _0ec():_GV {
        return (this._1Q0);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        if (((!((this.tooltip == null))) && (!((this.tooltip.parent == null))))) {
            this._1Q0.dispatch();
        }
        ;
        this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._1Q0.dispatch();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this.showToolTip.dispatch(this.tooltip);
    }


}
}//package _1s5

