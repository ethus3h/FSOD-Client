// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._14C

package _1TZ {
import _03u._0MI;

import _085._LQ;

import _0SK._Qo;

import _0tf._0yo;

import _1PE.Account;

import _1Ry._Fx;

import _Ny.*;

public class _14C extends _0MI implements _1ys {

    public static const _0uk:String = "Kongregate account already registered";

    [Inject]
    public var account:Account;
    [Inject]
    public var _C:_Qo;
    [Inject]
    public var data:_LQ;
    [Inject]
    public var _bS:_Fx;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/kongregate/internalRegister", this._0q6());
    }

    private function _0q6():Object {
        var _local1:Object = this._C._q2();
        _local1.guid = this.account.getUserId();
        return (_local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._0bo(_arg2);
        } else {
            if (_arg2 == _0uk) {
                this._bS.dispatch(this.data);
            }
            ;
        }
        ;
        _Ug(_arg1, _arg2);
    }

    private function _0bo(_arg1:String):void {
        var _local2:XML = new XML(_arg1);
        this.account._05b(_local2.GUID, _local2.Secret);
        this.account._1EI(_local2.PlatformToken);
    }


}
}//package _1TZ

