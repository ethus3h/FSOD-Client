// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Zj._0j2

package _0Zj {

import _0cA._0bz;

import _0fB._0F;
import _0fB._21C;

import _14w._0YL;
import _14w._Xp;

import _b5.*;

import flash.events.IEventDispatcher;
import flash.utils.Dictionary;

public class _0j2 implements _8b {

    private const _1r:Dictionary = new Dictionary();

    public function _0j2(_arg1:_0bz, _arg2:IEventDispatcher, _arg3:_21C) {
        this._6y = _arg1;
        this._1p2 = _arg2;
        this._1Sb = _arg3;
    }
    private var _6y:_0bz;
    private var _1p2:IEventDispatcher;
    private var _1Sb:_21C;

    public function map(_arg1:String, _arg2:Class = null):_0YL {
        var _local3:_0F = (this._1r[(_arg1 + _arg2)] = ((this._1r[(_arg1 + _arg2)]) || (this._04y(_arg1, _arg2))));
        return (this._1Sb.map(_local3));
    }

    public function _g(_arg1:String, _arg2:Class = null):_Xp {
        return (this._1Sb._g(this._kj(_arg1, _arg2)));
    }

    private function _04y(_arg1:String, _arg2:Class = null):_0F {
        return (new _0wa(this._6y, this._1p2, _arg1, _arg2));
    }

    private function _kj(_arg1:String, _arg2:Class = null):_0F {
        return (this._1r[(_arg1 + _arg2)]);
    }


}
}//package _0Zj

