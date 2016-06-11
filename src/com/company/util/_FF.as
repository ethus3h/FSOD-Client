// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util._FF

package com.company.util {
public class _FF {


    public static function _2():String {
        var _local1:Date = new Date();
        var _local2:Number = _local1.getTime();
        _local2 = (_local2 + (((_local1.timezoneOffset - 420) * 60) * 1000));
        _local1.setTime(_local2);
        var _local3:_1sG = new _1sG();
        _local3._o1 = "MMMM D, YYYY";
        return (_local3._1w(_local1));
    }


}
}//package com.company.util

