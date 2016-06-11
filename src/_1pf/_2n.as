// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1pf._2-n

package _1pf {
import _03u._0MI;

import _06i._1ww;

import _0tf._0yo;

import _1PE.Account;

import com.company.assembleegameclient.appengine.SavedCharacter;

public class _2n extends _0MI {

    [Inject]
    public var character:SavedCharacter;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var account:Account;
    [Inject]
    public var model:_1ww;


    override protected function startTask():void {
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/char/delete", this._1SI());
    }

    private function _1SI():Object {
        var _local1:Object = this.account._1iT();
        _local1.charId = this.character.charId();
        _local1.reason = 1;
        return (_local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        ((_arg1) && (this._0TD()));
        _Ug(_arg1, _arg2);
    }

    private function _0TD():void {
        this.model.deleteCharacter(this.character.charId());
    }


}
}//package _1pf

