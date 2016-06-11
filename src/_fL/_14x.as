// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._14x

package _fL {
import flash.utils.IDataOutput;

public class _14x extends _1b1 {

    public function _14x(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var name_:String;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeUTF(this.name_);
    }

    override public function toString():String {
        return (formatToString("GUILDINVITE", "name_"));
    }


}
}//package _fL

