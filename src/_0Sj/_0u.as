// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0-u

package _0Sj {
import _1L3._0xm;
import _1L3._IG;

import __Nj._M4;

import _r7._17v;

public class _0u extends _17v {

    [Inject]
    public var view:PetFuser;
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
    }


}
}//package _0Sj

