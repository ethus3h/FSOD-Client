// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cA._028

package _0cA {
import flash.events.Event;

public class _028 extends Event {

    public static const _1X8:String = "postInstantiate";
    public static const _0qi:String = "preConstruct";
    public static const _1nl:String = "postConstruct";

    public function _028(_arg1:String, _arg2:Object, _arg3:Class) {
        super(_arg1);
        this._a9 = _arg2;
        this._0tR = _arg3;
    }
    public var _a9;
    public var _0tR:Class;

    override public function clone():Event {
        return (new _028(type, this._a9, this._0tR));
    }


}
}//package _0cA

