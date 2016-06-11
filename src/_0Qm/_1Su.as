// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Qm._1Su

package _0Qm {
import _04g._GE;

import _1PE.Account;

import _1PM.*;

import __Nj._M4;

public class _1Su implements _1e1 {

    [Inject]
    public var account:Account;
    [Inject]
    public var _nU:_M4;


    public function approve():Boolean {
        var _local1:Boolean = this.account._vD();
        ((_local1) || (this._2n()));
        return (_local1);
    }

    protected function getString():String {
        return ("");
    }

    private function _2n():void {
        this._nU.dispatch(new _GE(this.getString()));
    }


}
}//package _0Qm

