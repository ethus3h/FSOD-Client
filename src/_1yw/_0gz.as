// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1yw._0gz

package _1yw {
import _0cA._0bz;

import _0hL._1As;

import _1PM.*;

import _hk.instanceOf;

import flash.display.DisplayObjectContainer;

public class _0gz implements _1rc {

    private const _01p:String = _1As.create(_0gz);

    private var _6y:_0bz;
    private var _0gD:_1YQ;


    public function extend(_arg1:_Ld):void {
        this._6y = _arg1._sk;
        this._0gD = _arg1._F4(this);
        _arg1._0Jl(instanceOf(DisplayObjectContainer), this._1op);
    }

    public function toString():String {
        return (this._01p);
    }

    private function _1op(_arg1:DisplayObjectContainer):void {
        if (this._6y._R(DisplayObjectContainer)) {
            this._0gD._1Sh("A contextView has already been mapped, ignoring {0}", [_arg1]);
        } else {
            this._0gD.debug("Mapping {0} as contextView", [_arg1]);
            this._6y.map(DisplayObjectContainer)._nR(_arg1);
        }
        ;
    }


}
}//package _1yw

