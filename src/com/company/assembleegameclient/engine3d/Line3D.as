// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.Line3D

package com.company.assembleegameclient.engine3d {
import flash.geom.Vector3D;

public class Line3D {

    public static function _0nR():Boolean {
        return (UnitTest.run());
    }

    public function Line3D(_arg1:Vector3D, _arg2:Vector3D) {
        this.v0_ = _arg1;
        this.v1_ = _arg2;
    }
    public var v0_:Vector3D;
    public var v1_:Vector3D;

    public function _1pX(_arg1:Line3D):int {
        var _local2:Number = (((_arg1.v1_.y - _arg1.v0_.y) * (this.v1_.x - this.v0_.x)) - ((_arg1.v1_.x - _arg1.v0_.x) * (this.v1_.y - this.v0_.y)));
        if ((((_local2 < 0.001)) && ((_local2 > -0.001)))) {
            return (Order._7B);
        }
        ;
        var _local3:Number = (((_arg1.v1_.x - _arg1.v0_.x) * (this.v0_.y - _arg1.v0_.y)) - ((_arg1.v1_.y - _arg1.v0_.y) * (this.v0_.x - _arg1.v0_.x)));
        var _local4:Number = (((this.v1_.x - this.v0_.x) * (this.v0_.y - _arg1.v0_.y)) - ((this.v1_.y - this.v0_.y) * (this.v0_.x - _arg1.v0_.x)));
        if ((((((((_local3 < 0.001)) && ((_local3 > -0.001)))) && ((_local4 < 0.001)))) && ((_local4 > -0.001)))) {
            return (Order._7B);
        }
        ;
        var _local5:Number = (_local3 / _local2);
        var _local6:Number = (_local4 / _local2);
        if ((((((((_local5 > 1)) || ((_local5 < 0)))) || ((_local6 > 1)))) || ((_local6 < 0)))) {
            return (Order._7B);
        }
        ;
        var _local7:Number = ((this.v0_.z + (_local5 * (this.v1_.z - this.v0_.z))) - (_arg1.v0_.z + (_local6 * (_arg1.v1_.z - _arg1.v0_.z))));
        if ((((_local7 < 0.001)) && ((_local7 > -0.001)))) {
            return (Order._7B);
        }
        ;
        if (_local7 > 0) {
            return (Order._Un);
        }
        ;
        return (Order._WA);
    }

    public function _0e3(_arg1:Number):Vector3D {
        return (new Vector3D((this.v0_.x + ((this.v1_.x - this.v0_.x) * _arg1)), (this.v0_.y + ((this.v1_.y - this.v0_.y) * _arg1)), (this.v0_.z + ((this.v1_.z - this.v0_.z) * _arg1))));
    }

    public function toString():String {
        return ((((("(" + this.v0_) + ", ") + this.v1_) + ")"));
    }


}
}//package com.company.assembleegameclient.engine3d

import com.company.assembleegameclient.engine3d.Line3D;
import com.company.assembleegameclient.engine3d.Order;

import flash.geom.Vector3D;

class UnitTest {


    private static function testCrossZ():Boolean {
        var _local1:Line3D = new Line3D(new Vector3D(0, 0, 0), new Vector3D(0, 100, 0));
        var _local2:Line3D = new Line3D(new Vector3D(10, 0, 10), new Vector3D(-10, 100, -100));
        if (_local1._1pX(_local2) != Order._Un) {
            return (false);
        }
        ;
        if (_local2._1pX(_local1) != Order._WA) {
            return (false);
        }
        ;
        _local1 = new Line3D(new Vector3D(1, 1, 200), new Vector3D(6, 6, 200));
        _local2 = new Line3D(new Vector3D(3, 1, -100), new Vector3D(1, 3, -100));
        if (_local1._1pX(_local2) != Order._Un) {
            return (false);
        }
        ;
        if (_local2._1pX(_local1) != Order._WA) {
            return (false);
        }
        ;
        return (true);
    }

    public static function run():Boolean {
        if (!testCrossZ()) {
            return (false);
        }
        ;
        return (true);
    }


}

