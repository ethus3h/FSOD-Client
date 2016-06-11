// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._0p1

package _0ld {
import _Vb.Dialog;

public class _0p1 extends Dialog {

    public function _0p1(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:String) {
        this._0ty = new _NF(this);
        super(_arg1, _arg2, _arg3, _arg4, _arg5);
        this._0ty._T3();
    }
    protected var _0ty:_NF;

    override protected function drawAdditionalUI():void {
        this._0ty.positionText();
    }

    override protected function drawGraphicsTemplate():void {
        this._0ty._1SX();
    }


}
}//package _0ld

