// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Vn._2-4

package _0Vn {
import _1PE.Account;

import __Nj._0ay;

import _r7._17v;

public class _24 extends _17v {

    [Inject]
    public var account:Account;
    [Inject]
    public var view:KabamAccountDetailDialog;
    [Inject]
    public var _00G:_0ay;


    override public function initialize():void {
        this.view._9S.add(this._1qs);
        this.view._0Pf(this.account._02H());
    }

    override public function destroy():void {
        this.view._9S.remove(this._1qs);
    }

    private function _1qs():void {
        this._00G.dispatch();
    }


}
}//package _0Vn

