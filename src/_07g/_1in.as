// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._1in

package _07g {
import _0y8._1xD;

import _U1._bv;

import _r7._17v;

import _wm._0e7;

public class _1in extends _17v {

    [Inject]
    public var view:_bv;
    [Inject]
    public var _1BF:_1xD;


    override public function initialize():void {
        this.view._uI.add(this._0b6);
    }

    override public function destroy():void {
        this.view._uI.remove(this._0b6);
    }

    private function _0b6(_arg1:int):void {
        this._1BF.dispatch(new _0e7(this.view.accountId, _arg1));
    }


}
}//package _07g

