// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04g._AE

package _04g {
import _0hi._1IP;

import _1PE.Account;

import _r7._17v;

public class _AE extends _17v {

    [Inject]
    public var account:Account;
    [Inject]
    public var view:_13e;
    [Inject]
    public var update:_1IP;


    override public function initialize():void {
        this.view._0Pf(this.account._02H(), this.account._vD());
        this.update.add(this._0jg);
    }

    override public function destroy():void {
        this.update.remove(this._0jg);
    }

    private function _0jg():void {
        this.view._0Pf(this.account._02H(), this.account._vD());
    }


}
}//package _04g

