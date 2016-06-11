// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_70._1wg

package _70 {
import _10a._FU;

import _1PM._1YQ;

import _1i0._Q;

import _1kP.ResurrectionView;

import _GD._7t;

public class _1wg {

    [Inject]
    public var model:_FU;
    [Inject]
    public var _gn:_7t;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var _1TT:_1YQ;


    public function execute():void {
        this._1TT.info("Resurrect Player");
        this._gn._Br();
        this.model._zQ(true);
        this._p2.dispatch(new ResurrectionView());
    }


}
}//package _70

