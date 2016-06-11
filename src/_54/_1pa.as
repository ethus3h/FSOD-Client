// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_54._1pa

package _54 {
import _03u._0MI;

import _085._09W;

import _0tf._0yo;

import _1PE.Account;

import _Ny.*;

public class _1pa extends _0MI implements _1AK {

    [Inject]
    public var account:Account;
    [Inject]
    public var data:_09W;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/changePassword", this._0q6());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._17J()));
        _Ug(_arg1, _arg2);
    }

    private function _0q6():Object {
        var _local1:Object = {};
        _local1.guid = this.account.getUserId();
        _local1.password = this.data._kT;
        _local1.newPassword = this.data.newPassword;
        return (_local1);
    }

    private function _17J():void {
        this.account._05b(this.account.getUserId(), this.data.newPassword);
        _Ug(true);
    }


}
}//package _54

