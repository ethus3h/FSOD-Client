// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._0RQ

package _fL {
import flash.utils.IDataOutput;

public class _0RQ extends _1b1 {

    public function _0RQ(_arg1:uint, _arg2:Function) {
        this.text_ = new String();
        super(_arg1, _arg2);
    }
    public var text_:String;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeUTF(this.text_);
    }

    override public function toString():String {
        return (formatToString("PLAYERTEXT", "text_"));
    }


}
}//package _fL

