// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d._1I8

package com.company.assembleegameclient.engine3d {

public class _1I8 {

    public static function _VG(_arg1:_1I8, _arg2:_1I8):Number {
        var _local3:Number;
        var _local4:int;
        var _local5:Number = Number.MAX_VALUE;
        var _local6:Number = Number.MIN_VALUE;
        _local4 = 0;
        while (_local4 < _arg1._1Ig.length) {
            _local3 = _arg2._1UZ.vL_[((_arg1._1Ig[_local4] * 3) + 2)];
            _local5 = (((_local3 < _local5)) ? _local3 : _local5);
            _local6 = (((_local3 > _local6)) ? _local3 : _local6);
            _local4++;
        }
        ;
        var _local7:Number = Number.MAX_VALUE;
        var _local8:Number = Number.MIN_VALUE;
        _local4 = 0;
        while (_local4 < _arg2._1Ig.length) {
            _local3 = _arg2._1UZ.vL_[((_arg2._1Ig[_local4] * 3) + 2)];
            _local7 = (((_local3 < _local7)) ? _local3 : _local7);
            _local8 = (((_local3 > _local8)) ? _local3 : _local8);
            _local4++;
        }
        ;
        if (_local7 > _local5) {
            return (-1);
        }
        ;
        if (_local7 < _local5) {
            return (1);
        }
        ;
        if (_local8 > _local6) {
            return (-1);
        }
        ;
        if (_local8 < _local6) {
            return (1);
        }
        ;
        return (0);
    }

    public function _1I8(_arg1:_2c, _arg2:Vector.<int>, _arg3:Boolean) {
        this._1UZ = _arg1;
        this._1Ig = _arg2;
        this._0OH = _arg3;
    }
    public var _1UZ:_2c;
    public var _1Ig:Vector.<int>;
    public var _0OH:Boolean;


}
}//package com.company.assembleegameclient.engine3d

