// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_si._1pP

package _si {
import _0cA._0bz;

import _0hL._1As;

import _1Cn._1z8;
import _1Cn._LO;

import _1PM.*;

public class _1pP implements _1rc {

    private const _01p:String = _1As.create(_1pP);
    private static var _0O6:_1z8;
    private static var _0R4:uint;
    private var _6y:_0bz;


    public function extend(_arg1:_Ld):void {
        _0R4++;
        this._6y = _arg1._sk;
        _arg1._11b._04D(this._04D);
        _arg1._11b._112(this._112);
    }

    public function toString():String {
        return (this._01p);
    }

    private function _04D():void {
        var _local1:_LO;
        if (_0O6 == null) {
            _local1 = this._6y.getInstance(_LO);
            _0O6 = new _1z8(_local1);
        }
        ;
    }

    private function _112():void {
        _0R4--;
        if (_0R4 == 0) {
            _0O6.destroy();
            _0O6 = null;
        }
        ;
    }


}
}//package _si

