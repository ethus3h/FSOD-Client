﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._1X5

package _fL {
import flash.utils.IDataOutput;

public class _1X5 extends _1b1 {

    public function _1X5(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var charId_:int;
    public var isFromArena_:Boolean;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.charId_);
        _arg1.writeBoolean(this.isFromArena_);
    }

    override public function toString():String {
        return (formatToString("LOAD", "charId_", "isFromArena_"));
    }


}
}//package _fL

