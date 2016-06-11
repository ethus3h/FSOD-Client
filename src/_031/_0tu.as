// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_031._0tu

package _031 {
import _0od.WebAccountDetailDialog;
import _0od._0Wl;

import _1PE.Account;

import __Nj._M4;

public class _0tu {

    [Inject]
    public var account:Account;
    [Inject]
    public var _nU:_M4;


    public function execute():void {
        if (this.account._vD()) {
            this._nU.dispatch(new WebAccountDetailDialog());
        } else {
            this._nU.dispatch(new _0Wl());
        }
        ;
    }


}
}//package _031

