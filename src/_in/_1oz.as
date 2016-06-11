// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//in ._1oz

package _in {
import _u5._1kJ;
import _u5._NH;

import flash.display.BitmapData;
import flash.display3D.Context3DTextureFormat;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.utils.Dictionary;

public class _1oz {

    private static var textures:Dictionary = new Dictionary();
    private static var _1Ol:Dictionary = new Dictionary();
    private static var count:int = 0;

    public static function _7b(_arg1:BitmapData):BitmapData {
        var _local2:BitmapData;
        if ((_arg1 in _1Ol)) {
            return (_1Ol[_arg1]);
        }
        ;
        _local2 = _I6(_arg1, "y");
        _1Ol[_arg1] = _local2;
        return (_local2);
    }

    public static function _13J():void {
        var _local1:_NH;
        var _local2:BitmapData;
        for each (_local1 in textures) {
            _local1.dispose();
        }
        ;
        textures = new Dictionary();
        for each (_local2 in _1Ol) {
            _local2.dispose();
        }
        ;
        _1Ol = new Dictionary();
        count = 0;
    }

    public static function _1dm():void {
        var _local1:_NH;
        for each (_local1 in textures) {
            _local1.dispose();
        }
        ;
        textures = new Dictionary();
    }

    private static function _I6(_arg1:BitmapData, _arg2:String = "x"):BitmapData {
        var _local4:Matrix;
        var _local3:BitmapData = new BitmapData(_arg1.width, _arg1.height, true, 0);
        if (_arg2 == "x") {
            _local4 = new Matrix(-1, 0, 0, 1, _arg1.width, 0);
        } else {
            _local4 = new Matrix(1, 0, 0, -1, 0, _arg1.height);
        }
        ;
        _local3.draw(_arg1, _local4, null, null, null, true);
        return (_local3);
    }

    private static function _1Yc(_arg1:int):Number {
        _arg1--;
        _arg1 = (_arg1 | (_arg1 >> 1));
        _arg1 = (_arg1 | (_arg1 >> 2));
        _arg1 = (_arg1 | (_arg1 >> 4));
        _arg1 = (_arg1 | (_arg1 >> 8));
        _arg1 = (_arg1 | (_arg1 >> 16));
        _arg1++;
        return (_arg1);
    }
    [Inject]
    public var context3D:_1kJ;

    public function make(_arg1:BitmapData):_NH {
        var _local2:int;
        var _local3:int;
        var _local4:_NH;
        var _local5:BitmapData;
        if (_arg1 == null) {
            return (null);
        }
        ;
        if ((_arg1 in textures)) {
            return (textures[_arg1]);
        }
        ;
        _local2 = _1Yc(_arg1.width);
        _local3 = _1Yc(_arg1.height);
        _local4 = this.context3D.createTexture(_local2, _local3, Context3DTextureFormat.BGRA, false);
        _local5 = new BitmapData(_local2, _local3, true, 0);
        _local5.copyPixels(_arg1, _arg1.rect, new Point(0, 0));
        _local4.uploadFromBitmapData(_local5);
        if (count > 1000) {
            _1dm();
            count = 0;
        }
        ;
        textures[_arg1] = _local4;
        count++;
        return (_local4);
    }


}
}//package in 

