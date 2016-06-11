// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_u5.default

package _u5 {
import flash.display3D.IndexBuffer3D;

public class _default {

    public function _default(_arg1:IndexBuffer3D) {
        this._1jc = _arg1;
    }
    private var _1jc:IndexBuffer3D;

    public function uploadFromVector(_arg1:Vector.<uint>, _arg2:int, _arg3:int):void {
        this._1jc.uploadFromVector(_arg1, _arg2, _arg3);
    }

    public function _0LT():IndexBuffer3D {
        return (this._1jc);
    }


}
}//package _u5

