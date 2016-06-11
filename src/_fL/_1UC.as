// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._1UC

package _fL {
import flash.utils.IDataOutput;

public class _1UC extends _1b1 {

    public function _1UC(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var name_:String;
    public var guildRank_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeUTF(this.name_);
        _arg1.writeInt(this.guildRank_);
    }

    override public function toString():String {
        return (formatToString("CHANGEGUILDRANK", "name_", "guildRank_"));
    }


}
}//package _fL

