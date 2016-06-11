// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._1XT

package _14 {
import flash.utils.IDataInput;

public class _1XT extends _eJ {

    public function _1XT(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var ownerId_:int;
    public var soundId_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.ownerId_ = _arg1.readInt();
        this.soundId_ = _arg1.readUnsignedByte();
    }

    override public function toString():String {
        return (formatToString("PLAYSOUND", "ownerId_", "soundId_"));
    }


}
}//package _14-

