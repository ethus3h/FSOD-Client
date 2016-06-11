// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_54._15s

package _54 {
import _03u._0MI;

import _085._LQ;

import _0tf._0yo;

import _1PE.Account;

import _Ny.*;

public class _15s extends _0MI implements _bX {

    [Inject]
    public var account:Account;
    [Inject]
    public var data:_LQ;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/verify", {
            guid: this.data.username,
            password: this.data.password
        });
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._05b(_arg2);
        }
        ;
        _Ug(_arg1, _arg2);
    }

    private function _05b(_arg1:String):void {
        this.account._05b(this.data.username, this.data.password);
    }


}
}//package _54

