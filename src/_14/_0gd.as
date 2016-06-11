// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0gd

package _14 {
import flash.utils.IDataInput;

public class _0gd extends _eJ {

    public function _0gd(_arg1:uint, _arg2:Function) {
        this.offer_ = new Vector.<Boolean>();
        super(_arg1, _arg2);
    }
    public var offer_:Vector.<Boolean>;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.offer_.length = 0;
        var _local2:int = _arg1.readShort();
        var _local3:int;
        while (_local3 < _local2) {
            this.offer_.push(_arg1.readBoolean());
            _local3++;
        }
        ;
    }

    override public function toString():String {
        return (formatToString("TRADECHANGED", "offer_"));
    }


}
}//package _14-

