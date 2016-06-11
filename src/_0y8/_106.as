// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0y8._106

package _0y8 {
import _1H0.FameView;

import _1i0._Q;

import _wm._1Jw;
import _wm._vG;

public class _106 {

    [Inject]
    public var _1HM:_1Jw;
    [Inject]
    public var model:_vG;
    [Inject]
    public var _p2:_Q;


    public function execute():void {
        this.model.accountId = this._1HM._1rI();
        this.model._O = this._1HM._0SV();
        this._p2.dispatch(new FameView());
    }


}
}//package _0y8

