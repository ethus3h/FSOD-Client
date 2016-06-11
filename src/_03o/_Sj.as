// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03o._Sj

package _03o {
import _0fB.*;

import _14w._0YL;
import _14w._Xp;

import flash.utils.Dictionary;

public class _Sj implements _21C {

    private const _0zH:Dictionary = new Dictionary();
    private const _0yT:_Xp = new _0vU();


    public function map(_arg1:_0F):_0YL {
        return ((this._0zH[_arg1] = ((this._0zH[_arg1]) || (new _114(_arg1)))));
    }

    public function _g(_arg1:_0F):_Xp {
        return (((this._0zH[_arg1]) || (this._0yT)));
    }


}
}//package _03o

