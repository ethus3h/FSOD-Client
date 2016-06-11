// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.ObjectFace3D

package com.company.assembleegameclient.engine3d {
import _1ES._return;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.MoreColorUtil;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsPath;
import flash.display.GraphicsPathCommand;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.geom.ColorTransform;
import flash.geom.Matrix;
import flash.geom.Vector3D;

public class ObjectFace3D {

    public static const _0jV:BitmapData = new BitmapData(1, 1, true, 0xFF000000);

    public const bitmapFill_:GraphicsBitmapFill = new GraphicsBitmapFill();

    public function ObjectFace3D(_arg1:_1KR, _arg2:Vector.<int>, _arg3:Boolean = true) {
        this._153 = new GraphicsSolidFill(0xFFFFFF, 1);
        this.tToS_ = new Matrix();
        this.tempMatrix_ = new Matrix();
        super();
        this.obj_ = _arg1;
        this._B6 = _arg2;
        this._0OH = _arg3;
        var _local4:Vector.<int> = new Vector.<int>();
        var _local5:int;
        while (_local5 < this._B6.length) {
            _local4.push((((_local5 == 0)) ? GraphicsPathCommand.MOVE_TO : GraphicsPathCommand.LINE_TO));
            _local5++;
        }
        ;
        var _local6:Vector.<Number> = new Vector.<Number>();
        _local6.length = (this._B6.length * 2);
        this.path_ = new GraphicsPath(_local4, _local6);
    }
    public var obj_:_1KR;
    public var _B6:Vector.<int>;
    public var _0OH:Boolean;
    public var _nS:Boolean = false;
    public var texture_:BitmapData = null;
    public var normalL_:Vector3D = null;
    public var _0mc:Vector3D;
    public var _0NA:Number = 1;
    private var path_:GraphicsPath;
    private var _153:GraphicsSolidFill;
    private var tToS_:Matrix;
    private var tempMatrix_:Matrix;

    public function dispose():void {
        this._B6 = null;
        this.path_.commands = null;
        this.path_.data = null;
        this.path_ = null;
    }

    public function _14y():void {
        this._0mc = new Vector3D();
        _s7._BF(this.obj_._ON(this._B6[0]), this.obj_._ON(this._B6[1]), this.obj_._ON(this._B6[(this._B6.length - 1)]), this._0mc);
        this._0NA = _0Kf._0H9(this._0mc, 0.75);
        if (this.normalL_ != null) {
            this._0mc = this.obj_._Bp.deltaTransformVector(this.normalL_);
        }
        ;
    }

    public function draw(_arg1:Vector.<IGraphicsData>, _arg2:uint, _arg3:BitmapData):void {
        var _local13:int;
        var _local4:int = (this._B6[0] * 2);
        var _local5:int = (this._B6[1] * 2);
        var _local6:int = (this._B6[(this._B6.length - 1)] * 2);
        var _local7:Vector.<Number> = this.obj_.vS_;
        var _local8:Number = (_local7[_local5] - _local7[_local4]);
        var _local9:Number = (_local7[(_local5 + 1)] - _local7[(_local4 + 1)]);
        var _local10:Number = (_local7[_local6] - _local7[_local4]);
        var _local11:Number = (_local7[(_local6 + 1)] - _local7[(_local4 + 1)]);
        if (((_local8 * _local11) - (_local9 * _local10)) < 0) {
            return;
        }
        ;
        if (((!(Parameters.data_.GPURender)) && (((!(this._0OH)) || ((_arg3 == null)))))) {
            this._153.color = MoreColorUtil._z6(new ColorTransform(this._0NA, this._0NA, this._0NA), _arg2);
            _arg1.push(this._153);
        } else {
            if ((((_arg3 == null)) && (Parameters.data_.GPURender))) {
                _arg3 = _0jV;
            } else {
                _arg3 = TextureRedrawer._01(_arg3, this._0NA);
            }
            ;
            this.bitmapFill_.bitmapData = _arg3;
            this.bitmapFill_.matrix = this._1Ve(_arg3);
            _arg1.push(this.bitmapFill_);
        }
        ;
        var _local12:int;
        while (_local12 < this._B6.length) {
            _local13 = this._B6[_local12];
            this.path_.data[(_local12 * 2)] = _local7[(_local13 * 2)];
            this.path_.data[((_local12 * 2) + 1)] = _local7[((_local13 * 2) + 1)];
            _local12++;
        }
        ;
        _arg1.push(this.path_);
        _arg1.push(_1WM.END_FILL);
        if (((((this._nS) && (Parameters._0g5()))) && (!((this.bitmapFill_ == null))))) {
            _return._02n(this.bitmapFill_, true);
        }
        ;
    }

    private function _1Ve(_arg1:BitmapData):Matrix {
        var _local2:Vector.<Number> = this.obj_.uvts_;
        var _local3:int = (this._B6[0] * 3);
        var _local4:int = (this._B6[1] * 3);
        var _local5:int = (this._B6[(this._B6.length - 1)] * 3);
        var _local6:Number = (_local2[_local3] * _arg1.width);
        var _local7:Number = (_local2[(_local3 + 1)] * _arg1.height);
        this.tToS_.a = ((_local2[_local4] * _arg1.width) - _local6);
        this.tToS_.b = ((_local2[(_local4 + 1)] * _arg1.height) - _local7);
        this.tToS_.c = ((_local2[_local5] * _arg1.width) - _local6);
        this.tToS_.d = ((_local2[(_local5 + 1)] * _arg1.height) - _local7);
        this.tToS_.tx = _local6;
        this.tToS_.ty = _local7;
        this.tToS_.invert();
        _local3 = (this._B6[0] * 2);
        _local4 = (this._B6[1] * 2);
        _local5 = (this._B6[(this._B6.length - 1)] * 2);
        var _local8:Vector.<Number> = this.obj_.vS_;
        this.tempMatrix_.a = (_local8[_local4] - _local8[_local3]);
        this.tempMatrix_.b = (_local8[(_local4 + 1)] - _local8[(_local3 + 1)]);
        this.tempMatrix_.c = (_local8[_local5] - _local8[_local3]);
        this.tempMatrix_.d = (_local8[(_local5 + 1)] - _local8[(_local3 + 1)]);
        this.tempMatrix_.tx = _local8[_local3];
        this.tempMatrix_.ty = _local8[(_local3 + 1)];
        this.tToS_.concat(this.tempMatrix_);
        return (this.tToS_);
    }


}
}//package com.company.assembleegameclient.engine3d

