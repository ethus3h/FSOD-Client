// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Ye.PurchaseCharacterClassTask

package __1Ye {
import _03u._0MI;

import _0tf._0yo;

import _10a._FU;

import _1PE.Account;

import _1PM._1YQ;

import com.company.assembleegameclient.appengine._0Iq;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util._0CM;

public class PurchaseCharacterClassTask extends _0MI {

    [Inject]
    public var classType:int;
    [Inject]
    public var account:Account;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _1TT:_1YQ;


    override protected function startTask():void {
        this._1TT.info("PurchaseCharacterClassTask.startTask: Started ");
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/char/purchaseClassUnlock", this._09Y());
    }

    public function _09Y():Object {
        var _local1:Object = {};
        _local1.game_net_user_id = this.account._0uI();
        _local1.game_net = this.account._0iC();
        _local1.play_platform = this.account._0X8();
        _local1.do_login = Parameters._1o6;
        _local1.classType = this.classType;
        _0CM._0lh(_local1, this.account._1iT());
        return (_local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        this._1TT.info("PurchaseCharacterClassTask.onComplete: Ended ");
        ((_arg1) && (this._lH()));
        _Ug(_arg1, _arg2);
    }

    private function _lH():void {
        this._qP._7N(this.classType, _0Iq._0l9);
        _Ug(true);
    }


}
}//package _1Ye

