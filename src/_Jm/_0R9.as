// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Jm._0R9

package _Jm {
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.PointUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.BlendMode;
import flash.display.GradientType;
import flash.display.Shape;
import flash.filters.BitmapFilterQuality;
import flash.filters.GlowFilter;
import flash.geom.Matrix;
import flash.utils.Dictionary;

public class _0R9 {

    private static const _1K:uint = 0x282828;
    private static const GLOW_FILTER:GlowFilter = new GlowFilter(0, 0.3, 12, 12, 2, BitmapFilterQuality.LOW, false, false);
    private static const _1C3:GlowFilter = new GlowFilter(0, 0.5, 16, 16, 3, BitmapFilterQuality.LOW, false, false);

    private static var tempMatrix_:Matrix = new Matrix();
    private static var _1ak:Shape = _07f();
    private static var _0vR:Dictionary = new Dictionary();


    public static function _ud(_arg1:BitmapData, _arg2:uint, _arg3:Number = 1.4, _arg4:Boolean = false):BitmapData {
        var _local5:String = getHash(_arg2, _arg3);
        if (((_arg4) && (_1Ro(_arg1, _local5)))) {
            return (_0vR[_arg1][_local5]);
        }
        ;
        var _local6:BitmapData = _arg1.clone();
        tempMatrix_.identity();
        tempMatrix_.scale((_arg1.width / 0x0100), (_arg1.height / 0x0100));
        _local6.draw(_1ak, tempMatrix_, null, BlendMode.SUBTRACT);
        var _local7:Bitmap = new Bitmap(_arg1);
        _local6.draw(_local7, null, null, BlendMode.ALPHA);
        TextureRedrawer.OUTLINE_FILTER.blurX = _arg3;
        TextureRedrawer.OUTLINE_FILTER.blurY = _arg3;
        var _local8:uint;
        TextureRedrawer.OUTLINE_FILTER.color = _local8;
        _local6.applyFilter(_local6, _local6.rect, PointUtil._0Q4, TextureRedrawer.OUTLINE_FILTER);
        if (_arg2 != 0xFFFFFFFF) {
            if (((Parameters._0g5()) && (!((_arg2 == 0))))) {
                _1C3.color = _arg2;
                _local6.applyFilter(_local6, _local6.rect, PointUtil._0Q4, _1C3);
            } else {
                GLOW_FILTER.color = _arg2;
                _local6.applyFilter(_local6, _local6.rect, PointUtil._0Q4, GLOW_FILTER);
            }
            ;
        }
        ;
        if (_arg4) {
            _0n(_arg1, _arg2, _arg3, _local6);
        }
        ;
        return (_local6);
    }

    private static function _0n(_arg1:BitmapData, _arg2:uint, _arg3:Number, _arg4:BitmapData):void {
        var _local6:Object;
        var _local5:String = getHash(_arg2, _arg3);
        if ((_arg1 in _0vR)) {
            _0vR[_arg1][_local5] = _arg4;
        } else {
            _local6 = {};
            _local6[_local5] = _arg4;
            _0vR[_arg1] = _local6;
        }
        ;
    }

    private static function _1Ro(_arg1:BitmapData, _arg2:String):Boolean {
        var _local3:Object;
        if ((_arg1 in _0vR)) {
            _local3 = _0vR[_arg1];
            if ((_arg2 in _local3)) {
                return (true);
            }
            ;
        }
        ;
        return (false);
    }

    private static function getHash(_arg1:uint, _arg2:Number):String {
        return ((int((_arg2 * 10)).toString() + _arg1));
    }

    private static function _07f():Shape {
        var _local1:Shape = new Shape();
        var _local2:Matrix = new Matrix();
        _local2.createGradientBox(0x0100, 0x0100, (Math.PI / 2), 0, 0);
        _local1.graphics.beginGradientFill(GradientType.LINEAR, [0, _1K], [1, 1], [127, 0xFF], _local2);
        _local1.graphics.drawRect(0, 0, 0x0100, 0x0100);
        _local1.graphics.endFill();
        return (_local1);
    }


}
}//package _Jm

