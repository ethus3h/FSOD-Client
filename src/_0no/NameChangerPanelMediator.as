// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no.NameChangerPanelMediator

package _0no {
import _04g._GE;

import _0MO._0WQ;

import _0Mc._0ng;

import _1PE.Account;

import _6u._TG;

import __Nj._M4;

import _r7._17v;

public class NameChangerPanelMediator extends _17v {

    [Inject]
    public var account:Account;
    [Inject]
    public var view:NameChangerPanel;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _LY:_0WQ;


    override public function initialize():void {
        this.view.chooseName.add(this._1aM);
        this._LY.add(this._19j);
    }

    override public function destroy():void {
        this.view.chooseName.remove(this._1aM);
        this._LY.remove(this._19j);
    }

    private function _1aM():void {
        if (this.account._vD()) {
            this._nU.dispatch(new _0ng(this.view.gs_, this.view._10p));
        } else {
            this._nU.dispatch(new _GE(_TG._s));
        }
        ;
    }

    private function _19j(_arg1:String):void {
        this.view._Cy(_arg1);
    }


}
}//package _0no

