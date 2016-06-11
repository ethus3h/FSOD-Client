// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1iA._08v

package _1iA {
import _1Sm._sy;

import flash.display.DisplayObject;
import flash.events.Event;

public class _08v {

    public function _08v(_arg1:DisplayObject) {
        this.target = _arg1;
        _arg1.addEventListener(Event.ADDED_TO_STAGE, this._aY);
    }
    private var target:DisplayObject;
    private var _20C:_sy;
    private var _z:_sy;

    public function get _08g():_sy {
        return ((this._20C = ((this._20C) || (new _sy()))));
    }

    public function get _2F():_sy {
        return ((this._z = ((this._z) || (new _sy()))));
    }

    private function _aY(_arg1:Event):void {
        this.target.removeEventListener(Event.ADDED_TO_STAGE, this._aY);
        this.target.addEventListener(Event.REMOVED_FROM_STAGE, this._Fd);
        ((this._20C) && (this._20C.dispatch()));
    }

    private function _Fd(_arg1:Event):void {
        this.target.addEventListener(Event.ADDED_TO_STAGE, this._aY);
        this.target.removeEventListener(Event.REMOVED_FROM_STAGE, this._Fd);
        ((this._z) && (this._z.dispatch()));
    }


}
}//package _1iA

