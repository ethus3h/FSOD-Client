// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._5L

package _0od {
import _7J.DateField;

public class _5L {


    public static function _0TN(_arg1:DateField):uint {
        var _local2:Date = new Date(_0gK(_arg1));
        var _local3:Date = new Date();
        var _local4:uint = (Number(_local3.fullYear) - Number(_local2.fullYear));
        if ((((_local2.month > _local3.month)) || ((((_local2.month == _local3.month)) && ((_local2.date > _local3.date)))))) {
            _local4--;
        }
        ;
        return (_local4);
    }

    public static function _0gK(_arg1:DateField):Number {
        var _local2:String = ((((_arg1._KY.text + "/") + _arg1.days.text) + "/") + _arg1._f7.text);
        return (Date.parse(_local2));
    }


}
}//package _0od

