// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g.ChooseNameRegisterDialog

package _07g {
import _0Ql._0q;

import _1Sm._sy;

import _6u._TG;

import _Vb.Dialog;

public class ChooseNameRegisterDialog extends Dialog {

    private static const _jZ:String = "/chooseNameNeedRegister";

    public function ChooseNameRegisterDialog() {
        super(_TG._0J0, _TG._15C, _TG._0xW, _TG._0IN, _jZ);
        this.cancel = new _0q(this, LEFT_BUTTON);
        this.register = new _0q(this, RIGHT_BUTTON);
    }
    public var cancel:_sy;
    public var register:_sy;

}
}//package _07g

