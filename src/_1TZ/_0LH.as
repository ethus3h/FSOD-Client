// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._0LH

package _1TZ {
import _03u._0MI;

import _0SK._Qo;

import _0tf._0yo;

import _1PE.Account;

import _Ny.*;

public class _0LH extends _0MI implements _bX {

    [Inject]
    public var account:Account;
    [Inject]
    public var _C:_Qo;
    [Inject]
    public var local:_eB;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/kongregate/getcredentials", this._C._q2());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._0tl(_arg2)));
        _Ug(_arg1, _arg2);
    }

    private function _0tl(_arg1:String):void {
        var _local2:XML = new XML(_arg1);
        this.account._05b(_local2.GUID, _local2.Secret);
        this.account._1EI(_local2.PlatformToken);
        _Ug(true);
    }


}
}//package _1TZ

