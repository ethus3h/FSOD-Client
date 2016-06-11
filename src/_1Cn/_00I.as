// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._00I

package _1Cn {
import flash.events.Event;

public class _00I extends Event {

    public static const _0zS:String = "bindingEmpty";

    public function _00I(_arg1:String) {
        super(_arg1);
    }

    override public function clone():Event {
        return (new _00I(type));
    }


}
}//package _1Cn

