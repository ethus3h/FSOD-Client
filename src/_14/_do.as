// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._do

package _14 {
import flash.utils.IDataInput;

public class _do extends _eJ {

    public function _do(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var skinID:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.skinID = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("RESKIN", "skinID"));
    }


}
}//package _14-

