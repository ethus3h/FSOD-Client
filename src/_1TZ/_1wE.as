// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._1wE

package _1TZ {
import _03u._0MI;

import _085._LQ;

import _0SK._Qo;

import _0tf._0yo;

import _1PE.Account;

import _1i0._18D;

import _Ny.*;

import __1Ye._0nK;

public class _1wE extends _0MI implements _0Ut {

    [Inject]
    public var data:_LQ;
    [Inject]
    public var _C:_Qo;
    [Inject]
    public var account:Account;
    [Inject]
    public var _16k:_18D;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/kongregate/register", this._0q6());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._0bo(_arg2)));
        _Ug(_arg1, _arg2);
    }

    private function _0q6():Object {
        var _local1:Object = this._C._q2();
        _local1.newGUID = this.data.username;
        _local1.newPassword = this.data.password;
        _local1.entrytag = this.account._UV();
        return (_local1);
    }

    private function _0bo(_arg1:String):void {
        this._1zC(_arg1);
        this._1Rw();
    }

    private function _1Rw():void {
        var _local1:_0nK = new _0nK();
        _local1.category = "kongregateAccount";
        _local1._0HR = "accountRegistered";
        this._16k.dispatch(_local1);
    }

    private function _1zC(_arg1:String):void {
        var _local2:XML = new XML(_arg1);
        this.account._05b(_local2.GUID, _local2.Secret);
        this.account._1EI(_local2.PlatformToken);
    }


}
}//package _1TZ

