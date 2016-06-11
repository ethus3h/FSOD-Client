// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL.Create

package _fL {
import flash.utils.IDataOutput;

public class Create extends _1b1 {

    public function Create(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var classType:int;
    public var skinType:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeShort(this.classType);
        _arg1.writeShort(this.skinType);
    }

    override public function toString():String {
        return (formatToString("CREATE", "classType"));
    }


}
}//package _fL

