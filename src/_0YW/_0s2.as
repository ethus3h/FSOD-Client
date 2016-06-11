// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0YW._0s2

package _0YW {
import _0CT._8w;

import _SW._1z5;

import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map._0d7;
import com.company.assembleegameclient.objects.BasicObject;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.util.IntPoint;
import com.hurlant.util.Base64;

import flash.utils.ByteArray;

public class _0s2 {


    private static function get _fR():_1z5 {
        return (_8w._1Sz().getInstance(_1z5));
    }

    public static function _0qE(_arg1:String):Map {
        var _local2:Object = _fR.parse(_arg1);
        var _local3:Map = new Map(null);
        _local3.setProps(_local2["width"], _local2["height"], _local2["name"], _local2["back"], false, false);
        _local3.initialize();
        _6D(_local2, _local3, 0, 0);
        return (_local3);
    }

    public static function _1r3(_arg1:String, _arg2:Map, _arg3:int, _arg4:int):void {
        var _local5:Object = _fR.parse(_arg1);
        _6D(_local5, _arg2, _arg3, _arg4);
    }

    public static function _Ie(_arg1:String):IntPoint {
        var _local2:Object = _fR.parse(_arg1);
        return (new IntPoint(_local2["width"], _local2["height"]));
    }

    public static function _1fD(_arg1:Object):GameObject {
        var _local2:int = ObjectLibrary._qb[_arg1["id"]];
        var _local3:XML = ObjectLibrary._18H[_local2];
        var _local4:GameObject = ObjectLibrary._XL(_local2);
        _local4.size_ = ((_arg1.hasOwnProperty("size")) ? _arg1["size"] : _local4.props_._Ie());
        return (_local4);
    }

    private static function _6D(_arg1:Object, _arg2:Map, _arg3:int, _arg4:int):void {
        var _local7:int;
        var _local8:int;
        var _local9:Object;
        var _local10:Array;
        var _local11:int;
        var _local12:Object;
        var _local13:GameObject;
        var _local5:ByteArray = Base64.decodeToByteArray(_arg1["data"]);
        _local5.uncompress();
        var _local6:Array = _arg1["dict"];
        _local7 = _arg4;
        while (_local7 < (_arg4 + _arg1["height"])) {
            _local8 = _arg3;
            while (_local8 < (_arg3 + _arg1["width"])) {
                _local9 = _local6[_local5.readShort()];
                if ((((((((_local8 < 0)) || ((_local8 >= _arg2.width_)))) || ((_local7 < 0)))) || ((_local7 >= _arg2.height_)))) {
                } else {
                    if (_local9.hasOwnProperty("ground")) {
                        _local11 = _0d7._qb[_local9["ground"]];
                        _arg2.setGroundTile(_local8, _local7, _local11);
                    }
                    ;
                    _local10 = _local9["objs"];
                    if (_local10 != null) {
                        for each (_local12 in _local10) {
                            _local13 = _1fD(_local12);
                            _local13.objectId_ = BasicObject._1LK();
                            _arg2.addObj(_local13, (_local8 + 0.5), (_local7 + 0.5));
                        }
                        ;
                    }
                    ;
                }
                ;
                _local8++;
            }
            ;
            _local7++;
        }
        ;
    }


}
}//package _0YW

