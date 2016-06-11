// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d._0Kf

package com.company.assembleegameclient.engine3d {
import flash.geom.Vector3D;

public class _0Kf {

    public static const LIGHT_VECTOR:Vector3D = _1PK();


    public static function _0H9(_arg1:Vector3D, _arg2:Number):Number {
        var _local3:Number = Math.max(0, _arg1.dotProduct(_0Kf.LIGHT_VECTOR));
        return ((_arg2 + ((1 - _arg2) * _local3)));
    }

    private static function _1PK():Vector3D {
        var _local1:Vector3D = new Vector3D(1, 3, 2);
        _local1.normalize();
        return (_local1);
    }


}
}//package com.company.assembleegameclient.engine3d

