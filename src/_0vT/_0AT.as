// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0vT._0AT

package _0vT {
import _0uW._0gm;

import _1HX._0o6;

import flash.utils.Dictionary;

public class _0AT {

    public function _0AT(_arg1:_0o6, _arg2:Dictionary) {
        this._1mJ = _arg2;
        this._0A0 = _arg1;
    }
    public var _1mJ:Dictionary;
    private var _0A0:_0o6;

    public function _1SJ(_arg1:Class):_0gm {
        return ((this._1mJ[_arg1] = ((this._1mJ[_arg1]) || (this._0A0._0Kg(_arg1)))));
    }

    public function _0mo(_arg1:Class, _arg2:_0gm):void {
        this._1mJ[_arg1] = _arg2;
    }


}
}//package _0vT

