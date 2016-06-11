// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_u5._1kJ

package _u5 {
import flash.display3D.Context3D;
import flash.geom.Matrix3D;

public class _1kJ {

    public function _1kJ(_arg1:Context3D) {
        this.context3D = _arg1;
    }
    private var context3D:Context3D;

    public function _sU():Context3D {
        return (this.context3D);
    }

    public function configureBackBuffer(_arg1:int, _arg2:int, _arg3:int, _arg4:Boolean = true):void {
        this.context3D.configureBackBuffer(_arg1, _arg2, _arg3, _arg4);
    }

    public function createProgram():_AK {
        return (new _AK(this.context3D.createProgram()));
    }

    public function clear():void {
        this.context3D.clear(0.05, 0.05, 0.05);
    }

    public function present():void {
        this.context3D.present();
    }

    public function createIndexBuffer(_arg1:int):_default {
        return (new _default(this.context3D.createIndexBuffer(_arg1)));
    }

    public function createVertexBuffer(_arg1:int, _arg2:int):_1a5 {
        return (new _1a5(this.context3D.createVertexBuffer(_arg1, _arg2)));
    }

    public function setVertexBufferAt(_arg1:int, _arg2:_1a5, _arg3:int, _arg4:String = "float4"):void {
        this.context3D.setVertexBufferAt(_arg1, _arg2._1v4(), _arg3, _arg4);
    }

    public function setProgramConstantsFromMatrix(_arg1:String, _arg2:int, _arg3:Matrix3D, _arg4:Boolean = false):void {
        this.context3D.setProgramConstantsFromMatrix(_arg1, _arg2, _arg3, _arg4);
    }

    public function setProgramConstantsFromVector(_arg1:String, _arg2:int, _arg3:Vector.<Number>, _arg4:int = -1):void {
        this.context3D.setProgramConstantsFromVector(_arg1, _arg2, _arg3, _arg4);
    }

    public function createTexture(_arg1:int, _arg2:int, _arg3:String, _arg4:Boolean):_NH {
        return (new _NH(this.context3D.createTexture(_arg1, _arg2, _arg3, _arg4)));
    }

    public function setTextureAt(_arg1:int, _arg2:_NH):void {
        this.context3D.setTextureAt(_arg1, _arg2.getTexture());
    }

    public function setProgram(_arg1:_AK):void {
        this.context3D.setProgram(_arg1._W0());
    }

    public function drawTriangles(_arg1:_default):void {
        this.context3D.drawTriangles(_arg1._0LT());
    }

    public function setBlendFactors(_arg1:String, _arg2:String):void {
        this.context3D.setBlendFactors(_arg1, _arg2);
    }

    public function setDepthTest(_arg1:Boolean, _arg2:String):void {
        this.context3D.setDepthTest(_arg1, _arg2);
    }


}
}//package _u5

