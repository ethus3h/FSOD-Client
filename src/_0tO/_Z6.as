// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tO._Z6

package _0tO {
import _03u._0MI;

import _0tf._0yo;

import _10a._FU;

import _1pV.Timespan;
import _1pV._0BG;
import _1pV._SQ;
import _1pV._nD;

public class _Z6 extends _0MI {

    [Inject]
    public var client:_0yo;
    [Inject]
    public var player:_FU;
    [Inject]
    public var model:_0BG;
    [Inject]
    public var factory:_SQ;
    [Inject]
    public var timespan:Timespan;
    public var charId:int;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/fame/list", this._1H9());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._1lU(_arg2)));
        _Ug(_arg1, _arg2);
    }

    private function _1lU(_arg1:String):void {
        var _local2:Vector.<_nD> = this.factory._1Lp(XML(_arg1));
        this.model._Ni(_local2);
    }

    private function _1H9():Object {
        var _local1:Object = {};
        _local1.timespan = this.timespan._yr();
        _local1.accountId = this.player._1rI();
        _local1.charId = this.charId;
        return (_local1);
    }


}
}//package _0tO

