// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._0lk

package _fL {
import flash.utils.IDataOutput;

public class _0lk extends _1b1 {

    public function _0lk(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var time_:int;
    public var bulletId_:uint;
    public var objectId_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
        _arg1.writeByte(this.bulletId_);
        _arg1.writeInt(this.objectId_);
    }

    override public function toString():String {
        return (formatToString("SQUAREHIT", "time_", "bulletId_", "objectId_"));
    }


}
}//package _fL

