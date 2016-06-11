// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Zj._1Gc

package _0Zj {
import _0cA._0bz;

import _0fB._17U;

import _0hL.applyHooks;
import _0hL.guardsApprove;

public class _1Gc {

    public function _1Gc(_arg1:_0bz) {
        this._6y = _arg1;
    }
    private var _6y:_0bz;

    public function create(_arg1:_17U):Object {
        var _local2:Class;
        var _local3:Object;
        if (guardsApprove(_arg1._1Oq, this._6y)) {
            _local2 = _arg1.commandClass;
            this._6y.map(_local2)._0MH();
            _local3 = this._6y.getInstance(_local2);
            applyHooks(_arg1._Ya, this._6y);
            this._6y._g(_local2);
            return (_local3);
        }
        ;
        return (null);
    }


}
}//package _0Zj

