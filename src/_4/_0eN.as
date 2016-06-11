// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-._0eN

package _4 {
import _10a._FU;

import _1E._m;

import _1d9._Mm;

import _1i0._Q;

import _U1._1sS;

import _r7._17v;

public class _0eN extends _17v {

    [Inject]
    public var view:_1CJ;
    [Inject]
    public var model:_FU;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var play:_Mm;


    override public function initialize():void {
        var _local1:Boolean = this.model.hasAvailableCharSlot();
        this.view._1WZ(_local1);
        if (_local1) {
            this.view.play.addOnce(this._dF);
        }
        ;
        this.view.back.addOnce(this._lo);
    }

    override public function destroy():void {
        this.view.back.remove(this._lo);
        this.view.play.remove(this._dF);
    }

    private function _lo():void {
        this._p2.dispatch(new _1sS());
    }

    private function _dF():void {
        var _local1:_m = new _m();
        _local1._HG = true;
        _local1.charId = this.model._uQ();
        _local1._00F = -1;
        _local1._0uR = true;
        this.play.dispatch(_local1);
    }


}
}//package _4-

