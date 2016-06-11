// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._0Fv

package _fL {
import _11j._1ST;
import _11j._7Z;

import flash.utils.IDataOutput;

public class _0Fv extends _1b1 {

    public function _0Fv(_arg1:uint, _arg2:Function) {
        this.newPosition_ = new _1ST();
        this.records_ = new Vector.<_7Z>();
        super(_arg1, _arg2);
    }
    public var tickId_:int;
    public var time_:int;
    public var newPosition_:_1ST;
    public var records_:Vector.<_7Z>;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.tickId_);
        _arg1.writeInt(this.time_);
        this.newPosition_.writeToOutput(_arg1);
        _arg1.writeShort(this.records_.length);
        var _local2:int;
        while (_local2 < this.records_.length) {
            this.records_[_local2].writeToOutput(_arg1);
            _local2++;
        }
        ;
    }

    override public function toString():String {
        return (formatToString("MOVE", "tickId_", "time_", "newPosition_", "records_"));
    }


}
}//package _fL

