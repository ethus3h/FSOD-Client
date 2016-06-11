// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d._2c

package com.company.assembleegameclient.engine3d {
import _1VI._0HA;
import _1VI._TT;

import com.company.util.ConversionUtil;

import flash.display3D.Context3D;
import flash.utils.ByteArray;

public class _2c {

    private static var _1t:Object = new Object();
    private static var _1CV:Object = new Object();

    public static function _0At(_arg1:String, _arg2:ByteArray):void {
        var _local3:_0HA = new _0HA();
        _local3.readBytes(_arg2);
        _1CV[_arg1] = _local3;
    }

    public static function _057(_arg1:Context3D):void {
        var _local2:_0HA;
        for each (_local2 in _1CV) {
            _local2._ej(_arg1);
        }
        ;
    }

    public static function _0UK(_arg1:String, _arg2:String):void {
        var _local11:String;
        var _local12:_2c;
        var _local13:String;
        var _local14:int;
        var _local15:Array;
        var _local16:String;
        var _local17:String;
        var _local18:Array;
        var _local19:Array;
        var _local20:String;
        var _local21:Vector.<int>;
        var _local22:int;
        var _local3:Array = _arg2.split(/\s*\n\s*/);
        var _local4:Array = [];
        var _local5:Array = [];
        var _local6:Array = [];
        var _local7:Object = {};
        var _local8:Array = [];
        var _local9:String;
        var _local10:Array = [];
        for each (_local11 in _local3) {
            if (!(((_local11.charAt(0) == "#")) || ((_local11.length == 0)))) {
                _local15 = _local11.split(/\s+/);
                if (_local15.length != 0) {
                    _local16 = _local15.shift();
                    if (_local16.length != 0) {
                        switch (_local16) {
                            case "v":
                                if (_local15.length != 3) {
                                    return;
                                }
                                ;
                                _local4.push(_local15);
                                break;
                            case "vt":
                                if (_local15.length != 2) {
                                    return;
                                }
                                ;
                                _local5.push(_local15);
                                break;
                            case "f":
                                if (_local15.length < 3) {
                                    return;
                                }
                                ;
                                _local8.push(_local15);
                                _local10.push(_local9);
                                for each (_local17 in _local15) {
                                    if (!_local7.hasOwnProperty(_local17)) {
                                        _local7[_local17] = _local6.length;
                                        _local6.push(_local17);
                                    }
                                    ;
                                }
                                ;
                                break;
                            case "usemtl":
                                if (_local15.length != 1) {
                                    return;
                                }
                                ;
                                _local9 = _local15[0];
                                break;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        _local12 = new (_2c)();
        for each (_local13 in _local6) {
            _local18 = _local13.split("/");
            ConversionUtil._UJ(_local4[(int(_local18[0]) - 1)], _local12.vL_);
            if ((((_local18.length > 1)) && ((_local18[1].length > 0)))) {
                ConversionUtil._UJ(_local5[(int(_local18[1]) - 1)], _local12.uvts_);
                _local12.uvts_.push(0);
            } else {
                _local12.uvts_.push(0, 0, 0);
            }
            ;
        }
        ;
        _local14 = 0;
        while (_local14 < _local8.length) {
            _local19 = _local8[_local14];
            _local20 = _local10[_local14];
            _local21 = new Vector.<int>();
            _local22 = 0;
            while (_local22 < _local19.length) {
                _local21.push(_local7[_local19[_local22]]);
                _local22++;
            }
            ;
            _local12.faces_.push(new _1I8(_local12, _local21, (((_local20 == null)) || (!((_local20.substr(0, 5) == "Solid"))))));
            _local14++;
        }
        ;
        _local12._11Q();
        _1t[_arg1] = _local12;
    }

    public static function _iF(_arg1:String):_2c {
        return (_1t[_arg1]);
    }

    public static function _0s(_arg1:String):_1KR {
        var _local2:_2c = _1t[_arg1];
        if (_local2 == null) {
            return (null);
        }
        ;
        return (new _1KR(_local2));
    }

    public static function _d6(_arg1:String):_TT {
        var _local2:_0HA = _1CV[_arg1];
        if (_local2 == null) {
            return (null);
        }
        ;
        return (new _TT(_local2));
    }

    public function _2c() {
        this.vL_ = new Vector.<Number>();
        this.uvts_ = new Vector.<Number>();
        this.faces_ = new Vector.<_1I8>();
        super();
    }
    public var vL_:Vector.<Number>;
    public var uvts_:Vector.<Number>;
    public var faces_:Vector.<_1I8>;

    public function toString():String {
        var _local1 = "";
        _local1 = (_local1 + (((("vL(" + this.vL_.length) + "): ") + this.vL_.join()) + "\n"));
        _local1 = (_local1 + (((("uvts(" + this.uvts_.length) + "): ") + this.uvts_.join()) + "\n"));
        _local1 = (_local1 + (((("faces_(" + this.faces_.length) + "): ") + this.faces_.join()) + "\n"));
        return (_local1);
    }

    public function _11Q():void {
        this.faces_.sort(_1I8._VG);
    }


}
}//package com.company.assembleegameclient.engine3d

