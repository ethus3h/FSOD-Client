// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.AssetLibrary

package com.company.util {
import flash.display.BitmapData;
import flash.media.Sound;
import flash.media.SoundTransform;
import flash.utils.Dictionary;

public class AssetLibrary {

    private static var _1XN:Dictionary = new Dictionary();
    private static var _1q:Dictionary = new Dictionary();
    private static var _0L:Dictionary = new Dictionary();
    private static var _ET:Dictionary = new Dictionary();

    public static function _20g(_arg1:String, _arg2:BitmapData):void {
        _1XN[_arg1] = _arg2;
        _ET[_arg2] = _arg1;
    }

    public static function _lc(_arg1:String, _arg2:BitmapData, _arg3:int, _arg4:int):void {
        _1XN[_arg1] = _arg2;
        var _local5:_0q = new _0q();
        _local5.addFromBitmapData(_arg2, _arg3, _arg4);
        _1q[_arg1] = _local5;
        var _local6:int;
        while (_local6 < _local5._1XN.length) {
            _ET[_local5._1XN[_local6]] = [_arg1, _local6];
            _local6++;
        }
        ;
    }

    public static function _1nn(_arg1:String, _arg2:BitmapData):void {
        var _local3:_0q = _1q[_arg1];
        if (_local3 == null) {
            _local3 = new _0q();
            _1q[_arg1] = _local3;
        }
        ;
        _local3.add(_arg2);
        var _local4:int = (_local3._1XN.length - 1);
        _ET[_local3._1XN[_local4]] = [_arg1, _local4];
    }

    public static function _uW(_arg1:String, _arg2:Class):void {
        var _local3:Array = _0L[_arg1];
        if (_local3 == null) {
            _0L[_arg1] = new Array();
        }
        ;
        _0L[_arg1].push(_arg2);
    }

    public static function _6P(_arg1:BitmapData):Object {
        return (_ET[_arg1]);
    }

    public static function getImage(_arg1:String):BitmapData {
        return (_1XN[_arg1]);
    }

    public static function _1dj(_arg1:String):_0q {
        return (_1q[_arg1]);
    }

    public static function _Rb(_arg1:String, _arg2:int):BitmapData {
        var _local3:_0q = _1q[_arg1];
        return (_local3._1XN[_arg2]);
    }

    public static function _0c1(_arg1:String):Sound {
        var _local2:Array = _0L[_arg1];
        var _local3:int = (Math.random() * _local2.length);
        return (new (_0L[_arg1][_local3])());
    }

    public static function _am(_arg1:String, _arg2:Number = 1):void {
        var _local3:Array = _0L[_arg1];
        var _local4:int = (Math.random() * _local3.length);
        var _local5:Sound = new (_0L[_arg1][_local4])();
        var _local6:SoundTransform;
        if (_arg2 != 1) {
            _local6 = new SoundTransform(_arg2);
        }
        ;
        _local5.play(0, 0, _local6);
    }

    public function AssetLibrary(_arg1:StaticEnforcer) {
    }


}
}//package com.company.util

class StaticEnforcer {


}

