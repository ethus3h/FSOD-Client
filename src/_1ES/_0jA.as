// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1ES._0jA

package _1ES {
import _0cA._0bz;

import _19L.AGALMiniAssembler;

import _1VI._TT;
import _1VI._Y4;

import _in.Graphic3D;
import _in._1oz;

import _u5._1kJ;

import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.parameters.Parameters;

import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsGradientFill;
import flash.display.IGraphicsData;
import flash.display.Stage3D;
import flash.display.StageScaleMode;
import flash.display3D.Context3D;
import flash.display3D.Context3DProgramType;
import flash.display3D.Context3DTextureFormat;
import flash.display3D.Context3DTriangleFace;
import flash.display3D.Context3DVertexBufferFormat;
import flash.display3D.IndexBuffer3D;
import flash.display3D.Program3D;
import flash.display3D.VertexBuffer3D;
import flash.display3D.textures.Texture;
import flash.geom.Matrix3D;
import flash.geom.Vector3D;
import flash.utils.ByteArray;

public class _0jA {

    public static const STAGE3D_FILTER_PAUSE:uint = 1;
    public static const STAGE3D_FILTER_BLIND:uint = 2;
    public static const STAGE3D_FILTER_DRUNK:uint = 3;
    private static const _Iu:Vector.<Number> = new <Number>[1, 2, 0, 0];
    private static const _Ta:Vector.<Number> = new <Number>[0.3, 0.59, 0.11, 0];
    private static const _Dh:Vector.<Number> = new <Number>[0.05, 0.05, 0.05, 0];
    private static const _0Rp:Vector.<Number> = new <Number>[-1, 1, 0, 0, 1, 1, 1, 0, 1, -1, 1, 1, -1, -1, 0, 1];
    private static const _CU:Vector.<uint> = new <uint>[0, 2, 3, 0, 1, 2];

    public static var _t5:Boolean;

    public function _0jA(_arg1:_04E) {
        this._03D = new Matrix3D();
        this._0xr = new Vector3D();
        this._d = new Vector3D();
        this._1ZS = new Vector3D();
        this._K = new Vector3D();
        this._BG = new Vector.<Number>(16, true);
        this._5g = ["m44 op, va0, vc0", "m44 v0, va0, vc8", "m44 v1, va1, vc8", "mov v2, va2"].join("\n");
        this._88 = ["tex oc, v2, fs0 <2d,clamp>"].join("\n");
        this._0nx = Vector.<Number>([0.4, 0.6, 0.4, 1.5]);
        super();
        _0jA._t5 = false;
        this._1B();
        _arg1.add(this._1GC);
    }
    [Inject]
    public var context3D:_1kJ;
    [Inject]
    public var _1kz:_1oz;
    [Inject]
    public var _sk:_0bz;
    public var _1DT:Program3D;
    protected var _0KJ:Matrix3D;
    protected var _03D:Matrix3D;
    protected var _1yl:Number;
    protected var _l4:Number;
    protected var _5g:String;
    protected var _88:String;
    protected var _0nx:Vector.<Number>;
    private var _wO:Number;
    private var _04c:Number;
    private var _15K:Program3D;
    private var _d7:Program3D;
    private var _1vF:Program3D;
    private var _1xx:Graphic3D;
    private var _0xr:Vector3D;
    private var _d:Vector3D;
    private var _1ZS:Vector3D;
    private var _K:Vector3D;
    private var _BG:Vector.<Number>;
    private var stageWidth:Number = 600;
    private var stageHeight:Number = 600;
    private var _package:Texture;
    private var _1eC:Number = 0.01;
    private var _S:VertexBuffer3D;
    private var _1E9:IndexBuffer3D;

    public function init(_arg1:Context3D):void {
        this._0KJ = _Y4._1Fk(56, 1, 0.1, 0x0800);
        var _local2:AGALMiniAssembler = new AGALMiniAssembler();
        _local2._14D(Context3DProgramType.VERTEX, this._5g);
        var _local3:AGALMiniAssembler = new AGALMiniAssembler();
        _local3._14D(Context3DProgramType.FRAGMENT, this._88);
        this._1DT = _arg1.createProgram();
        this._1DT.upload(_local2._qE, _local3._qE);
        var _local4 = (((("tex ft0, v0, fs0 <2d,clamp,linear>\n" + "dp3 ft0.x, ft0, fc0\n") + "mov ft0.y, ft0.x\n") + "mov ft0.z, ft0.x\n") + "mov oc, ft0\n");
        var _local5 = (((("mov op, va0\n" + "add vt0, vc0.xxxx, va0\n") + "div vt0, vt0, vc0.yyyy\n") + "sub vt0.y, vc0.x, vt0.y\n") + "mov v0, vt0\n");
        var _local6:AGALMiniAssembler = new AGALMiniAssembler();
        _local6._14D(Context3DProgramType.VERTEX, _local5);
        var _local7:ByteArray = _local6._qE;
        _local6._14D(Context3DProgramType.FRAGMENT, _local4);
        var _local8:ByteArray = _local6._qE;
        this._15K = _arg1.createProgram();
        this._15K.upload(_local7, _local8);
        var _local9 = ((((((((("sub ft0, v0, fc0\n" + "sub ft0.zw, ft0.zw, ft0.zw\n") + "dp3 ft1, ft0, ft0\n") + "sqt ft1, ft1\n") + "div ft1.xy, ft1.xy, fc0.zz\n") + "pow ft1.x, ft1.x, fc0.w\n") + "mul ft0.xy, ft0.xy, ft1.xx\n") + "div ft0.xy, ft0.xy, ft1.yy\n") + "add ft0.xy, ft0.xy, fc0.xy\n") + "tex oc, ft0, fs0<2d,clamp>\n");
        var _local10 = ("m44 op, va0, vc0\n" + "mov v0, va1\n");
        _local6._14D(Context3DProgramType.VERTEX, _local10);
        var _local11:ByteArray = _local6._qE;
        _local6._14D(Context3DProgramType.FRAGMENT, _local9);
        var _local12:ByteArray = _local6._qE;
        this._d7 = _arg1.createProgram();
        this._d7.upload(_local11, _local12);
        var _local13 = (("m44 op, va0, vc0\n" + "mov v0, va1\n") + "mov v1, va2\n");
        _local6._14D(Context3DProgramType.VERTEX, _local13);
        var _local14:ByteArray = _local6._qE;
        var _local15 = (((("sub ft0.xy, v1.xy, fc4.xx\n" + "mul ft0.xy, ft0.xy, ft0.xy\n") + "add ft0.x, ft0.x, ft0.y\n") + "slt ft0.y, ft0.x, fc4.y\n") + "mul oc, v0, ft0.yyyy\n");
        _local6._14D(Context3DProgramType.FRAGMENT, _local15);
        var _local16:ByteArray = _local6._qE;
        this._1vF = _arg1.createProgram();
        this._1vF.upload(_local14, _local16);
        this._package = _arg1.createTexture(0x0400, 0x0400, Context3DTextureFormat.BGRA, true);
        this._S = _arg1.createVertexBuffer(4, 4);
        this._S.uploadFromVector(_0Rp, 0, 4);
        this._1E9 = _arg1.createIndexBuffer(6);
        this._1E9.uploadFromVector(_CU, 0, 6);
        this._1xx = this._sk.getInstance(Graphic3D);
    }

    private function _1Uv(_arg1:_18q):void {
        var _local2:Number = -(_arg1.angleRad_);
        this._d.x = 0;
        this._d.y = 0;
        this._d.z = -1;
        this._0xr.x = -((_arg1.x_ + this._1yl));
        this._0xr.y = (_arg1.y_ - this._l4);
        this._0xr.z = -(_arg1.z_);
        this._K.x = Math.cos(_local2);
        this._K.y = Math.sin(_local2);
        this._K.z = 0;
        this._1ZS.x = Math.cos((_local2 + (Math.PI / 2)));
        this._1ZS.y = Math.sin((_local2 + (Math.PI / 2)));
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
        this._BG[9] = 1;
        this._BG[10] = -(this._d.z);
        this._BG[11] = 0;
        this._BG[12] = this._0xr.dotProduct(this._K);
        this._BG[13] = this._0xr.dotProduct(this._1ZS);
        this._BG[14] = -(this._0xr.dotProduct(this._d));
        this._BG[15] = 1;
        var _local3:Matrix3D = new Matrix3D();
        _local3.rawData = this._BG;
        this._03D.identity();
        this._03D.append(_local3);
    }

    private function _1GC(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<_TT>, _arg3:Number, _arg4:Number, _arg5:_18q, _arg6:uint):void {
        WebMain._0b2.scaleMode = StageScaleMode.NO_SCALE;
        if (((!((((WebMain._0b2.stageWidth * 3) / 4) == this.stageWidth))) || (!((WebMain._0b2.stageHeight == this.stageHeight))))) {
            this._1jg();
        }
        ;
        if (_0jA._t5 == true) {
            this._0Uk();
        } else {
            this._1B();
        }
        ;
        if (_arg6 > 0) {
            this._je(_arg1, _arg2, _arg3, _arg4, _arg5, _arg6);
        } else {
            this._0fF(_arg1, _arg2, _arg3, _arg4, _arg5);
        }
        ;
        this.context3D.present();
        WebMain._0b2.scaleMode = StageScaleMode.EXACT_FIT;
    }

    private function _1jg():void {
        if ((((((WebMain._0b2.stageWidth * 3) / 4) < 1)) || ((WebMain._0b2.stageHeight < 1)))) {
            return;
        }
        ;
        var _local1:Stage3D = WebMain._0b2.stage3Ds[0];
        _local1.context3D.configureBackBuffer(((WebMain._0b2.stageWidth * 3) / 4), WebMain._0b2.stageHeight, 2, false);
        this.stageWidth = ((WebMain._0b2.stageWidth * 3) / 4);
        this.stageHeight = WebMain._0b2.stageHeight;
    }

    private function _je(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<_TT>, _arg3:Number, _arg4:Number, _arg5:_18q, _arg6:uint):void {
        this.context3D._sU().setRenderToTexture(this._package, true);
        this._0fF(_arg1, _arg2, _arg3, _arg4, _arg5);
        this.context3D._sU().setRenderToBackBuffer();
        switch (_arg6) {
            case STAGE3D_FILTER_PAUSE:
            case STAGE3D_FILTER_BLIND:
                this.context3D._sU().setProgram(this._15K);
                this.context3D._sU().setTextureAt(0, this._package);
                this.context3D._sU().clear(0.5, 0.5, 0.5);
                this.context3D._sU().setVertexBufferAt(0, this._S, 0, Context3DVertexBufferFormat.FLOAT_2);
                this.context3D._sU().setVertexBufferAt(1, null);
                break;
            case STAGE3D_FILTER_DRUNK:
                this.context3D._sU().setProgram(this._d7);
                this.context3D._sU().setTextureAt(0, this._package);
                this.context3D._sU().clear(0.5, 0.5, 0.5);
                this.context3D._sU().setVertexBufferAt(0, this._S, 0, Context3DVertexBufferFormat.FLOAT_2);
                this.context3D._sU().setVertexBufferAt(1, this._S, 2, Context3DVertexBufferFormat.FLOAT_2);
                break;
        }
        ;
        this.context3D._sU().setVertexBufferAt(2, null);
        switch (_arg6) {
            case STAGE3D_FILTER_PAUSE:
                this.context3D.setProgramConstantsFromVector(Context3DProgramType.VERTEX, 0, _Iu);
                this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, _Ta);
                break;
            case STAGE3D_FILTER_BLIND:
                this.context3D.setProgramConstantsFromVector(Context3DProgramType.VERTEX, 0, _Iu);
                this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, _Dh);
                break;
            case STAGE3D_FILTER_DRUNK:
                if ((((this._0nx[3] <= 0.2)) || ((this._0nx[3] >= 1.8)))) {
                    this._1eC = (this._1eC * -1);
                }
                ;
                this._0nx[3] = (this._0nx[3] + this._1eC);
                this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, new Matrix3D());
                this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 0, this._0nx, (this._0nx.length / 4));
                break;
        }
        ;
        this.context3D._sU().clear(0, 0, 0, 1);
        this.context3D._sU().drawTriangles(this._1E9);
    }

    private function _0fF(_arg1:Vector.<IGraphicsData>, _arg2:Vector.<_TT>, _arg3:Number, _arg4:Number, _arg5:_18q):void {
        var test:int;
        var graphicsData:IGraphicsData;
        var graphicsDatas:Vector.<IGraphicsData> = _arg1;
        var grahpicsData3d:Vector.<_TT> = _arg2;
        var mapWidth:Number = _arg3;
        var mapHeight:Number = _arg4;
        var camera:_18q = _arg5;
        this.context3D.clear();
        var finalTransform:Matrix3D = new Matrix3D();
        var index3d:uint;
        this._1yl = (-(mapWidth) / 2);
        this._l4 = (mapHeight / 2);
        this._1Uv(camera);
        for each (graphicsData in graphicsDatas) {
            this.context3D._sU().setCulling(Context3DTriangleFace.NONE);
            if ((((graphicsData is GraphicsBitmapFill)) && (!(_return._k8(GraphicsBitmapFill(graphicsData)))))) {
                try {
                    test = GraphicsBitmapFill(graphicsData).bitmapData.width;
                } catch (e:Error) {
                    continue;
                }
                ;
                this._1xx._0B7(GraphicsBitmapFill(graphicsData), this.context3D);
                finalTransform.identity();
                finalTransform.append(this._1xx._1Us());
                finalTransform.appendScale((1 / _0jf._9D), (1 / _0jf._dv), 1);
                finalTransform.appendTranslation((this._wO / _0jf.WIDTH), (this._04c / _0jf.HEIGHT), 0);
                this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                this._1xx._0k2(this.context3D);
            }
            ;
            if ((graphicsData is GraphicsGradientFill)) {
                this.context3D._sU().setProgram(this._1vF);
                this._1xx._20(GraphicsGradientFill(graphicsData), this.context3D, _0jf._9D, _0jf._dv);
                finalTransform.identity();
                finalTransform.append(this._1xx._1Us());
                finalTransform.appendTranslation((this._wO / _0jf.WIDTH), (this._04c / _0jf.HEIGHT), 0);
                this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                this.context3D.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT, 4, Vector.<Number>([0.5, 0.25, 0, 0]));
                this._1xx._0rH(this.context3D);
            }
            ;
            if ((((graphicsData == null)) && (!((grahpicsData3d.length == 0))))) {
                try {
                    this.context3D._sU().setProgram(this._1DT);
                    this.context3D._sU().setCulling(Context3DTriangleFace.BACK);
                    grahpicsData3d[index3d].UpdateModelMatrix(this._1yl, this._l4);
                    finalTransform.identity();
                    finalTransform.append(grahpicsData3d[index3d].GetModelMatrix());
                    finalTransform.append(this._03D);
                    finalTransform.append(this._0KJ);
                    finalTransform.appendTranslation((this._wO / _0jf.WIDTH), ((this._04c / _0jf.HEIGHT) * 11.5), 0);
                    this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 0, finalTransform, true);
                    this.context3D.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX, 8, grahpicsData3d[index3d].GetModelMatrix(), true);
                    grahpicsData3d[index3d].draw(this.context3D._sU());
                    index3d = (index3d + 1);
                } catch (e:Error) {
                }
                ;
            }
            ;
        }
        ;
    }

    private function _0Uk():void {
        this._wO = 0;
        this._04c = ((Parameters.data_.centerOnPlayer) ? -50 : ((_18q._2L.y + (_18q._IA.height / 2)) * 2));
    }

    private function _1B():void {
        this._wO = (this._04c = 0);
    }


}
}//package _1ES

