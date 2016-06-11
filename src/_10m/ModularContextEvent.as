// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_10m.ModularContextEvent

package _10m {
import _1PM._Ld;

import flash.events.Event;

public class ModularContextEvent extends Event {

    public static const _1qG:String = "contextAdd";
    public static const _1kc:String = "contextRemove";

    public function ModularContextEvent(_arg1:String, _arg2:_Ld) {
        super(_arg1, true, true);
        this._0rd = _arg2;
    }
    private var _0rd:_Ld;

    public function get context():_Ld {
        return (this._0rd);
    }

    override public function clone():Event {
        return (new ModularContextEvent(type, this.context));
    }

    override public function toString():String {
        return (formatToString("ModularContextEvent", "context"));
    }


}
}//package _10m

