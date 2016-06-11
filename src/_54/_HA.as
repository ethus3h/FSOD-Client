// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_54._HA

package _54 {
import _03u._0MI;

import _0tf._0yo;

import _1i0._18D;

import _Ny.*;

import __1Ye._0nK;

public class _HA extends _0MI implements _1bJ {

    [Inject]
    public var email:String;
    [Inject]
    public var _16k:_18D;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/forgotPassword", {guid: this.email});
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._2G();
        } else {
            this._0QB(_arg2);
        }
        ;
    }

    private function _2G():void {
        this._wi();
        _Ug(true);
    }

    private function _wi():void {
        var _local1:_0nK = new _0nK();
        _local1.category = "account";
        _local1._0HR = "passwordSent";
        this._16k.dispatch(_local1);
    }

    private function _0QB(_arg1:String):void {
        _Ug(false, _arg1);
    }


}
}//package _54

