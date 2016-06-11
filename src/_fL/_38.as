// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._38

package _fL {
import flash.utils.IDataOutput;

public class _38 extends _1b1 {

    public function _38(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var objectId_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.objectId_);
    }

    override public function toString():String {
        return (formatToString("USEPORTAL", "objectId_"));
    }


}
}//package _fL

