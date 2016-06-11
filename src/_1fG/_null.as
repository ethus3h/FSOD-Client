// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fG.null

package _1fG {
import _03u._0MI;

import _0tf._0yo;

import _1PE.Account;

import _1ik._UD;

public class _null extends _0MI {

    private static const _02i:String = "arena/getPersonalBest";

    [Inject]
    public var account:Account;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var _TW:_UD;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest(_02i, this._1H9());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._5I(_arg2)));
        _Ug(_arg1, _arg2);
    }

    private function _5I(_arg1:String):void {
        var _local2:XML = XML(_arg1);
        this._TW._1ej._0fh = _local2.Record.Time;
        this._TW._1ej._1qz = _local2.Record.WaveNumber;
    }

    private function _1H9():Object {
        return (this.account._1iT());
    }


}
}//package _1fG

