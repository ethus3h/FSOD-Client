// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0fa._04O

package _0fa {
import flash.utils.getQualifiedClassName;

public class _04O implements _z4 {

    public function _04O(_arg1:Vector.<Class>, _arg2:Vector.<Class>, _arg3:Vector.<Class>) {
        if (((((!(_arg1)) || (!(_arg2)))) || (!(_arg3)))) {
            throw (ArgumentError("TypeFilter parameters can not be null"));
        }
        ;
        this._2w = _arg1;
        this._Db = _arg2;
        this._0ST = _arg3;
    }
    protected var _2w:Vector.<Class>;
    protected var _Db:Vector.<Class>;
    protected var _I2:String;
    protected var _0ST:Vector.<Class>;

    public function get _165():Vector.<Class> {
        return (this._2w);
    }

    public function get _0fw():Vector.<Class> {
        return (this._Db);
    }

    public function get _1Gf():String {
        return ((this._I2 = ((this._I2) || (this._Uz()))));
    }

    public function get _0ye():Vector.<Class> {
        return (this._0ST);
    }

    public function matches(_arg1):Boolean {
        var _local2:uint = this._2w.length;
        while (_local2--) {
            if (!(_arg1 is this._2w[_local2])) {
                return (false);
            }
            ;
        }
        ;
        _local2 = this._0ST.length;
        while (_local2--) {
            if ((_arg1 is this._0ST[_local2])) {
                return (false);
            }
            ;
        }
        ;
        if ((((this._Db.length == 0)) && ((((this._2w.length > 0)) || ((this._0ST.length > 0)))))) {
            return (true);
        }
        ;
        _local2 = this._Db.length;
        while (_local2--) {
            if ((_arg1 is this._Db[_local2])) {
                return (true);
            }
            ;
        }
        ;
        return (false);
    }

    protected function _1Na(_arg1:Vector.<Class>):Vector.<String> {
        var _local2:String;
        var _local3:Vector.<String> = new <String>[];
        var _local4:uint = _arg1.length;
        var _local5:uint;
        while (_local5 < _local4) {
            _local2 = getQualifiedClassName(_arg1[_local5]);
            _local3[_local3.length] = _local2;
            _local5++;
        }
        ;
        _local3.sort(this._0v);
        return (_local3);
    }

    protected function _Uz():String {
        var _local1:Vector.<String> = this._1Na(this._165);
        var _local2:Vector.<String> = this._1Na(this._0fw);
        var _local3:Vector.<String> = this._1Na(this._0ye);
        return (((((("all of: " + _local1.toString()) + ", any of: ") + _local2.toString()) + ", none of: ") + _local3.toString()));
    }

    protected function _0v(_arg1:String, _arg2:String):int {
        if (_arg1 < _arg2) {
            return (1);
        }
        ;
        return (-1);
    }


}
}//package _0fa

