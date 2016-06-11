// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._U7

package _fL {
import flash.utils.IDataOutput;

public class _U7 extends _1b1 {

    public function _U7(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var time_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
    }

    override public function toString():String {
        return (formatToString("GOTOACK", "time_"));
    }


}
}//package _fL

