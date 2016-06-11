// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._Kv

package _14 {
import flash.utils.IDataInput;

public class _Kv extends _eJ {

    public function _Kv(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var objectId_:int;
    public var charId_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.objectId_ = _arg1.readInt();
        this.charId_ = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("CREATE_SUCCESS", "objectId_", "charId_"));
    }


}
}//package _14-

