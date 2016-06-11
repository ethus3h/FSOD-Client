// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1L3._xy

package _1L3 {
public class _xy {

    public static const _fq:_xy = new _xy("Yard Upgrader 1", 1, _tM._0gy);
    public static const _mS:_xy = new _xy("Yard Upgrader 2", 2, _tM._0hZ);
    public static const _0J5:_xy = new _xy("Yard Upgrader 3", 3, _tM._jm);
    public static const _21:_xy = new _xy("Yard Upgrader 4", 4, _tM._0r);
    public static const _0gr:_xy = new _xy("Yard Upgrader 5", 5, _tM._1dK);
    public static const _1T9:int = 5;

    public static function get list():Array {
        return ([_fq, _mS, _0J5, _21, _0gr]);
    }

    public static function _0yp(_arg1:String):_xy {
        var _local2:_xy;
        var _local3:_xy;
        for each (_local3 in _xy.list) {
            if (_arg1 == _local3.value) {
                _local2 = _local3;
            }
            ;
        }
        ;
        return (_local2);
    }

    public static function _1rX(_arg1:int):_xy {
        var _local2:_xy;
        var _local3:_xy;
        for each (_local3 in _xy.list) {
            if (_arg1 == _local3._25) {
                _local2 = _local3;
            }
            ;
        }
        ;
        return (_local2);
    }

    public function _xy(_arg1, _arg2:int, _arg3:_tM) {
        this.value = _arg1;
        this._25 = _arg2;
        this.rarity = _arg3;
    }
    public var value:String;
    public var _25:int;
    public var rarity:_tM;


}
}//package _1L3

