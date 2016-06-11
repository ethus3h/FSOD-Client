// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0Gz

package _14 {
import _11j._1ST;

import flash.utils.IDataInput;

public class _0Gz extends _eJ {

    public function _0Gz(_arg1:uint, _arg2:Function) {
        this.pos_ = new _1ST();
        super(_arg1, _arg2);
    }
    public var objectId_:int;
    public var pos_:_1ST;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.objectId_ = _arg1.readInt();
        this.pos_.parseFromInput(_arg1);
    }

    override public function toString():String {
        return (formatToString("GOTO", "objectId_", "pos_"));
    }


}
}//package _14-

