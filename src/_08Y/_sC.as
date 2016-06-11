// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_08Y._sC

package _08Y {
import _0Mr._5R;

import _0Sj.FusionStrength;
import _0Sj.PetAbilityMeter;
import _0Sj.PetFeeder;
import _0Sj.PetFuser;
import _0Sj._05E;
import _0Sj._0Rz;
import _0Sj._0SX;
import _0Sj._1l_;
import _0Sj._g4;

import _0y9._06T;

import _6u._TG;

import _MU._0t5;
import _MU._12V;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.ui._yz;
import com.company.util.BitmapUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Shape;
import flash.filters.DropShadowFilter;
import flash.text.TextFormatAlign;

public class _sC {


    public static function _1AZ(_arg1:uint, _arg2:uint):_1l_ {
        var _local3:_1l_ = new _1l_();
        _local3.draw(_arg1, _arg2);
        _local3._0ho(_1l_.HORIZONTAL_DIVISION, _QU._2x);
        _local3._0ho(_1l_.HORIZONTAL_DIVISION, _QU._C4);
        return (_local3);
    }

    public static function _1dP():_1l_ {
        var _local1:_1l_ = new _1l_();
        _local1.draw(_QU._IY, _QU._0ws);
        _local1._0ho(_1l_.HORIZONTAL_DIVISION, _QU._2x);
        _local1._0ho(_1l_.HORIZONTAL_DIVISION, _QU._0y3);
        return (_local1);
    }

    public static function _1h6(_arg1:String, _arg2:uint):_0Rz {
        var _local3:_0Rz = new _0Rz();
        _local3.y = _arg2;
        _local3.setPrefix(_arg1);
        return (_local3);
    }

    public static function _1O7():_g4 {
        var _local1:_g4;
        _local1 = new _g4();
        _local1.y = (_QU._1Ce - 35);
        return (_local1);
    }

    public static function _0ud():Vector.<PetAbilityMeter> {
        return (Vector.<PetAbilityMeter>([_07H(), _07H(), _07H()]));
    }

    public static function _1Xm():_06T {
        var _local1:_06T = new _06T();
        _local1.setStringBuilder(new _5R().setParams(_TG._025));
        _local1.setTextWidth((_QU._IY - 20)).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setSize(_QU._0F8).setColor(0xB3B3B3);
        _local1.y = 42;
        return (_local1);
    }

    public static function _0ey():_06T {
        var _local1:_06T;
        _local1 = new _06T();
        _local1.setSize(_QU._0F8).setColor(0xB3B3B3).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(100);
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        _local1.y = _QU._Qr;
        return (_local1);
    }

    public static function _1uG(_arg1:uint, _arg2:uint):_06T {
        var _local3:_06T = new _06T();
        _local3.setSize(_QU._0F8).setColor(_arg1).setBold(true).setHorizontalAlign(TextFormatAlign.CENTER).setWordWrap(true).setTextWidth(_arg2);
        return (_local3);
    }

    public static function _1CE():PetFeeder {
        var _local1:PetFeeder = new PetFeeder();
        _local1.y = _QU._1Cr;
        return (_local1);
    }

    public static function _Jg():PetFuser {
        var _local1:PetFuser = new PetFuser();
        _local1.y = (_QU._1Cr + 50);
        return (_local1);
    }

    public static function _1qw():_0SX {
        var _local1:_0SX;
        _local1 = new _0SX();
        _local1.x = _QU._aC;
        _local1.y = _QU._0Xa;
        return (_local1);
    }

    public static function _09O():_0t5 {
        var _local1:_0t5 = new _0t5();
        _local1.x = (_QU._aC + 35);
        _local1._0QF(true);
        return (_local1);
    }

    public static function _1l():_12V {
        var _local1:_12V;
        _local1 = new _12V();
        _local1.x = (_QU._aC + 35);
        _local1._0QF(true);
        _local1._zc = true;
        return (_local1);
    }

    public static function _b(_arg1:uint, _arg2:uint, _arg3:int, _arg4:Boolean, _arg5:Boolean, _arg6:int = 2):Shape {
        var _local7:Shape;
        _local7 = new Shape();
        ((_arg4) && (_local7.graphics.beginFill(0x464646, 1)));
        ((_arg5) && (_local7.graphics.lineStyle(_arg6, _arg2)));
        _local7.graphics.drawRoundRect(0, _arg3, _arg1, _arg1, 16, 16);
        _local7.x = ((100 - _arg1) * 0.5);
        return (_local7);
    }

    public static function _1JY(_arg1:int):_05E {
        var _local2:_05E = new _05E();
        _local2.y = 4;
        _local2.x = ((_arg1 - _local2.width) - 5);
        return (_local2);
    }

    public static function _0G():_yz {
        var _local1:_yz;
        _local1 = new _yz(173, 0);
        _local1.x = 5;
        _local1.y = 64;
        return (_local1);
    }

    public static function _1eh(_arg1:uint, _arg2:uint = 80):Bitmap {
        return (new Bitmap(ObjectLibrary.getRedrawnTextureFromType(_arg1, _arg2, true)));
    }

    public static function _ZC():Bitmap {
        return (_1YM(6466));
    }

    public static function _024(_arg1:uint):Bitmap {
        return (new Bitmap(ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true)));
    }

    public static function _1TV():FusionStrength {
        var _local1:FusionStrength = new FusionStrength();
        _local1.y = _QU._0hg;
        _local1.x = ((_QU._IY - _local1.width) * 0.5);
        return (_local1);
    }

    public static function _1Ir(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean = false):_06T {
        var _local5:_06T = new _06T();
        _local5.setSize(_arg2).setColor(_arg1).setBold(_arg3);
        _local5.filters = ((_arg4) ? [new DropShadowFilter(0, 0, 0)] : []);
        return (_local5);
    }

    public static function _1h(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean = false):_06T {
        var _local5:_06T = new _06T();
        _local5.setSize(_arg2).setColor(_arg1).setBold(_arg3);
        _local5.setVerticalAlign(_06T.BOTTOM);
        _local5.filters = ((_arg4) ? [new DropShadowFilter(0, 0, 0)] : []);
        return (_local5);
    }

    public static function _1oI(_arg1:uint, _arg2:uint):_1l_ {
        var _local3:_1l_ = new _1l_();
        _local3.draw(_arg1, _arg2);
        _local3._0ho(_1l_.HORIZONTAL_DIVISION, 30);
        _local3._0ho(_1l_.HORIZONTAL_DIVISION, 212);
        _local3._0ho(_1l_.HORIZONTAL_DIVISION, 349);
        return (_local3);
    }

    public static function _0s5(_arg1:uint, _arg2:uint):_1l_ {
        var _local3:_1l_ = new _1l_();
        _local3.draw(_arg1, _arg2);
        _local3._0ho(_1l_.HORIZONTAL_DIVISION, 30);
        _local3._0ho(_1l_.HORIZONTAL_DIVISION, 206);
        return (_local3);
    }

    private static function _07H():PetAbilityMeter {
        var _local1:PetAbilityMeter;
        _local1 = new PetAbilityMeter();
        _local1.y = _QU._n6;
        return (_local1);
    }

    private static function _1YM(_arg1:uint):Bitmap {
        var _local2:Bitmap = new Bitmap();
        var _local3:XML = ObjectLibrary._18H[_arg1];
        var _local4:int = 5;
        if (_local3.hasOwnProperty("ScaleValue")) {
            _local4 = _local3.ScaleValue;
        }
        ;
        var _local5:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true, true, _local4);
        _local5 = BitmapUtil._6L(_local5, 4, 4, (_local5.width - 8), (_local5.height - 8));
        _local2 = new Bitmap(_local5);
        return (_local2);
    }


}
}//package _08Y

