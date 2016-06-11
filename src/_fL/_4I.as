// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._4I

package _fL {
import flash.utils.IDataOutput;

public class _4I extends _1b1 {

    public function _4I(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var serial_:int;
    public var time_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.serial_);
        _arg1.writeInt(this.time_);
    }

    override public function toString():String {
        return (formatToString("PONG", "serial_", "time_"));
    }


}
}//package _fL

