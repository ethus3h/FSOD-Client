// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_s2._40

package _s2 {
import flash.geom.Rectangle;
import flash.utils.ByteArray;

public class _40 {

    public static const _m4:uint = 1;
    public static const _2U:uint = 2;

    public static function _1dv(_arg1:ByteArray):_40 {
        var _local2:_40 = new _40(_arg1.readUTF());
        _local2.type = _arg1.readUnsignedInt();
        _local2._1SV = _arg1.readUnsignedInt();
        _local2.low = _arg1.readDouble();
        _local2._0ln = _arg1.readDouble();
        _local2._0Wv = _arg1.readBoolean();
        var _local3:uint = _arg1.readUnsignedInt();
        while (_local3) {
            _local2.interests.push(_yA._1dv(_arg1));
            _local3--;
        }
        ;
        return (_local2);
    }

    public function _40(_arg1:String) {
        this.interests = [];
        super();
        this.name = _arg1;
    }
    public var type:uint;
    public var name:String;
    public var _1fn:int = 1;
    public var low:Number;
    public var _0ln:Number;
    public var fixed:Boolean;
    public var _124:uint;
    public var _0Wv:Boolean;
    public var interests:Array;
    public var rect:Rectangle;
    public var _1SV:int;

    public function _1Uq(_arg1:Number):void {
        if (((!(isNaN(_arg1))) && (!(this.fixed)))) {
            if (isNaN(this.low)) {
                this.low = _arg1;
                this._0ln = _arg1;
            }
            ;
            if (_arg1 > this._0ln) {
                this._0ln = _arg1;
            }
            ;
            if (_arg1 < this.low) {
                this.low = _arg1;
            }
            ;
        }
        ;
    }

    public function _v(_arg1:ByteArray):void {
        var _local2:_yA;
        _arg1.writeUTF(this.name);
        _arg1.writeUnsignedInt(this.type);
        _arg1.writeUnsignedInt(this._1SV);
        _arg1.writeDouble(this.low);
        _arg1.writeDouble(this._0ln);
        _arg1.writeBoolean(this._0Wv);
        _arg1.writeUnsignedInt(this.interests.length);
        for each (_local2 in this.interests) {
            _local2._v(_arg1);
        }
        ;
    }


}
}//package _s2

