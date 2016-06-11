// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Vn._0Nd

package _0Vn {
import _0Ql._0q;

import _1Sm._sy;

import _Vb._Hx;

public class _0Nd extends _Hx {

    private static const MESSAGE:String = "Failed to retrieve valid Kabam request! Click to reload.";

    public function _0Nd() {
        super(MESSAGE);
        this.close = new _0q(this, LEFT_BUTTON);
    }
    public var close:_sy;

}
}//package _0Vn

