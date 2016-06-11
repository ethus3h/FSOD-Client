// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Ny._6J

package _Ny {
import _03u._0MI;

import _0tf._0yo;

import _1PE.Account;

import _1PM._1YQ;

import _1T3._1cZ;

import com.company.assembleegameclient.util.offer.Offers;

import flash.utils.getTimer;

public class _6J extends _0MI {

    [Inject]
    public var account:Account;
    [Inject]
    public var model:_1cZ;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var client:_0yo;
    private var target:String;
    private var guid:String;


    override protected function startTask():void {
        this.target = (this.account._1W6() + "/getoffers");
        this.guid = this.account.getUserId();
        this._1oP();
        this._16m();
    }

    private function _1oP():void {
        var _local1:int = getTimer();
        if (((!((this.guid == this.model._0Ke))) || (((_local1 - this.model._2A) > _1cZ._0rG)))) {
            this.model._0Ke = this.guid;
            this.model._2A = _local1;
        }
        ;
    }

    private function _16m():void {
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest(this.target, this._uc());
    }

    private function _uc():Object {
        var _local1:Object = this.account._1iT();
        _local1.time = this.model._2A;
        _local1.game_net_user_id = this.account._0uI();
        _local1.game_net = this.account._0iC();
        _local1.play_platform = this.account._0X8();
        return (_local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._1M(_arg2);
        } else {
            this._0VA(_arg2);
        }
        ;
        _Ug(_arg1);
    }

    private function _1M(_arg1:String):void {
        this.model._0eR = new Offers(new XML(_arg1));
    }

    private function _0VA(_arg1:String):void {
        this._1TT.error(_arg1);
    }


}
}//package _Ny

