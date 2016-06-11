// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._03w

package _fL {
import flash.utils.IDataOutput;

public class _03w extends _1b1 {

    public function _03w(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var conditionEffect_:uint;
    public var conditionDuration_:Number;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeByte(this.conditionEffect_);
        _arg1.writeFloat(this.conditionDuration_);
    }

    override public function toString():String {
        return (formatToString("SETCONDITION", "conditionEffect_", "conditionDuration_"));
    }


}
}//package _fL

