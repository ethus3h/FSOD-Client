// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._hj

package _fL {
import flash.utils.IDataOutput;

public class _hj extends _1b1 {

    public function _hj(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var guildName_:String;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeUTF(this.guildName_);
    }

    override public function toString():String {
        return (formatToString("JOINGUILD", "guildName_"));
    }


}
}//package _fL

