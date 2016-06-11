// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yE._110

package _0yE {
import flash.events.Event;

public class _110 extends Event {

    public static const ITEM_MOVE:String = "ITEM_MOVE";
    public static const ITEM_DOUBLE_CLICK:String = "ITEM_DOUBLE_CLICK";
    public static const ITEM_SHIFT_CLICK:String = "ITEM_SHIFT_CLICK";
    public static const ITEM_CLICK:String = "ITEM_CLICK";
    public static const ITEM_HOTKEY_PRESS:String = "ITEM_HOTKEY_PRESS";
    public static const ITEM_CTRL_CLICK:String = "ITEM_CTRL_CLICK";

    public function _110(_arg1:String, _arg2:_J6) {
        super(_arg1, true);
        this.tile = _arg2;
    }
    public var tile:_J6;

}
}//package _0yE

