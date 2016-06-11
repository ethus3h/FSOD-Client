// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._0Ek

package _07g {
import _0Ql._0q;

import _1Sm._sy;

import _6u._TG;

import _Vb.Dialog;

public class _0Ek extends Dialog {

    private static const _jZ:String = "/notEnoughGold";

    public function _0Ek() {
        super(_TG._1IO, _TG._07R, _TG._Vy, _TG._07N, _jZ);
        this.cancel = new _0q(this, LEFT_BUTTON);
        this._7u = new _0q(this, RIGHT_BUTTON);
    }
    public var cancel:_sy;
    public var _7u:_sy;

}
}//package _07g

