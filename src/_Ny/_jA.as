// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Ny._jA

package _Ny {
import _03u._0MI;

import _0tf._0yo;

import _10a._FU;

import _1PE.Account;

public class _jA extends _0MI {

    [Inject]
    public var account:Account;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        if (this.account._vD()) {
            this._Pt();
        } else {
            this._1Uc();
        }
        ;
    }

    private function _Pt():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/verifyage", this._0q6());
    }

    private function _0q6():Object {
        var _local1:Object = this.account._1iT();
        _local1.isAgeVerified = 1;
        return (_local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._1Uc()));
        _Ug(_arg1, _arg2);
    }

    private function _1Uc():void {
        this._qP._lj(true);
        _Ug(true);
    }


}
}//package _Ny

