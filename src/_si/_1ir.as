// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_si._1ir

package _si {
import _0cA._0bz;

import _0hL._1As;

import _1Cn._0v1;
import _1Cn._LO;

import _1PM.*;

public class _1ir implements _1rc {

    private const _01p:String = _1As.create(_1ir);
    private static var _1nA:_0v1;
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
        if (_1nA == null) {
            _local1 = this._6y.getInstance(_LO);
            _1nA = new _0v1(_local1);
        }
        ;
    }

    private function _112():void {
        _0R4--;
        if (_0R4 == 0) {
            _1nA.destroy();
            _1nA = null;
        }
        ;
    }


}
}//package _si

