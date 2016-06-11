// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_tb._EM

package _tb {
import _0SK.KongregateAccountDetailDialog;
import _0SK._Qo;

import _1PE.Account;

import __Nj._M4;

public class _EM {

    [Inject]
    public var account:Account;
    [Inject]
    public var _C:_Qo;
    [Inject]
    public var _nU:_M4;


    public function execute():void {
        if (this.account._vD()) {
            this._nU.dispatch(new KongregateAccountDetailDialog());
        } else {
            this._C._O2();
        }
        ;
    }


}
}//package _tb

