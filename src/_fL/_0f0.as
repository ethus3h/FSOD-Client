// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._0f0

package _fL {
import _11j._1ST;

import flash.utils.IDataOutput;

public class _0f0 extends _1b1 {

    public function _0f0(_arg1:uint, _arg2:Function) {
        this.startingPos_ = new _1ST();
        super(_arg1, _arg2);
    }
    public var time_:int;
    public var bulletId_:uint;
    public var containerType_:int;
    public var startingPos_:_1ST;
    public var angle_:Number;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
        _arg1.writeByte(this.bulletId_);
        _arg1.writeShort(this.containerType_);
        this.startingPos_.writeToOutput(_arg1);
        _arg1.writeFloat(this.angle_);
    }

    override public function toString():String {
        return (formatToString("PLAYERSHOOT", "time_", "bulletId_", "containerType_", "startingPos_", "angle_"));
    }


}
}//package _fL

