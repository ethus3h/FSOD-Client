// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._07S

package com.company.assembleegameclient.util {
public class _07S {

    public static const _0sQ:int = 86400000;
    public static const _1VW:int = 86400;
    public static const _16U:int = 3600;
    public static const _0it:int = 60;


    public static function _D6(_arg1:Number):Number {
        return ((_arg1 / _1VW));
    }

    public static function _PQ(_arg1:Number):Number {
        return ((_arg1 / _16U));
    }

    public static function _1Vw(_arg1:Number):Number {
        return ((_arg1 / _0it));
    }

    public static function _1Fu(_arg1:String):Date {
        var _local2:Array = _arg1.match(/(\d\d\d\d)-(\d\d)-(\d\d) (\d\d):(\d\d):(\d\d)/);
        var _local3:Date = new Date();
        _local3.setUTCFullYear(int(_local2[1]), (int(_local2[2]) - 1), int(_local2[3]));
        _local3.setUTCHours(int(_local2[4]), int(_local2[5]), int(_local2[6]), 0);
        return (_local3);
    }


}
}//package com.company.assembleegameclient.util

