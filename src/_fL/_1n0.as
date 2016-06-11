// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._1n0

package _fL {
import flash.utils.IDataOutput;

public class _1n0 extends _1b1 {

    public function _1n0(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var accountListId_:int;
    public var add_:Boolean;
    public var objectId_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.accountListId_);
        _arg1.writeBoolean(this.add_);
        _arg1.writeInt(this.objectId_);
    }

    override public function toString():String {
        return (formatToString("EDITACCOUNTLIST", "accountListId_", "add_", "objectId_"));
    }


}
}//package _fL

