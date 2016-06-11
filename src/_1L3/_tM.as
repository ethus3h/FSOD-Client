// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1L3._tM

package _1L3 {
public class _tM {

    public static const _0gy:_tM = new _tM("Pets.common", 0);
    public static const _0hZ:_tM = new _tM("Pets.uncommon", 1);
    public static const _jm:_tM = new _tM("Pets.rare", 2);
    public static const _0r:_tM = new _tM("Pets.legendary", 3);
    public static const _1dK:_tM = new _tM("Pets.divine", 4);
    public static const _1T9:int = 4;

    public static function get list():Array {
        return ([_0gy, _0hZ, _jm, _0r, _1dK]);
    }

    public static function _0yp(_arg1:String):_tM {
        var _local2:_tM;
        var _local3:_tM;
        for each (_local3 in _tM.list) {
            if (_arg1 == _local3.value) {
                _local2 = _local3;
            }
            ;
        }
        ;
        return (_local2);
    }

    public static function _1rX(_arg1:int):_tM {
        var _local2:_tM;
        var _local3:_tM;
        for each (_local3 in _tM.list) {
            if (_arg1 == _local3._25) {
                _local2 = _local3;
            }
            ;
        }
        ;
        return (_local2);
    }

    public function _tM(_arg1, _arg2:int) {
        this.value = _arg1;
        this._25 = _arg2;
    }
    public var value:String;
    public var _25:int;


}
}//package _1L3

