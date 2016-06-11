// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1qL._1Jo

package _1qL {
import _0cA._0bz;

import _0fB._0F;
import _0fB._21C;

import _14w._0YL;
import _14w._Xp;

import _1bt.*;

import flash.utils.Dictionary;

public class _1Jo implements _1LA {

    private const _19B:Dictionary = new Dictionary();

    public function _1Jo(_arg1:_0bz, _arg2:_21C) {
        this._6y = _arg1;
        this._1re = _arg2;
    }
    private var _6y:_0bz;
    private var _1re:_21C;

    public function map(_arg1:Class, _arg2:Boolean = false):_0YL {
        var _local3:_0F = (this._19B[_arg1] = ((this._19B[_arg1]) || (this._TL(_arg1, _arg2))));
        return (this._1re.map(_local3));
    }

    public function _g(_arg1:Class):_Xp {
        return (this._1re._g(this._1RU(_arg1)));
    }

    private function _TL(_arg1:Class, _arg2:Boolean = false):_0F {
        return (new _0w(this._6y, _arg1, _arg2));
    }

    private function _1RU(_arg1:Class):_0F {
        return (this._19B[_arg1]);
    }


}
}//package _1qL

