// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_si._0NU

package _si {
import _0cA._0bz;

import _0hL._1As;

import _1Cn._1kb;
import _1Cn._LO;

import _1PM.*;

import _nj._115;

public class _0NU implements _1rc {

    private const _01p:String = _1As.create(_0NU);
    private static var _0qG:_LO;
    private var _6y:_0bz;
    private var _12:_115;


    public function extend(_arg1:_Ld):void {
        this._6y = _arg1._sk;
        _0qG = ((_0qG) || (new _LO()));
        this._6y.map(_LO)._nR(_0qG);
        this._6y.map(_115)._5Z(_1kb);
        _arg1._11b._04D(this._04D);
        _arg1._11b._112(this._112);
    }

    public function toString():String {
        return (this._01p);
    }

    private function _04D():void {
        this._12 = this._6y.getInstance(_115);
    }

    private function _112():void {
        this._12._iO();
        this._6y._g(_115);
        this._6y._g(_LO);
    }


}
}//package _si

