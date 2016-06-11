// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_u5._1a5

package _u5 {
import flash.display3D.VertexBuffer3D;

public class _1a5 {

    public function _1a5(_arg1:VertexBuffer3D) {
        this._15a = _arg1;
    }
    protected var data:Vector.<Number>;
    private var _15a:VertexBuffer3D;

    public function uploadFromVector(_arg1:Vector.<Number>, _arg2:int, _arg3:int):void {
        this.data = _arg1;
        this._15a.uploadFromVector(_arg1, _arg2, _arg3);
    }

    public function _1v4():VertexBuffer3D {
        return (this._15a);
    }

    public function _0ND():Vector.<Number> {
        return (this.data);
    }


}
}//package _u5

