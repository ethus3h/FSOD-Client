// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0H1._0h6

package _0H1 {
import _0cA._0bz;

import _0hL._1As;

import _1PM.*;

import _UB._0fY;
import _UB._210;

import _bZ._09f;
import _bZ._1CW;
import _bZ._1vj;

import _nj._0XC;
import _nj._115;

public class _0h6 implements _1rc {

    private const _01p:String = _1As.create(_0h6);

    private var _6y:_0bz;
    private var _1S2:_210;
    private var _12:_115;
    private var _1BR:_09f;


    public function extend(_arg1:_Ld):void {
        this._6y = _arg1._sk;
        this._6y.map(_0fY)._5Z(_1CW);
        this._6y.map(_210)._5Z(_1vj);
        _arg1._11b._3m(this._3m);
        _arg1._11b._0oP(this._0oP);
        _arg1._11b._112(this._112);
    }

    public function toString():String {
        return (this._01p);
    }

    private function _3m():void {
        this._1S2 = this._6y.getInstance(_210);
        this._1BR = this._6y.getInstance(_09f);
        if (this._6y._R(_115)) {
            this._12 = this._6y.getInstance(_115);
            this._12._4U((this._1S2 as _0XC));
        }
        ;
    }

    private function _0oP():void {
        var _local1:_0fY = this._6y.getInstance(_0fY);
        _local1._0MF();
        if (this._6y._R(_115)) {
            this._12 = this._6y.getInstance(_115);
            this._12._p((this._1S2 as _0XC));
        }
        ;
    }

    private function _112():void {
        if (this._6y._R(_210)) {
            this._6y._g(_210);
        }
        ;
        if (this._6y._R(_0fY)) {
            this._6y._g(_0fY);
        }
        ;
    }


}
}//package _0H1

