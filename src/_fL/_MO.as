﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._MO

package _fL {
import flash.utils.IDataOutput;

public class _MO extends _1b1 {

    public function _MO(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var name_:String;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeUTF(this.name_);
    }

    override public function toString():String {
        return (formatToString("CREATEGUILD", "name_"));
    }


}
}//package _fL

