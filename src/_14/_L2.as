﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._L2

package _14 {
import flash.utils.IDataInput;

public class _L2 extends _eJ {

    public function _L2(_arg1:uint, _arg2:Function) {
        this.accountIds_ = new Vector.<String>();
        super(_arg1, _arg2);
    }
    public var accountListId_:int;
    public var accountIds_:Vector.<String>;
    public var lockAction_:int = -1;

    override public function parseFromInput(_arg1:IDataInput):void {
        var _local2:int;
        this.accountListId_ = _arg1.readInt();
        this.accountIds_.length = 0;
        var _local3:int = _arg1.readShort();
        _local2 = 0;
        while (_local2 < _local3) {
            this.accountIds_.push(_arg1.readUTF());
            _local2++;
        }
        ;
        this.lockAction_ = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("ACCOUNTLIST", "accountListId_", "accountIds_", "lockAction_"));
    }


}
}//package _14-

