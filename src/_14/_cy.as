// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._cy

package _14 {
import _11j._0cv;

import com.company.assembleegameclient.util._0CH;

import flash.utils.IDataInput;

public class _cy extends _eJ {

    public function _cy(_arg1:uint, _arg2:Function) {
        this.myItems_ = new Vector.<_0cv>();
        this.yourItems_ = new Vector.<_0cv>();
        super(_arg1, _arg2);
    }
    public var myItems_:Vector.<_0cv>;
    public var yourName_:String;
    public var yourItems_:Vector.<_0cv>;

    override public function parseFromInput(_arg1:IDataInput):void {
        var _local2:int;
        var _local3:int = _arg1.readShort();
        _local2 = _local3;
        while (_local2 < this.myItems_.length) {
            _0CH._0Ez(this.myItems_[_local2]);
            _local2++;
        }
        ;
        this.myItems_.length = Math.min(_local3, this.myItems_.length);
        while (this.myItems_.length < _local3) {
            this.myItems_.push((_0CH._mN(_0cv) as _0cv));
        }
        ;
        _local2 = 0;
        while (_local2 < _local3) {
            this.myItems_[_local2].parseFromInput(_arg1);
            _local2++;
        }
        ;
        this.yourName_ = _arg1.readUTF();
        _local3 = _arg1.readShort();
        _local2 = _local3;
        while (_local2 < this.yourItems_.length) {
            _0CH._0Ez(this.yourItems_[_local2]);
            _local2++;
        }
        ;
        this.yourItems_.length = Math.min(_local3, this.yourItems_.length);
        while (this.yourItems_.length < _local3) {
            this.yourItems_.push((_0CH._mN(_0cv) as _0cv));
        }
        ;
        _local2 = 0;
        while (_local2 < _local3) {
            this.yourItems_[_local2].parseFromInput(_arg1);
            _local2++;
        }
        ;
    }

    override public function toString():String {
        return (formatToString("TRADESTART", "myItems_", "yourName_", "yourItems_"));
    }


}
}//package _14-

