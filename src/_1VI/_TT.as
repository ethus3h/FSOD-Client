// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1VI._TT

package _1VI {
import _in._1oz;

import flash.display.BitmapData;
import flash.display3D.Context3D;
import flash.display3D.Context3DTextureFormat;
import flash.display3D.Context3DVertexBufferFormat;
import flash.display3D.textures.Texture;
import flash.geom.Matrix3D;
import flash.geom.Vector3D;

public class _TT {

    public static const _KF:BitmapData = new BitmapData(1, 1, true, 0x888888FF);

    public function _TT(_arg1:_0HA) {
        this._1UZ = _arg1;
        this._X2 = new Matrix3D();
        this._k6 = new Matrix3D();
        this._0bn = new Matrix3D();
    }
    public var _1UZ:_0HA = null;
    public var _X2:Matrix3D;
    public var _k6:Matrix3D;
    public var _0bn:Matrix3D;
    public var position:Vector3D;
    private var bitmapData:BitmapData;
    private var _cB:Number;
    private var texture_:Texture;

    public function _Zt(_arg1:BitmapData):void {
        this.bitmapData = _1oz._7b(_arg1);
    }

    public function setPosition(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number):void {
        this.position = new Vector3D(_arg1, -(_arg2), _arg3);
        this._cB = _arg4;
    }

    public function dispose():void {
        if (this.texture_ != null) {
            this.texture_.dispose();
            this.texture_ = null;
        }
        ;
        this.bitmapData = null;
        this._X2 = null;
        this._k6 = null;
        this._0bn = null;
        this.position = null;
    }

    public function UpdateModelMatrix(_arg1:Number, _arg2:Number):void {
        this._X2.identity();
        this._X2.appendRotation(-90, Vector3D.Z_AXIS);
        this._X2.appendRotation(-(this._cB), Vector3D.Z_AXIS);
        this._X2.appendTranslation(this.position.x, this.position.y, 0);
        this._X2.appendTranslation(_arg1, _arg2, 0);
    }

    public function GetModelMatrix():Matrix3D {
        return (this._X2);
    }

    public function draw(_arg1:Context3D):void {
        var _local2:_20t;
        _arg1.setVertexBufferAt(0, this._1UZ._Zr, 0, Context3DVertexBufferFormat.FLOAT_3);
        _arg1.setVertexBufferAt(1, this._1UZ._Zr, 3, Context3DVertexBufferFormat.FLOAT_3);
        _arg1.setVertexBufferAt(2, this._1UZ._Zr, 6, Context3DVertexBufferFormat.FLOAT_2);
        if ((((this.texture_ == null)) && (!((this.bitmapData == null))))) {
            this.texture_ = _arg1.createTexture(this.bitmapData.width, this.bitmapData.height, Context3DTextureFormat.BGRA, false);
            this.texture_.uploadFromBitmapData(this.bitmapData);
        } else {
            if (this.texture_ == null) {
                this.bitmapData = _KF;
                this.texture_ = _arg1.createTexture(this.bitmapData.width, this.bitmapData.height, Context3DTextureFormat.BGRA, false);
                this.texture_.uploadFromBitmapData(this.bitmapData);
            }
            ;
        }
        ;
        _arg1.setTextureAt(0, this.texture_);
        for each (_local2 in this._1UZ._1KK) {
            if (_local2._1jc != null) {
                _arg1.drawTriangles(_local2._1jc);
            }
            ;
        }
        ;
    }


}
}//package _1VI

