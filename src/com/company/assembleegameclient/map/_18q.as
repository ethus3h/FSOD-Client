// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._18q

package com.company.assembleegameclient.map {
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util._1Os;

import flash.geom.Matrix3D;
import flash.geom.PerspectiveProjection;
import flash.geom.Rectangle;
import flash.geom.Vector3D;

public class _18q {

    public static const _i5:Vector3D = new Vector3D(0, 0, 1);
    public static const _IA:Rectangle = new Rectangle(-300, -325, 600, 600);
    public static const _2L:Rectangle = new Rectangle(-300, -450, 600, 600);
    private static const _1rN:Rectangle = new Rectangle(-400, -325, 800, 600);
    private static const _0Aj:Rectangle = new Rectangle(-400, -275, 800, 500);

    private const _AO:Number = 0.5;
    private const _03R:int = 10000;

    public function _18q() {
        this._10c = new PerspectiveProjection();
        this.wToS_ = new Matrix3D();
        this._75 = new Matrix3D();
        this._Dd = new Matrix3D();
        this._05O = new Matrix3D();
        this._0xr = new Vector3D();
        this._d = new Vector3D();
        this._1ZS = new Vector3D();
        this._K = new Vector3D();
        this._BG = new Vector.<Number>(16, true);
        super();
        this._10c.focalLength = 3;
        this._10c.fieldOfView = 48;
        this._05O.appendScale(50, 50, 50);
        this._d.x = 0;
        this._d.y = 0;
        this._d.z = -1;
    }
    public var x_:Number;
    public var y_:Number;
    public var z_:Number;
    public var angleRad_:Number;
    public var _0Ug:Rectangle;
    public var _10c:PerspectiveProjection;
    public var maxDist_:Number;
    public var _0Dp:Number;
    public var _0Fy:Boolean = false;
    public var wToS_:Matrix3D;
    public var _75:Matrix3D;
    public var _Dd:Matrix3D;
    private var _05O:Matrix3D;
    private var _0xr:Vector3D;
    private var _d:Vector3D;
    private var _1ZS:Vector3D;
    private var _K:Vector3D;
    private var _12r:Boolean = false;
    private var _0ca:Number = 0;
    private var _BG:Vector.<Number>;

    public function configureCamera(_arg1:GameObject, _arg2:Boolean):void {
        var _local3:Rectangle = ((Parameters.data_.centerOnPlayer) ? _IA : _2L);
        if (Parameters._20Z) {
            if (!Parameters._0gP) {
                _local3 = _1rN;
            } else {
                _local3 = _0Aj;
            }
            ;
        }
        ;
        var _local4:Number = Parameters.data_.cameraAngle;
        this.configure(_arg1.x_, _arg1.y_, 12, _local4, _local3);
        this._0Fy = _arg2;
    }

    public function startJitter():void {
        this._12r = true;
        this._0ca = 0;
    }

    public function update(_arg1:Number):void {
        if (((this._12r) && ((this._0ca < this._AO)))) {
            this._0ca = (this._0ca + ((_arg1 * this._AO) / this._03R));
            if (this._0ca > this._AO) {
                this._0ca = this._AO;
            }
            ;
        }
        ;
    }

    public function configure(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:Rectangle):void {
        if (this._12r) {
            _arg1 = (_arg1 + _1Os._1Bg(this._0ca));
            _arg2 = (_arg2 + _1Os._1Bg(this._0ca));
        }
        ;
        this.x_ = _arg1;
        this.y_ = _arg2;
        this.z_ = _arg3;
        this.angleRad_ = _arg4;
        this._0Ug = _arg5;
        this._0xr.x = _arg1;
        this._0xr.y = _arg2;
        this._0xr.z = _arg3;
        this._K.x = Math.cos(this.angleRad_);
        this._K.y = Math.sin(this.angleRad_);
        this._K.z = 0;
        this._1ZS.x = Math.cos((this.angleRad_ + (Math.PI / 2)));
        this._1ZS.y = Math.sin((this.angleRad_ + (Math.PI / 2)));
        this._1ZS.z = 0;
        this._BG[0] = this._K.x;
        this._BG[1] = this._1ZS.x;
        this._BG[2] = this._d.x;
        this._BG[3] = 0;
        this._BG[4] = this._K.y;
        this._BG[5] = this._1ZS.y;
        this._BG[6] = this._d.y;
        this._BG[7] = 0;
        this._BG[8] = this._K.z;
        this._BG[9] = -1;
        this._BG[10] = this._d.z;
        this._BG[11] = 0;
        this._BG[12] = -(this._0xr.dotProduct(this._K));
        this._BG[13] = -(this._0xr.dotProduct(this._1ZS));
        this._BG[14] = -(this._0xr.dotProduct(this._d));
        this._BG[15] = 1;
        this._75.rawData = this._BG;
        this._Dd = this._05O;
        this.wToS_.identity();
        this.wToS_.append(this._75);
        this.wToS_.append(this._Dd);
        var _local6:Number = (this._0Ug.width / (2 * 50));
        var _local7:Number = (this._0Ug.height / (2 * 50));
        this.maxDist_ = (Math.sqrt(((_local6 * _local6) + (_local7 * _local7))) + 1);
        this._0Dp = (this.maxDist_ * this.maxDist_);
    }


}
}//package com.company.assembleegameclient.map

