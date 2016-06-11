// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_11j._8p

package _11j {
import flash.utils.IDataInput;
import flash.utils.IDataOutput;

public class _8p {

    public var objectId_:int;
    public var _18N:int;
    public var objectType_:int;


    public function parseFromInput(_arg1:IDataInput):void {
        this.objectId_ = _arg1.readInt();
        this._18N = _arg1.readUnsignedByte();
        this.objectType_ = _arg1.readShort();
    }

    public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.objectId_);
        _arg1.writeByte(this._18N);
        _arg1.writeShort(this.objectType_);
    }

    public function toString():String {
        return (((((("objectId_: " + this.objectId_) + " slotId_: ") + this._18N) + " objectType_: ") + this.objectType_));
    }


}
}//package _11j

