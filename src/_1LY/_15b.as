// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1LY._15b

package _1LY {
import _0cy._1ra;

import _0vs._0aM;

import _1PM._1YQ;

import _1i0._Q;

import _U1._1Br;

public class _15b {

    [Inject]
    public var _p2:_Q;
    [Inject]
    public var domain:_0aM;
    [Inject]
    public var _1TT:_1YQ;


    public function execute():void {
        if (this.domain._1Mq()) {
            this._13x();
        } else {
            this._1H1();
        }
        ;
    }

    private function _13x():void {
        this._p2.dispatch(new _1Br());
    }

    private function _1H1():void {
        this._1TT.debug("bad domain, deny");
        this._p2.dispatch(new _1ra());
    }


}
}//package _1LY

