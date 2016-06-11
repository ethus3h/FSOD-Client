// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._0Y2

package com.company.assembleegameclient.map {
import flash.utils.Dictionary;

public class _0Y2 {

    public static const _18H:Dictionary = new Dictionary();

    public static var _qb:Dictionary = new Dictionary();


    public static function _0vQ(_arg1:XML):void {
        var _local2:XML;
        var _local3:int;
        for each (_local2 in _arg1.Region) {
            _local3 = int(_local2.@type);
            _18H[_local3] = _local2;
            _qb[String(_local2.@id)] = _local3;
        }
        ;
    }

    public static function _4C(_arg1:int):String {
        var _local2:XML = _18H[_arg1];
        if (_local2 == null) {
            return (null);
        }
        ;
        return (String(_local2.@id));
    }

    public static function getColor(_arg1:int):uint {
        var _local2:XML = _18H[_arg1];
        if (_local2 == null) {
            return (0);
        }
        ;
        return (uint(_local2.Color));
    }


}
}//package com.company.assembleegameclient.map

