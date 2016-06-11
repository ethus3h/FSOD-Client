// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._F3

package _0Sj {
import _1L3._0xm;
import _1L3._IG;

import __Nj._M4;

import _r7._17v;

public class _F3 extends _17v {

    [Inject]
    public var view:PetFeeder;
    [Inject]
    public var _e2:_IG;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _Iv:_0xm;


    override public function initialize():void {
        if (!this._Iv._1uw) {
            this._Iv._1uw = this._e2._0ER();
        }
        ;
        this.view.initialize(this._Iv);
        this.view._1S3.addOnce(this._1S3);
    }

    private function _1S3():void {
        this._Iv.selected = _0xm.LEFT;
    }


}
}//package _0Sj

