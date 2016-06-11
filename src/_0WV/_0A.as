// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0WV._0A-

package _0WV {
import _0hi._DG;

import _1PE.Account;

import _1bt._1LA;

import _1fj._0Iw;

import _YV._17x;
import _YV._bD;

import _yh._10;

public class _0A {

    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var account:Account;
    [Inject]
    public var data:XML;


    public function execute():void {
        this._9R.map(_DG)._UN(this._02o());
    }

    private function _02o():Class {
        return (((this._1hW()) ? _bD : _17x));
    }

    private function _1hW():Boolean {
        return ((((((((this.account is _10)) || ((this.account is _0Iw)))) && ((this.data["UseExternalPayments"] == null)))) || (Boolean(int(this.data["UseExternalPayments"])))));
    }


}
}//package _0WV

