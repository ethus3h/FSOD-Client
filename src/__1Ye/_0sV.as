// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Ye._0sV

package __1Ye {
import _03u._0MI;

import _07g._0Ek;

import _Vb.ErrorDialog;

import __Nj._M4;

public class _0sV extends _0MI {

    [Inject]
    public var _nU:_M4;
    public var _06q:PurchaseCharacterClassTask;


    override protected function startTask():void {
        if (this._06q.error == "Not enough Gold.") {
            this._nU.dispatch(new _0Ek());
        } else {
            this._nU.dispatch(new ErrorDialog(this._06q.error));
        }
        ;
    }


}
}//package _1Ye

