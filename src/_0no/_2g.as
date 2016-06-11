// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._2g

package _0no {
import _1E._0dI;
import _1E._1pC;

import _1Em._0Op;
import _1Em._1zd;

import _1PE.Account;

import _1d9._0fc;

import _r7._17v;

public class _2g extends _17v {

    [Inject]
    public var view:_1zd;
    [Inject]
    public var addSpeechBalloon:_0fc;
    [Inject]
    public var _0jd:_1pC;
    [Inject]
    public var account:Account;


    override public function initialize():void {
        this.addSpeechBalloon.add(this._0fW);
    }

    override public function destroy():void {
        this.addSpeechBalloon.remove(this._0fW);
    }

    private function _0fW(_arg1:_0dI):void {
        var _local2:String = ((((this.account._vD()) || (this._0jd._9Y(_arg1.go.name_)))) ? _arg1.text : ". . .");
        this.view.addSpeechBalloon(new _0Op(_arg1.go, _local2, _arg1.background, _arg1._0r3, _arg1._18X, _arg1._t1, _arg1.textColor, _arg1._IX, _arg1.bold, _arg1._0l4));
    }


}
}//package _0no

