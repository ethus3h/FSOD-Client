﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._1gd

package _fL {
import flash.utils.IDataOutput;

public class _1gd extends _1b1 {

    public function _1gd(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var time_:int;
    public var bulletId_:uint;
    public var objectId_:int;
    public var targetId_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
        _arg1.writeByte(this.bulletId_);
        _arg1.writeInt(this.objectId_);
        _arg1.writeInt(this.targetId_);
    }

    override public function toString():String {
        return (formatToString("OTHERHIT", "time_", "bulletId_", "objectId_", "targetId_"));
    }


}
}//package _fL

