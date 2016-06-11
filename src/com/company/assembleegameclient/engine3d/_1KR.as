// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d._1KR

package com.company.assembleegameclient.engine3d {
import com.company.assembleegameclient.map._18q;

import flash.display.BitmapData;
import flash.display.IGraphicsData;
import flash.geom.Matrix3D;
import flash.geom.Utils3D;
import flash.geom.Vector3D;

public class _1KR {

    public static function getObject(_arg1:String):_1KR {
        var _local2:_2c = _2c._iF(_arg1);
        return (new _1KR(_local2));
    }

    public function _1KR(_arg1:_2c = null) {
        var _local2:_1I8;
        this.faces_ = new Vector.<ObjectFace3D>();
        this.vS_ = new Vector.<Number>();
        this.vW_ = new Vector.<Number>();
        this._Bp = new Matrix3D();
        super();
        if (_arg1 != null) {
            this._1UZ = _arg1;
            this.vL_ = this._1UZ.vL_;
            this.uvts_ = this._1UZ.uvts_.concat();
            for each (_local2 in this._1UZ.faces_) {
                this.faces_.push(new ObjectFace3D(this, _local2._1Ig, _local2._0OH));
            }
            ;
        } else {
            this.vL_ = new Vector.<Number>();
            this.uvts_ = new Vector.<Number>();
        }
        ;
        this.setPosition(0, 0, 0, 0);
    }
    public var _1UZ:_2c = null;
    public var vL_:Vector.<Number>;
    public var uvts_:Vector.<Number>;
    public var faces_:Vector.<ObjectFace3D>;
    public var vS_:Vector.<Number>;
    public var vW_:Vector.<Number>;
    public var _Bp:Matrix3D;

    public function dispose():void {
        var _local1:ObjectFace3D;
        this.vL_ = null;
        this.uvts_ = null;
        for each (_local1 in this.faces_) {
            _local1.dispose();
        }
        ;
        this.faces_.length = 0;
        this.faces_ = null;
        this.vS_ = null;
        this.vW_ = null;
        this._Bp = null;
    }

    public function setPosition(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number):void {
        var _local5:ObjectFace3D;
        this._Bp.identity();
        this._Bp.appendRotation(_arg4, Vector3D.Z_AXIS);
        this._Bp.appendTranslation(_arg1, _arg2, _arg3);
        this._Bp.transformVectors(this.vL_, this.vW_);
        for each (_local5 in this.faces_) {
            _local5._14y();
        }
        ;
    }

    public function _ON(_arg1:int):Vector3D {
        var _local2:int = (_arg1 * 3);
        if (_local2 >= this.vW_.length) {
            return (null);
        }
        ;
        return (new Vector3D(this.vW_[_local2], this.vW_[(_local2 + 1)], this.vW_[(_local2 + 2)]));
    }

    public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:uint, _arg4:BitmapData):void {
        var _local5:ObjectFace3D;
        Utils3D.projectVectors(_arg2.wToS_, this.vW_, this.vS_, this.uvts_);
        for each (_local5 in this.faces_) {
            _local5.draw(_arg1, _arg3, _arg4);
        }
        ;
    }


}
}//package com.company.assembleegameclient.engine3d

