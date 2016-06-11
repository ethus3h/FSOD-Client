// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Ye._1nr

package __1Ye {
import _03u._0MI;

import _0tf._0yo;

import _1OQ._yi;

import _1PE.Account;

import _1PM._1YQ;

import _1i0._1Gx;

public class _1nr extends _0MI {

    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var account:Account;
    [Inject]
    public var _1jG:_1Gx;


    override protected function startTask():void {
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/app/init", {game_net: this.account._0iC()});
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        var _local3:XML = XML(_arg2);
        ((_arg1) && (this._1jG.dispatch(_local3)));
        this._gD(_local3);
        _Ug(_arg1, _arg2);
    }

    private function _gD(_arg1:XML):void {
        if (_arg1 != null) {
            _yi.xml = _arg1;
        }
        ;
    }


}
}//package _1Ye

