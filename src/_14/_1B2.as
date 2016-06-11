// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._1B2

package _14 {
import flash.utils.IDataInput;

public class _1B2 extends _eJ {

    public function _1B2(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var serial_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.serial_ = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("PING", "serial_"));
    }


}
}//package _14-

