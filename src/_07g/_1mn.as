// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._1mn

package _07g {
import _0hi._0XG;

import __Nj._0ay;

import _r7._17v;

public class _1mn extends _17v {

    [Inject]
    public var view:AgeVerificationDialog;
    [Inject]
    public var _0g4:_0XG;
    [Inject]
    public var closeDialogs:_0ay;


    override public function initialize():void {
        this.view._1Bb.add(this._0g6);
    }

    override public function destroy():void {
        this.view._1Bb.remove(this._0g6);
    }

    private function _0g6(_arg1:Boolean):void {
        if (_arg1) {
            this._9m();
        } else {
            this._t7();
        }
        ;
    }

    private function _9m():void {
        this._0g4.dispatch();
        this.closeDialogs.dispatch();
    }

    private function _t7():void {
        this.closeDialogs.dispatch();
    }


}
}//package _07g

