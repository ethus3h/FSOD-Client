// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._ri

package _14 {
import flash.utils.IDataInput;

public class _ri extends _eJ {

    public function _ri(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var type:int;
    public var text:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.type = _arg1.readInt();
        this.text = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("GLOBAL_NOTIFICATION", "type", "text"));
    }


}
}//package _14-

