// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._1j8

package _fL {
import _11j._1ST;
import _11j._8p;

import flash.utils.IDataOutput;

public class _1j8 extends _1b1 {

    public function _1j8(_arg1:uint, _arg2:Function) {
        this.slotObject_ = new _8p();
        this.itemUsePos_ = new _1ST();
        super(_arg1, _arg2);
    }
    public var time_:int;
    public var slotObject_:_8p;
    public var itemUsePos_:_1ST;
    public var useType_:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
        this.slotObject_.writeToOutput(_arg1);
        this.itemUsePos_.writeToOutput(_arg1);
        _arg1.writeByte(this.useType_);
    }

    override public function toString():String {
        return (formatToString("USEITEM", "slotObject_", "itemUsePos_", "useType_"));
    }


}
}//package _fL

