﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0qF

package _14 {
import flash.utils.IDataInput;

public class _0qF extends _eJ {

    public function _0qF(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var objectId_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.objectId_ = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("QUESTOBJID", "objectId_"));
    }


}
}//package _14-

