// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_11j._0g1

package _11j {
import com.company.assembleegameclient.util._0CH;

import flash.utils.IDataInput;
import flash.utils.IDataOutput;

public class _0g1 {

    public function _0g1() {
        this.pos_ = new _1ST();
        this._0Lc = new Vector.<StatData>();
        super();
    }
    public var objectId_:int;
    public var pos_:_1ST;
    public var _0Lc:Vector.<StatData>;

    public function parseFromInput(_arg1:IDataInput):void {
        var _local3:int;
        this.objectId_ = _arg1.readInt();
        this.pos_.parseFromInput(_arg1);
        var _local2:int = _arg1.readShort();
        _local3 = _local2;
        while (_local3 < this._0Lc.length) {
            _0CH._0Ez(this._0Lc[_local3]);
            _local3++;
        }
        ;
        this._0Lc.length = Math.min(_local2, this._0Lc.length);
        while (this._0Lc.length < _local2) {
            this._0Lc.push((_0CH._mN(StatData) as StatData));
        }
        ;
        _local3 = 0;
        while (_local3 < _local2) {
            this._0Lc[_local3].parseFromInput(_arg1);
            _local3++;
        }
        ;
    }

    public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.objectId_);
        this.pos_.writeToOutput(_arg1);
        _arg1.writeShort(this._0Lc.length);
        var _local2:int;
        while (_local2 < this._0Lc.length) {
            this._0Lc[_local2].writeToOutput(_arg1);
            _local2++;
        }
        ;
    }

    public function toString():String {
        return (((((("objectId_: " + this.objectId_) + " pos_: ") + this.pos_) + " stats_: ") + this._0Lc));
    }


}
}//package _11j

