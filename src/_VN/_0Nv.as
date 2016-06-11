// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_VN._0Nv

package _VN {
import _03u._0MI;

import _0tf._0yo;

import _1PE.Account;

import _Vb._Hx;

import __Nj._M4;

import _nl._0Y9;

public class _0Nv extends _0MI {

    private static const _1MV:String = "Error: ${error}";

    [Inject]
    public var account:Account;
    [Inject]
    public var steam:_0Y9;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        var _local1:Object = this.steam._1Pn();
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/steamworks/getcredentials", _local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._0tl(_arg2);
        } else {
            this._14k(_arg2);
        }
        ;
        _Ug(_arg1, _arg2);
    }

    private function _0tl(_arg1:String):void {
        var _local2:XML = new XML(_arg1);
        this.account._05b(_local2.GUID, _local2.Secret);
        this.account._1EI(_local2.PlatformToken);
    }

    private function _14k(_arg1:String):void {
        var _local2:String = _1MV.replace("${error}", _arg1);
        var _local3:_Hx = new _Hx(_local2);
        this._nU.dispatch(_local3);
    }


}
}//package _VN

