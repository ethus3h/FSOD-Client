// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._0pu

package com.company.assembleegameclient.util {
import flash.display.BitmapData;
import flash.utils.Dictionary;

public class _0pu {

    private static var _nq:Dictionary = new Dictionary();


    public static function _1Iw(_arg1:String, _arg2:int):_0zq {
        var _local3:Vector.<_0zq> = _nq[_arg1];
        if ((((_local3 == null)) || ((_arg2 >= _local3.length)))) {
            return (null);
        }
        ;
        return (_local3[_arg2]);
    }

    public static function add(_arg1:String, _arg2:BitmapData, _arg3:BitmapData, _arg4:int, _arg5:int, _arg6:int, _arg7:int, _arg8:int):void {
        var _local11:_0T2;
        var _local9:Vector.<_0zq> = new Vector.<_0zq>();
        var _local10:_12T = new _12T();
        _local10.addFromBitmapData(_arg2, _arg3, _arg6, _arg7);
        for each (_local11 in _local10._1XN) {
            _local9.push(new _0zq(_local11, _arg4, _arg5, _arg8));
        }
        ;
        _nq[_arg1] = _local9;
    }


}
}//package com.company.assembleegameclient.util

