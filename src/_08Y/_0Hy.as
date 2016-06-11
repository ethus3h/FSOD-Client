// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_08Y._0Hy

package _08Y {
import _rD._0ee;

public class _0Hy {

    private static const _0ir:_0ee = new _0ee(20, 1.08);


    public static function _0wV(_arg1:int):Number {
        return (_0ir._0Bb(_arg1));
    }

    public static function _Vo(_arg1:int, _arg2:int):Number {
        var _local3:Number = _0wV((_arg2 - 1));
        return ((_arg1 - _local3));
    }

    public static function _0c(_arg1:int):Number {
        return (_0ir._0t8((_arg1 - 1)));
    }


}
}//package _08Y

