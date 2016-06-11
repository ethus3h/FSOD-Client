// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1eq

package _0t {
import _0Mc.Frame;
import _0Mc._eR;

import flash.events.Event;
import flash.events.MouseEvent;

public class _1eq extends Frame {

    public function _1eq(_arg1:String) {
        super("Tile properties", "Cancel", "Save", null);
        this._0dR = new _eR("Object Name", false);
        if (_arg1 != null) {
            this._0dR.inputText_.text = _arg1;
        }
        ;
        _0qq(this._0dR);
        _4j.addEventListener(MouseEvent.CLICK, this.onCancel);
        _01h.addEventListener(MouseEvent.CLICK, this._1qs);
    }
    public var _0dR:_eR;

    private function onCancel(_arg1:MouseEvent):void {
        dispatchEvent(new Event(Event.CANCEL));
    }

    private function _1qs(_arg1:MouseEvent):void {
        dispatchEvent(new Event(Event.COMPLETE));
    }


}
}//package _0t-

