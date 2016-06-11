// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._YA

package _1Cn {
import flash.display.DisplayObject;
import flash.events.Event;

public class _YA extends Event {

    public static const _ER:String = "configureView";

    public function _YA(_arg1:String, _arg2:DisplayObject = null) {
        super(_arg1, true, true);
        this._0Eu = _arg2;
    }
    private var _0Eu:DisplayObject;

    public function get view():DisplayObject {
        return (this._0Eu);
    }

    override public function clone():Event {
        return (new _YA(type, this._0Eu));
    }


}
}//package _1Cn

