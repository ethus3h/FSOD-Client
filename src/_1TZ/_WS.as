// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._WS

package _1TZ {
import _03u._0MI;
import _03u._wP;

import _0SK._Qo;

import _1PE.Account;

import _Ny._bX;

public class _WS extends _0MI {

    [Inject]
    public var login:_bX;
    [Inject]
    public var _C:_Qo;
    [Inject]
    public var account:Account;
    [Inject]
    public var local:_eB;


    override protected function startTask():void {
        if (this._C.isGuest()) {
            this._0hb();
        } else {
            this._1C7();
        }
        ;
    }

    private function _1C7():void {
        this.login._i4.addOnce(this._l5);
        this.login.start();
    }

    private function _l5(_arg1:_wP, _arg2:Boolean, _arg3:String = ""):void {
        _Ug(true);
    }

    private function _0hb():void {
        this.account._05b(this.local._0Sv(), "");
        _Ug(true);
    }


}
}//package _1TZ

