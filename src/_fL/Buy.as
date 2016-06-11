// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL.Buy

package _fL {
import flash.utils.IDataOutput;

public class Buy extends _1b1 {

    public function Buy(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var objectId_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.objectId_);
    }

    override public function toString():String {
        return (formatToString("BUY", "objectId_"));
    }


}
}//package _fL

