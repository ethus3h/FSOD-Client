// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.GuildUtil

package com.company.assembleegameclient.util {
import _6u._TG;

import com.company.util.AssetLibrary;

import flash.display.BitmapData;

public class GuildUtil {

    public static const _hu:int = 0;
    public static const _1y5:int = 10;
    public static const _15E:int = 20;
    public static const _1PX:int = 30;
    public static const _1BB:int = 40;
    public static const _0Vb:int = 50;


    public static function _1Be(_arg1:int):String {
        switch (_arg1) {
            case _hu:
                return (_1nY(_TG._k1));
            case _1y5:
                return (_1nY(_TG._var));
            case _15E:
                return (_1nY(_TG._0nI));
            case _1PX:
                return (_1nY(_TG._0cO));
            case _1BB:
                return (_1nY(_TG._1cJ));
        }
        ;
        return (_1nY(_TG._1y));
    }

    public static function _ca(_arg1:int, _arg2:int):BitmapData {
        var _local3:BitmapData;
        switch (_arg1) {
            case _hu:
                _local3 = AssetLibrary._Rb("lofiInterfaceBig", 20);
                break;
            case _1y5:
                _local3 = AssetLibrary._Rb("lofiInterfaceBig", 19);
                break;
            case _15E:
                _local3 = AssetLibrary._Rb("lofiInterfaceBig", 18);
                break;
            case _1PX:
                _local3 = AssetLibrary._Rb("lofiInterfaceBig", 17);
                break;
            case _1BB:
                _local3 = AssetLibrary._Rb("lofiInterfaceBig", 16);
                break;
        }
        ;
        return (TextureRedrawer.redraw(_local3, _arg2, true, 0, true));
    }

    public static function _Ln(_arg1:int):BitmapData {
        var _local2:BitmapData = AssetLibrary._Rb("lofiObj3", 226);
        return (TextureRedrawer.redraw(_local2, _arg1, true, 0, true));
    }

    public static function _1LJ(_arg1:int, _arg2:int, _arg3:int):Boolean {
        if (_arg2 == _arg3) {
            return (false);
        }
        ;
        if ((((((_arg1 == _1BB)) && ((_arg2 < _1BB)))) && ((_arg3 < _1BB)))) {
            return (true);
        }
        ;
        if ((((((_arg1 == _1PX)) && ((_arg2 < _1PX)))) && ((_arg3 <= _1PX)))) {
            return (true);
        }
        ;
        if ((((((_arg1 == _15E)) && ((_arg2 < _15E)))) && ((_arg3 < _15E)))) {
            return (true);
        }
        ;
        return (false);
    }

    public static function _0ZT(_arg1:int):int {
        switch (_arg1) {
            case _hu:
                return (_1y5);
            case _1y5:
                return (_15E);
            case _15E:
                return (_1PX);
        }
        ;
        return (_1BB);
    }

    public static function _0wv(_arg1:int, _arg2:int):Boolean {
        var _local3:int = _0ZT(_arg2);
        return (_1LJ(_arg1, _arg2, _local3));
    }

    public static function _qN(_arg1:int):int {
        switch (_arg1) {
            case _15E:
                return (_1y5);
            case _1PX:
                return (_15E);
            case _1BB:
                return (_1PX);
        }
        ;
        return (_hu);
    }

    public static function _0v5(_arg1:int, _arg2:int):Boolean {
        var _local3:int = _qN(_arg2);
        return (_1LJ(_arg1, _arg2, _local3));
    }

    public static function _0OQ(_arg1:int, _arg2:int):Boolean {
        return ((((_arg1 >= _15E)) && ((_arg2 < _arg1))));
    }

    private static function _1nY(_arg1:String):String {
        return ((("{" + _arg1) + "}"));
    }


}
}//package com.company.assembleegameclient.util

