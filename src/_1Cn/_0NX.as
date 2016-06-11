// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._0NX

package _1Cn {
import flash.display.DisplayObjectContainer;
import flash.events.Event;

public class _0NX extends Event {

    public static const _1Ko:String = "containerAdd";
    public static const _yv:String = "containerRemove";
    public static const _0dn:String = "rootContainerAdd";
    public static const _9r:String = "rootContainerRemove";

    public function _0NX(_arg1:String, _arg2:DisplayObjectContainer) {
        super(_arg1);
        this._1Wj = _arg2;
    }
    private var _1Wj:DisplayObjectContainer;

    public function get container():DisplayObjectContainer {
        return (this._1Wj);
    }

    override public function clone():Event {
        return (new _0NX(type, this._1Wj));
    }


}
}//package _1Cn

