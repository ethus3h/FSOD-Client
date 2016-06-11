// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1L3._0FQ

package _1L3 {
public class _0FQ {

    private static var _0Pp:Object = _09j();

    public static function _20s(_arg1:_1FO, _arg2:_1FO):Number {
        var _local3:Number = _1Nr(_arg1);
        var _local4:Number = _1Nr(_arg2);
        return (_vR(_local3, _local4));
    }

    private static function _09j():Object {
        _0Pp = {};
        _0Pp[_tM._0gy.value] = 30;
        _0Pp[_tM._0hZ.value] = 20;
        _0Pp[_tM._jm.value] = 20;
        _0Pp[_tM._0r.value] = 20;
        return (_0Pp);
    }

    private static function _vR(_arg1:Number, _arg2:Number):Number {
        return (((_arg1 + _arg2) / 2));
    }

    private static function _1Nr(_arg1:_1FO):Number {
        var _local2:int = _0Pp[_arg1._07I()];
        var _local3:int = (_arg1._1oB() - _local2);
        var _local4:int = (_arg1._1mo[0].level - _local3);
        return ((_local4 / _local2));
    }


}
}//package _1L3

