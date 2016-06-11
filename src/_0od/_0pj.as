// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._0pj

package _0od {
import _0hi._1pq;

import _1PE.Account;

import __Nj._M4;

import _r7._17v;

public class _0pj extends _17v {

    [Inject]
    public var view:_0ep;
    [Inject]
    public var account:Account;
    [Inject]
    public var logout:_1pq;
    [Inject]
    public var _nU:_M4;


    override public function initialize():void {
        this.view.login.add(this._0HH);
        this.view.register.add(this._jy);
    }

    override public function destroy():void {
        this.view.login.remove(this._0HH);
        this.view.register.remove(this._jy);
    }

    private function _jy():void {
        this._nU.dispatch(new _0Wl());
    }

    private function _0HH():void {
        if (this.account._vD()) {
            this._Fi();
        } else {
            this._nU.dispatch(new WebLoginDialog());
        }
        ;
    }

    private function _Fi():void {
        this.logout.dispatch();
        this.view._0Pf("", false);
    }


}
}//package _0od

