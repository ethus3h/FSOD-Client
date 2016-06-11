// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._0tI

package _fL {
import flash.utils.IDataOutput;

public class _0tI extends _1b1 {

    public function _0tI(_arg1:uint, _arg2:Function) {
        this.offer_ = new Vector.<Boolean>();
        super(_arg1, _arg2);
    }
    public var offer_:Vector.<Boolean>;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeShort(this.offer_.length);
        var _local2:int;
        while (_local2 < this.offer_.length) {
            _arg1.writeBoolean(this.offer_[_local2]);
            _local2++;
        }
        ;
    }

    override public function toString():String {
        return (formatToString("CHANGETRADE", "offer_"));
    }


}
}//package _fL

