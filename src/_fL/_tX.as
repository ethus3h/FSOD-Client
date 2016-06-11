// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._tX

package _fL {
import _11j._1ST;

import flash.utils.IDataOutput;

public class _tX extends _1b1 {

    public function _tX(_arg1:uint, _arg2:Function) {
        this.position_ = new _1ST();
        super(_arg1, _arg2);
    }
    public var time_:int;
    public var position_:_1ST;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
        this.position_.writeToOutput(_arg1);
    }

    override public function toString():String {
        return (formatToString("GROUNDDAMAGE", "time_", "position_"));
    }


}
}//package _fL

