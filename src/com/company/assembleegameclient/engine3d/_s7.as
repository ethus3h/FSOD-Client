// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d._s7

package com.company.assembleegameclient.engine3d {
import flash.geom.Vector3D;

public class _s7 {

    public static const NONE:int = 0;
    public static const _1fQ:int = 1;
    public static const _tT:int = 2;
    public static const _14M:int = 3;

    public static function _BF(_arg1:Vector3D, _arg2:Vector3D, _arg3:Vector3D, _arg4:Vector3D):void {
        var _local5:Number = (_arg2.x - _arg1.x);
        var _local6:Number = (_arg2.y - _arg1.y);
        var _local7:Number = (_arg2.z - _arg1.z);
        var _local8:Number = (_arg3.x - _arg1.x);
        var _local9:Number = (_arg3.y - _arg1.y);
        var _local10:Number = (_arg3.z - _arg1.z);
        _arg4.x = ((_local6 * _local10) - (_local7 * _local9));
        _arg4.y = ((_local7 * _local8) - (_local5 * _local10));
        _arg4.z = ((_local5 * _local9) - (_local6 * _local8));
        _arg4.normalize();
    }

    public static function _M6(_arg1:Vector.<Number>, _arg2:Vector3D):void {
        var _local3:Number = (_arg1[3] - _arg1[0]);
        var _local4:Number = (_arg1[4] - _arg1[1]);
        var _local5:Number = (_arg1[5] - _arg1[2]);
        var _local6:Number = (_arg1[6] - _arg1[0]);
        var _local7:Number = (_arg1[7] - _arg1[1]);
        var _local8:Number = (_arg1[8] - _arg1[2]);
        _arg2.x = ((_local4 * _local8) - (_local5 * _local7));
        _arg2.y = ((_local5 * _local6) - (_local3 * _local8));
        _arg2.z = ((_local3 * _local7) - (_local4 * _local6));
        _arg2.normalize();
    }

    public function _s7(_arg1:Vector3D = null, _arg2:Vector3D = null, _arg3:Vector3D = null) {
        if (((((!((_arg1 == null))) && (!((_arg2 == null))))) && (!((_arg3 == null))))) {
            this._06 = new Vector3D();
            _BF(_arg1, _arg2, _arg3, this._06);
            this._0NN = -(this._06.dotProduct(_arg1));
        }
        ;
    }
    public var _06:Vector3D;
    public var _0NN:Number;

    public function _1Qi(_arg1:Vector3D):int {
        var _local2:Number = (this._06.dotProduct(_arg1) + this._0NN);
        if (_local2 > 0.001) {
            return (_1fQ);
        }
        ;
        if (_local2 < -0.001) {
            return (_tT);
        }
        ;
        return (_14M);
    }

    public function _1ny(_arg1:Line3D):Number {
        var _local2:Number = (((-(this._0NN) - (this._06.x * _arg1.v0_.x)) - (this._06.y * _arg1.v0_.y)) - (this._06.z * _arg1.v0_.z));
        var _local3:Number = (((this._06.x * (_arg1.v1_.x - _arg1.v0_.x)) + (this._06.y * (_arg1.v1_.y - _arg1.v0_.y))) + (this._06.z * (_arg1.v1_.z - _arg1.v0_.z)));
        if (_local3 == 0) {
            return (NaN);
        }
        ;
        return ((_local2 / _local3));
    }

    public function _1dw(_arg1:Number, _arg2:Number):Number {
        return ((-(((this._0NN + (this._06.x * _arg1)) + (this._06.y * _arg2))) / this._06.z));
    }

    public function toString():String {
        return ((((("Plane(n = " + this._06) + ", d = ") + this._0NN) + ")"));
    }


}
}//package com.company.assembleegameclient.engine3d

