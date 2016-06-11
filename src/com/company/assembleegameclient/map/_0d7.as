// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._0d7

package com.company.assembleegameclient.map {
import com.company.assembleegameclient.objects._0sh;
import com.company.util.BitmapUtil;

import flash.display.BitmapData;
import flash.utils.Dictionary;

public class _0d7 {

    public static const _x9:Dictionary = new Dictionary();
    public static const _18H:Dictionary = new Dictionary();
    public static const _mQ:Dictionary = new Dictionary();
    public static var _qb:Dictionary = new Dictionary();
    public static var _0pF:_05Q;
    private static var _0HB:Dictionary = new Dictionary();

    public static function _0vQ(_arg1:XML):void {
        var _local2:XML;
        var _local3:int;
        for each (_local2 in _arg1.Ground) {
            _local3 = int(_local2.@type);
            _x9[_local3] = new _05Q(_local2);
            _18H[_local3] = _local2;
            _mQ[_local3] = new _0sh(_local2);
            _qb[String(_local2.@id)] = _local3;
        }
        ;
        _0pF = _x9[0xFF];
    }

    public static function _4C(_arg1:int):String {
        var _local2:_05Q = _x9[_arg1];
        if (_local2 == null) {
            return (null);
        }
        ;
        return (_local2.id_);
    }

    public static function getBitmapData(_arg1:int, _arg2:int = 0):BitmapData {
        return (_mQ[_arg1].getTexture(_arg2));
    }

    public static function getColor(_arg1:int):uint {
        var _local2:XML;
        var _local3:uint;
        var _local4:BitmapData;
        if (!_0HB.hasOwnProperty(_arg1.toString())) {
            _local2 = _18H[_arg1];
            if (_local2.hasOwnProperty("Color")) {
                _local3 = uint(_local2.Color);
            } else {
                _local4 = getBitmapData(_arg1);
                _local3 = BitmapUtil._1t(_local4);
            }
            ;
            _0HB[_arg1] = _local3;
        }
        ;
        return (_0HB[_arg1]);
    }


}
}//package com.company.assembleegameclient.map

