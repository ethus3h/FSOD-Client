// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._1yV

package _0ld {
import _08Y._sC;

import _0Sj._05E;

import _1E1.Size;

import com.company.assembleegameclient.ui._yz;

public class _1yV extends _0p1 {

    private static const padding:int = 12;
    private static const _O7:int = 217;

    public function _1yV(_arg1:PetPicker) {
        super("PetPicker.title", "PetPicker.text", null, null, null);
        this._1nd = _arg1;
        this._q4();
        this._Mt = _sC._1JY(_0j4);
        box_.addChild(this._Mt);
    }
    public var _1nd:PetPicker;
    public var _Mt:_05E;

    override protected function setDialogWidth():int {
        return (330);
    }

    override protected function drawAdditionalUI():void {
        super.drawAdditionalUI();
        this._1kB();
        this._0Z();
    }

    override protected function getBoxHeight():Number {
        return ((super.getBoxHeight() - (this._1nd.height - _O7)));
    }

    private function _q4():void {
        this._1nd.setSize(new Size((_0j4 - (padding * 2)), _O7));
        this._1nd._0qu(8);
        this._1nd._1mY(48);
    }

    private function _0Z():void {
        this._1nd.x = padding;
        this._1nd.y = this._RS();
        box_.addChild(this._1nd);
    }

    private function _1kB():void {
        var _local1:_yz;
        _local1 = new _yz((_0j4 - (padding * 2)), 0);
        _local1.x = padding;
        _local1.y = this._RS();
        box_.addChild(_local1);
    }

    private function _RS():Number {
        return ((box_.getBounds(this).bottom + padding));
    }


}
}//package _0ld

