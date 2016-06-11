// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fG._0qT

package _1fG {
import _03u._0MI;

import _0hU._0n;

import _0tf._0yo;

import _1PE.Account;

import _1ik._2X;
import _1ik._rG;

import com.company.util._0CM;

public class _0qT extends _0MI {

    private static const _02i:String = "arena/getRecords";

    [Inject]
    public var account:Account;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var factory:_jo;
    [Inject]
    public var _Fs:_0n;
    public var filter:_rG;


    override protected function startTask():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest(_02i, this._1H9());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._18y(_arg2)));
        _Ug(_arg1, _arg2);
    }

    private function _18y(_arg1:String):void {
        var _local2:Vector.<_2X> = this.factory._99(XML(_arg1).Record);
        this.filter._1ug(_local2);
        this._Fs.dispatch();
    }

    private function _1H9():Object {
        var _local1:Object = {type: this.filter.getKey()};
        _0CM._0lh(_local1, this.account._1iT());
        return (_local1);
    }


}
}//package _1fG

