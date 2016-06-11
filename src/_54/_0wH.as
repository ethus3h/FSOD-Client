// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_54._0wH

package _54 {
import _03u._0MI;

import _085._LQ;

import _0tf._0yo;

import _10a._FU;

import _1PE.Account;

import _Ny.*;

public class _0wH extends _0MI implements _0Ut {

    [Inject]
    public var data:_LQ;
    [Inject]
    public var account:Account;
    [Inject]
    public var model:_FU;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/register", this._0q6());
    }

    private function _0q6():Object {
        var _local1:Object = {};
        _local1.guid = this.account.getUserId();
        _local1.newGUID = this.data.username;
        _local1.newPassword = this.data.password;
        _local1.entrytag = this.account._UV();
        _local1.isAgeVerified = 1;
        return (_local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._0Hh()));
        _Ug(_arg1, _arg2);
    }

    private function _0Hh():void {
        this.model._lj(true);
        this.account._05b(this.data.username, this.data.password);
    }


}
}//package _54

