﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._1x7

package _14 {
import flash.utils.IDataInput;

public class _1x7 extends _eJ {

    public function _1x7(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var name_:String;
    public var value_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.name_ = _arg1.readUTF();
        this.value_ = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("CLIENTSTAT", "name_", "value_"));
    }


}
}//package _14-

