// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0gF._094

package _0gF {
import flash.events.Event;

public class _094 extends Event {

    public static const _Pu:String = "GUILDRESULTEVENT";

    public function _094(_arg1:Boolean, _arg2:String, _arg3:Object) {
        super(_Pu);
        this.success_ = _arg1;
        this._0XJ = _arg2;
        this._0XE = _arg3;
    }
    public var success_:Boolean;
    public var _0XJ:String;
    public var _0XE:Object;

}
}//package _0gF

