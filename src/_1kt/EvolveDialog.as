// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kt.EvolveDialog

package _1kt {
import _0ld._0p1;

import _1Sm._sy;

import _Vb.*;

public class EvolveDialog extends _0p1 implements _1gk {

    private static const _EL:int = 6;

    private const _ay:_qK = new _qK();

    public function EvolveDialog(_arg1:_e4) {
        this._1SM = _arg1;
        super("EvolveDialog.title", "", "ErrorDialog.ok", null, null);
        this._ay.add(this, Dialog.LEFT_BUTTON);
        _0j4 = (_arg1.width + 1);
    }
    public var _1SM:_e4;

    override protected function makeUIAndAdd():void {
        box_.addChild(this._1SM);
    }

    override protected function drawAdditionalUI():void {
        this._1SM.x = ((_0j4 - this._1SM.width) / 2);
        this._1SM.y = (_zj.getBounds(box_).bottom + _EL);
    }

    override protected function drawGraphicsTemplate():void {
        super.drawGraphicsTemplate();
        var _local1:Number = this._1SM.getBounds(rect_).bottom;
        _0ty.drawLine(_local1);
    }

    public function _zK():_sy {
        return (this._ay._zK());
    }


}
}//package _1kt

