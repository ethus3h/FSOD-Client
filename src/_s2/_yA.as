// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_s2._yA

package _s2 {
import _bb.Executer;

import flash.utils.ByteArray;

public class _yA {

    public static function _1dv(_arg1:ByteArray):_yA {
        var _local2:_yA = new _yA(_arg1.readUTF(), _arg1.readUnsignedInt());
        _local2.v = _arg1.readDouble();
        _local2.avg = _arg1.readDouble();
        return (_local2);
    }

    public function _yA(_arg1:String = "", _arg2:Number = 0):void {
        this.col = _arg2;
        this.key = _arg1;
    }
    public var _1zB:String;
    public var key:String;
    public var col:Number;
    public var v:Number;
    public var avg:Number;
    private var _06K:_hU;
    private var _0hx:Boolean;

    public function get obj():Object {
        return ((((this._06K) != null) ? this._06K._1hm : undefined));
    }

    public function get prop():String {
        return (this._1zB);
    }

    public function setObject(_arg1:Object, _arg2:String):Number {
        this._06K = new _hU(_arg1);
        this._1zB = _arg2;
        this._0hx = (this._1zB.search(/[^\w\d]/) >= 0);
        this.v = this._1Wx();
        this.avg = this.v;
        return (this.v);
    }

    public function _1Wx():Number {
        return (((this._0hx) ? Executer._0pz(this.obj, this._1zB) : this.obj[this._1zB]));
    }

    public function setValue(_arg1:Number, _arg2:uint = 0):void {
        this.v = _arg1;
        if (_arg2 > 0) {
            if (isNaN(this.avg)) {
                this.avg = this.v;
            } else {
                this.avg = (this.avg + ((this.v - this.avg) / _arg2));
            }
            ;
        }
        ;
    }

    public function _v(_arg1:ByteArray):void {
        _arg1.writeUTF(this.key);
        _arg1.writeUnsignedInt(this.col);
        _arg1.writeDouble(this.v);
        _arg1.writeDouble(this.avg);
    }


}
}//package _s2

