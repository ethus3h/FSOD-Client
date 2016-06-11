// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_10k._0az

package _10k {
import _03u._0MI;

import _0tf._0yo;

import _1PE.Account;

import _1Yg._1Fn;

public class _0az extends _0MI {

    [Inject]
    public var account:Account;
    [Inject]
    public var model:_1Fn;
    [Inject]
    public var client:_0yo;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/account/getBeginnerPackageTimeLeft", this.account._1iT());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        this._kk(_arg2);
    }

    private function _kk(_arg1:String):void {
        var _local2:int = new XML(_arg1)[0];
        this.model._0WA(_local2);
        _Ug((_local2 > 0));
    }


}
}//package _10k

