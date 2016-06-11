// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-.Update

package _14 {
import _11j._2Z;
import _11j._CC;

import com.company.assembleegameclient.util._0CH;

import flash.utils.IDataInput;

public class Update extends _eJ {

    public function Update(_arg1:uint, _arg2:Function) {
        this.tiles_ = new Vector.<_2Z>();
        this.newObjs_ = new Vector.<_CC>();
        this.drops_ = new Vector.<int>();
        super(_arg1, _arg2);
    }
    public var tiles_:Vector.<_2Z>;
    public var newObjs_:Vector.<_CC>;
    public var drops_:Vector.<int>;

    override public function parseFromInput(_arg1:IDataInput):void {
        var _local2:int;
        var _local3:int = _arg1.readShort();
        _local2 = _local3;
        while (_local2 < this.tiles_.length) {
            _0CH._0Ez(this.tiles_[_local2]);
            _local2++;
        }
        ;
        this.tiles_.length = Math.min(_local3, this.tiles_.length);
        while (this.tiles_.length < _local3) {
            this.tiles_.push((_0CH._mN(_2Z) as _2Z));
        }
        ;
        _local2 = 0;
        while (_local2 < _local3) {
            this.tiles_[_local2].parseFromInput(_arg1);
            _local2++;
        }
        ;
        this.newObjs_.length = 0;
        _local3 = _arg1.readShort();
        _local2 = _local3;
        while (_local2 < this.newObjs_.length) {
            _0CH._0Ez(this.newObjs_[_local2]);
            _local2++;
        }
        ;
        this.newObjs_.length = Math.min(_local3, this.newObjs_.length);
        while (this.newObjs_.length < _local3) {
            this.newObjs_.push((_0CH._mN(_CC) as _CC));
        }
        ;
        _local2 = 0;
        while (_local2 < _local3) {
            this.newObjs_[_local2].parseFromInput(_arg1);
            _local2++;
        }
        ;
        this.drops_.length = 0;
        var _local4:int = _arg1.readShort();
        _local2 = 0;
        while (_local2 < _local4) {
            this.drops_.push(_arg1.readInt());
            _local2++;
        }
        ;
    }

    override public function toString():String {
        return (formatToString("UPDATE", "tiles_", "newObjs_", "drops_"));
    }


}
}//package _14-

