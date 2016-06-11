// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._1j4

package _14 {
import _11j._0g1;

import com.company.assembleegameclient.util._0CH;

import flash.utils.IDataInput;

public class _1j4 extends _eJ {

    public function _1j4(_arg1:uint, _arg2:Function) {
        this.statuses_ = new Vector.<_0g1>();
        super(_arg1, _arg2);
    }
    public var tickId_:int;
    public var tickTime_:int;
    public var statuses_:Vector.<_0g1>;

    override public function parseFromInput(_arg1:IDataInput):void {
        var _local3:int;
        this.tickId_ = _arg1.readInt();
        this.tickTime_ = _arg1.readInt();
        var _local2:int = _arg1.readShort();
        _local3 = _local2;
        while (_local3 < this.statuses_.length) {
            _0CH._0Ez(this.statuses_[_local3]);
            _local3++;
        }
        ;
        this.statuses_.length = Math.min(_local2, this.statuses_.length);
        while (this.statuses_.length < _local2) {
            this.statuses_.push((_0CH._mN(_0g1) as _0g1));
        }
        ;
        _local3 = 0;
        while (_local3 < _local2) {
            this.statuses_[_local3].parseFromInput(_arg1);
            _local3++;
        }
        ;
    }

    override public function toString():String {
        return (formatToString("NEW_TICK", "tickId_", "tickTime_", "statuses_"));
    }


}
}//package _14-

