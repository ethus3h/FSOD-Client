// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._0FV

package _fL {
import flash.utils.IDataOutput;

public class __0FV extends _1b1 {

    public function __0FV(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var time_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
    }

    override public function toString():String {
        return (formatToString("SHOOTACK", "time_"));
    }


}
}//package _fL

