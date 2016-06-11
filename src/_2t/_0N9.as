// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_2-t._0N9

package _2t {
import flash.events.Event;

public class _0N9 extends Event {

    public static const SET_RANK:String = "SET_RANK";
    public static const REMOVE_MEMBER:String = "REMOVE_MEMBER";

    public function _0N9(_arg1:String, _arg2:String, _arg3:int = -1) {
        super(_arg1, true);
        this.name_ = _arg2;
        this._02V = _arg3;
    }
    public var name_:String;
    public var _02V:int;

}
}//package _2-t

