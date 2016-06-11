// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._v2

package _07g {
import _0Ql._0q;

import _1Sm._sy;

import _Vb.Dialog;

import flash.display.Sprite;

public class _v2 extends Sprite {

    private static const TEXT:String = "In order to have more than one character slot, you must be a registered user.";
    private static const TITLE:String = "Not Registered";
    private static const CANCEL:String = "Cancel";
    private static const _I0:String = "Register";
    private static const _1n8:String = "/charSlotNeedRegister";

    public function _v2() {
        this._1l1();
        this._0Ny();
    }
    public var cancel:_sy;
    public var register:_sy;
    private var _16Y:Dialog;

    private function _1l1():void {
        this._16Y = new Dialog(TITLE, TEXT, CANCEL, _I0, _1n8);
        addChild(this._16Y);
    }

    private function _0Ny():void {
        this.cancel = new _0q(this._16Y, Dialog.LEFT_BUTTON);
        this.register = new _0q(this._16Y, Dialog.RIGHT_BUTTON);
    }


}
}//package _07g

