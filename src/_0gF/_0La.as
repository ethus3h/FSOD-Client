// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0gF._0La

package _0gF {
import _0oL.Server;

import flash.events.Event;
import flash.utils.ByteArray;

public class _0La extends Event {

    public static const RECONNECT:String = "RECONNECT_EVENT";

    public function _0La(_arg1:Server, _arg2:int, _arg3:Boolean, _arg4:int, _arg5:int, _arg6:ByteArray, _arg7:Boolean) {
        super(RECONNECT);
        this.server_ = _arg1;
        this.gameId_ = _arg2;
        this._1HQ = _arg3;
        this.charId_ = _arg4;
        this.keyTime_ = _arg5;
        this.key_ = _arg6;
        this.isFromArena_ = _arg7;
    }
    public var server_:Server;
    public var gameId_:int;
    public var _1HQ:Boolean;
    public var charId_:int;
    public var keyTime_:int;
    public var key_:ByteArray;
    public var isFromArena_:Boolean;

    override public function clone():Event {
        return (new _0La(this.server_, this.gameId_, this._1HQ, this.charId_, this.keyTime_, this.key_, this.isFromArena_));
    }

    override public function toString():String {
        return (formatToString(RECONNECT, "server_", "gameId_", "charId_", "keyTime_", "key_", "isFromArena_"));
    }


}
}//package _0gF

