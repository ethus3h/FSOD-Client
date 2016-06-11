// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//in .Graphic3D

package _in {
import _1ES._return;

import _u5._1a5;
import _u5._1kJ;
import _u5._NH;
import _u5._default;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsGradientFill;
import flash.display3D.Context3DProgramType;
import flash.display3D.Context3DVertexBufferFormat;
import flash.display3D.IndexBuffer3D;
import flash.display3D.VertexBuffer3D;
import flash.geom.ColorTransform;
import flash.geom.Matrix;
import flash.geom.Matrix3D;

public class Graphic3D {

    private static const _9x:Vector.<Number> = Vector.<Number>([-0.5, 0.5, 0, 0, 0, 0, 0.01, 0, 1, 0.5, 0.5, 0, 0, 0, 0, 0.3, 1, 1, -0.5, -0.5, 0, 0, 0, 0, 0.1, 0, 0, 0.5, -0.5, 0, 0, 0, 0, 0.2, 1, 0]);
    private static const _1zg:Vector.<uint> = Vector.<uint>([0, 1, 2, 2, 1, 3]);

    public function Graphic3D() {
        this.matrix3D = new Matrix3D();
        super();
    }
    public var texture:_NH;
    public var matrix3D:Matrix3D;
    public var context3D:_1kJ;
    [Inject]
    public var _1kz:_1oz;
    [Inject]
    public var _Zr:_1a5;
    [Inject]
    public var _1jc:_default;
    private var bitmapData:BitmapData;
    private var matrix2D:Matrix;
    private var _0fo:Matrix;
    private var _js:Number = 0;
    private var _0N8:Vector.<Number>;
    private var _1zv:VertexBuffer3D;
    private var _0SY:VertexBuffer3D;
    private var _206:IndexBuffer3D;
    private var repeat:Boolean;

    public function _0B7(_arg1:GraphicsBitmapFill, _arg2:_1kJ):void {
        this.bitmapData = _arg1.bitmapData;
        this.repeat = _arg1.repeat;
        this.matrix2D = _arg1.matrix;
        this.texture = this._1kz.make(_arg1.bitmapData);
        this._0N8 = _return._1vC(_arg1);
        this._1zv = _return._bT(_arg1);
        this._js = _return._16b(_arg1);
        if (this._js != 0) {
            this._0N8 = Vector.<Number>([0, -(this._js), 0, 0]);
        }
        ;
        this.transform();
        var _local3:ColorTransform = _return._hW(this.bitmapData);
        _arg2._sU().setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 2, Vector.<Number>([_local3.redMultiplier, _local3.greenMultiplier, _local3.blueMultiplier, _local3.alphaMultiplier]));
        _arg2._sU().setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 3, Vector.<Number>([(_local3.redOffset / 0xFF), (_local3.greenOffset / 0xFF), (_local3.blueOffset / 0xFF), (_local3.alphaOffset / 0xFF)]));
    }

    public function _20(_arg1:GraphicsGradientFill, _arg2:_1kJ, _arg3:Number, _arg4:Number):void {
        this._0fo = _arg1.matrix;
        if ((((this._0SY == null)) || ((this._206 == null)))) {
            this._0SY = _arg2._sU().createVertexBuffer(4, 9);
            this._0SY.uploadFromVector(_9x, 0, 4);
            this._206 = _arg2._sU().createIndexBuffer(6);
            this._206.uploadFromVector(_1zg, 0, 6);
        }
        ;
        this._1K(_arg3, _arg4);
    }

    public function _0k2(_arg1:_1kJ):void {
        var _local2:_0cG = _0cG.getInstance();
        _arg1.setProgram(_local2._07y(_arg1, this.repeat));
        _arg1.setTextureAt(0, this.texture);
        if (this._1zv != null) {
            _arg1._sU().setVertexBufferAt(0, this._1zv, 0, Context3DVertexBufferFormat.FLOAT_3);
            _arg1._sU().setVertexBufferAt(1, this._1zv, 3, Context3DVertexBufferFormat.FLOAT_2);
            _arg1._sU().setProgramConstantsFromVector(Context3DProgramType.VERTEX, 4, this._0N8);
            _arg1._sU().setVertexBufferAt(2, null, 6, Context3DVertexBufferFormat.FLOAT_2);
            _arg1.drawTriangles(this._1jc);
        } else {
            _arg1.setVertexBufferAt(0, this._Zr, 0, Context3DVertexBufferFormat.FLOAT_3);
            _arg1.setVertexBufferAt(1, this._Zr, 3, Context3DVertexBufferFormat.FLOAT_2);
            _arg1._sU().setProgramConstantsFromVector(Context3DProgramType.VERTEX, 4, this._0N8);
            _arg1._sU().setVertexBufferAt(2, null, 6, Context3DVertexBufferFormat.FLOAT_2);
            _arg1.drawTriangles(this._1jc);
        }
        ;
    }

    public function _0rH(_arg1:_1kJ):void {
        _arg1._sU().setVertexBufferAt(0, this._0SY, 0, Context3DVertexBufferFormat.FLOAT_3);
        _arg1._sU().setVertexBufferAt(1, this._0SY, 3, Context3DVertexBufferFormat.FLOAT_4);
        _arg1._sU().setVertexBufferAt(2, this._0SY, 7, Context3DVertexBufferFormat.FLOAT_2);
        _arg1._sU().setTextureAt(0, null);
        _arg1._sU().drawTriangles(this._206);
    }

    public function _1Us():Matrix3D {
        return (this.matrix3D);
    }

    private function _1K(_arg1:Number, _arg2:Number):void {
        this.matrix3D.identity();
        var _local3:Vector.<Number> = this.matrix3D.rawData;
        _local3[4] = -(this._0fo.c);
        _local3[1] = -(this._0fo.b);
        _local3[0] = (this._0fo.a * 4);
        _local3[5] = (this._0fo.d * 4);
        _local3[12] = (this._0fo.tx / _arg1);
        _local3[13] = (-(this._0fo.ty) / _arg2);
        this.matrix3D.rawData = _local3;
    }

    private function transform():void {
        this.matrix3D.identity();
        var _local1:Vector.<Number> = this.matrix3D.rawData;
        _local1[4] = -(this.matrix2D.c);
        _local1[1] = -(this.matrix2D.b);
        _local1[0] = this.matrix2D.a;
        _local1[5] = this.matrix2D.d;
        _local1[12] = this.matrix2D.tx;
        _local1[13] = -(this.matrix2D.ty);
        this.matrix3D.rawData = _local1;
        this.matrix3D.prependScale(Math.ceil(this.texture._1Ng()), Math.ceil(this.texture.getHeight()), 1);
        this.matrix3D.prependTranslation(0.5, -0.5, 0);
    }


}
}//package in 

