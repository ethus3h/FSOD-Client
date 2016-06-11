// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._1di

package _0no {
import _04g._GE;

import _0hi._DG;

import _1PE.Account;

import _6u._TG;

import __Nj._M4;

import _r7._17v;

public class _1di extends _17v {

    [Inject]
    public var account:Account;
    [Inject]
    public var view:MoneyChangerPanel;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _ky:_DG;


    override public function initialize():void {
        this.view._0pU.add(this._1Cx);
    }

    override public function destroy():void {
        this.view._0pU.remove(this._1Cx);
    }

    private function _1Cx():void {
        if (this.account._vD()) {
            this._ky.dispatch();
        } else {
            this._nU.dispatch(new _GE(_TG._0gU));
        }
        ;
    }


}
}//package _0no

