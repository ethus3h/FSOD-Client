﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.ConversionUtil

package com.company.util {
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.geom.Vector3D;

public class ConversionUtil {

    public static function _0t2(_arg1:Object, _arg2:String = ","):Array {
        if (_arg1 == null) {
            return (new Array());
        }
        ;
        var _local3:Array = _arg1.toString().split(_arg2).map(_Qh);
        return (_local3);
    }

    public static function _Kj(_arg1:Object, _arg2:String = ","):Array {
        if (_arg1 == null) {
            return (new Array());
        }
        ;
        var _local3:Array = _arg1.toString().split(_arg2).map(mapParseFloat);
        return (_local3);
    }

    public static function _0mJ(_arg1:Object, _arg2:String = ","):Vector.<int> {
        if (_arg1 == null) {
            return (new Vector.<int>());
        }
        ;
        var _local3:Vector.<int> = Vector.<int>(_arg1.toString().split(_arg2).map(_Qh));
        return (_local3);
    }

    public static function _No(_arg1:Object, _arg2:String = ","):Vector.<Number> {
        if (_arg1 == null) {
            return (new Vector.<Number>());
        }
        ;
        var _local3:Vector.<Number> = Vector.<Number>(_arg1.toString().split(_arg2).map(mapParseFloat));
        return (_local3);
    }

    public static function _cr(_arg1:Object, _arg2:String = ","):Array {
        if (_arg1 == null) {
            return (new Array());
        }
        ;
        var _local3:Array = _arg1.toString().split(_arg2);
        return (_local3);
    }

    public static function _eX(_arg1:Object, _arg2:String = ","):Rectangle {
        if (_arg1 == null) {
            return (new Rectangle());
        }
        ;
        var _local3:Array = _arg1.toString().split(_arg2).map(mapParseFloat);
        return ((((((_local3 == null)) || ((_local3.length < 4)))) ? new Rectangle() : new Rectangle(_local3[0], _local3[1], _local3[2], _local3[3])));
    }

    public static function _1Ab(_arg1:Object, _arg2:String = ","):Point {
        if (_arg1 == null) {
            return (new Point());
        }
        ;
        var _local3:Array = _arg1.toString().split(_arg2).map(ConversionUtil.mapParseFloat);
        return ((((((_local3 == null)) || ((_local3.length < 2)))) ? new Point() : new Point(_local3[0], _local3[1])));
    }

    public static function _1La(_arg1:Object, _arg2:String = ","):Array {
        var _local3:Array = new Array();
        if (_arg1 == null) {
            _local3.push(new Point());
            _local3.push(new Point());
            return (_local3);
        }
        ;
        var _local4:Array = _arg1.toString().split(_arg2).map(ConversionUtil.mapParseFloat);
        if ((((_local4 == null)) || ((_local4.length < 4)))) {
            _local3.push(new Point());
            _local3.push(new Point());
            return (_local3);
        }
        ;
        _local3.push(new Point(_local4[0], _local4[1]));
        _local3.push(new Point(_local4[2], _local4[3]));
        return (_local3);
    }

    public static function _1IU(_arg1:Object, _arg2:String = ","):Vector3D {
        if (_arg1 == null) {
            return (new Vector3D());
        }
        ;
        var _local3:Array = _arg1.toString().split(_arg2).map(ConversionUtil.mapParseFloat);
        return ((((((_local3 == null)) || ((_local3.length < 3)))) ? new Vector3D() : new Vector3D(_local3[0], _local3[1], _local3[2])));
    }

    public static function _cl(_arg1:Object, _arg2:String = ","):Vector.<int> {
        if (_arg1 == null) {
            return (new Vector.<int>());
        }
        ;
        var _local3:Vector.<int> = Vector.<int>(_arg1.toString().split(_arg2).map(_10Z));
        return (_local3);
    }

    public static function _UJ(_arg1:Object, _arg2:Vector.<Number>, _arg3:String = ","):void {
        var _local5:Number;
        if (_arg1 == null) {
            return;
        }
        ;
        var _local4:Array = _arg1.toString().split(_arg3).map(mapParseFloat);
        for each (_local5 in _local4) {
            _arg2.push(_local5);
        }
        ;
    }

    public static function _1gW(_arg1:Object, _arg2:Vector.<int>, _arg3:String = ","):void {
        var _local5:int;
        if (_arg1 == null) {
            return;
        }
        ;
        var _local4:Array = _arg1.toString().split(_arg3).map(mapParseFloat);
        for each (_local5 in _local4) {
            _arg2.push(_local5);
        }
        ;
    }

    public static function mapParseFloat(_arg1, ..._args):Number {
        return (parseFloat(_arg1));
    }

    public static function _Qh(_arg1, ..._args):Number {
        return (parseInt(_arg1));
    }

    public static function _10Z(_arg1, ..._args):Number {
        return (String(_arg1).charCodeAt());
    }

    public static function _6(_arg1:Vector3D):Array {
        return ([_arg1.x, _arg1.y, _arg1.z]);
    }

    public function ConversionUtil(_arg1:StaticEnforcer) {
    }


}
}//package com.company.util

class StaticEnforcer {


}
