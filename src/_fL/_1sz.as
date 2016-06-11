// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._1sz

package _fL {
import _11j._1ST;
import _11j._8p;

import flash.utils.IDataOutput;

public class _1sz extends _1b1 {

    public function _1sz(_arg1:uint, _arg2:Function) {
        this.position_ = new _1ST();
        this.slotObject1_ = new _8p();
        this.slotObject2_ = new _8p();
        super(_arg1, _arg2);
    }
    public var time_:int;
    public var position_:_1ST;
    public var slotObject1_:_8p;
    public var slotObject2_:_8p;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
        this.position_.writeToOutput(_arg1);
        this.slotObject1_.writeToOutput(_arg1);
        this.slotObject2_.writeToOutput(_arg1);
    }

    override public function toString():String {
        return (formatToString("INVSWAP", "time_", "position_", "slotObject1_", "slotObject2_"));
    }


}
}//package _fL

