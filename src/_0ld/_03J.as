// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._03J

package _0ld {
import _0Sj._0mW;

import _1L3._0xm;
import _1L3._1FO;
import _1L3._IG;

import __Nj._0uG;

import _r7._17v;

public class _03J extends _17v {

    [Inject]
    public var view:PetPicker;
    [Inject]
    public var model:_IG;
    [Inject]
    public var _BY:_0mW;
    [Inject]
    public var _Iv:_0xm;
    [Inject]
    public var _nU:_0uG;


    override public function initialize():void {
        this.view._08H(this.model._1w1());
        var _local1:_1FO = (((this._Iv.selected) == _0xm.LEFT) ? this._Iv._1V : this._Iv._1uw);
        if (_local1) {
            this.view._3B(_local1);
        }
        ;
        ((this._Iv._1V) && (this.view._1ch(this._Iv._1V)));
        ((this._Iv._1uw) && (this.view._1ch(this._Iv._1uw)));
        this.view._1dM.addOnce(this._KI);
    }

    private function _KI(_arg1:_1FO):void {
        if (this._Iv.selected == _0xm.LEFT) {
            this._Iv._1uw = _arg1;
        } else {
            this._Iv._1V = _arg1;
        }
        ;
        this._nU.dispatch(new this._Iv.caller());
    }


}
}//package _0ld

