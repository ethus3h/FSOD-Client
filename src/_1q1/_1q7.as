// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1q1._1q7

package _1q1 {
import _03u._BW;

import _07g._0Ek;

import _10a._FU;

import _13d._RK;

import _20I._0Hi;
import _20I._1GP;

import __Nj._M4;

public class _1q7 {

    [Inject]
    public var skin:_1GP;
    [Inject]
    public var model:_FU;
    [Inject]
    public var _2:_RK;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _nU:_M4;


    public function execute():void {
        if (this._CG()) {
            this._0LL();
        }
        ;
    }

    private function _0LL():void {
        if (this._X()) {
            this._D7();
        } else {
            this._C6();
        }
        ;
    }

    private function _CG():Boolean {
        return ((this.skin._1b7() == _0Hi.PURCHASABLE));
    }

    private function _X():Boolean {
        return ((this.model._1fB() >= this.skin.cost));
    }

    private function _D7():void {
        this._1ZX.add(this._2);
        this._2.start();
    }

    private function _C6():void {
        this._nU.dispatch(new _0Ek());
    }


}
}//package _1q1

