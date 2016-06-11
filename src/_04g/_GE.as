// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04g._GE

package _04g {
import _0Ql._0q;

import _1Sm._sy;

import _6u._TG;

import _Vb.Dialog;

public class _GE extends Dialog {

    public function _GE(_arg1:String, _arg2:Object = null) {
        super(_TG._0J0, _arg1, _TG._0xW, _TG._0IN, "/needRegister", _arg2);
        this.cancel = new _0q(this, LEFT_BUTTON);
        this.register = new _0q(this, RIGHT_BUTTON);
    }
    public var cancel:_sy;
    public var register:_sy;

}
}//package _04g

