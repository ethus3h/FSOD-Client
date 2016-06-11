// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0._ix

package _Z0 {
public class _ix {

    public static const _17Q:uint = 0xFF00;
    public static const _dh:uint = 0xFF0000;
    public static const _05D:uint = 16777103;


    public static function _1W0(_arg1:String, _arg2:String):String {
        var _local3 = (((('<font color="' + _arg2) + '">') + _arg1) + "</font>");
        return (_local3);
    }

    public static function _yk(_arg1:uint):String {
        return ((('<font color="#' + _arg1.toString(16)) + '">'));
    }

    public static function _0yJ():String {
        return ("</font>");
    }

    public static function _N8(_arg1:Number):String {
        var _local2:Number = (_arg1 - int(_arg1));
        return ((((int((_local2 * 10))) == 0) ? int(_arg1).toString() : _arg1.toFixed(1)));
    }

    public static function _BZ(_arg1:Number):uint {
        if (_arg1 < 0) {
            return (_dh);
        }
        ;
        if (_arg1 > 0) {
            return (_17Q);
        }
        ;
        return (_05D);
    }


}
}//package _Z0

