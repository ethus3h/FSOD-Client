// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1PE._kn

package _1PE {
import _03u._1hp;
import _03u._2w;
import _03u._BW;
import _03u._Fk;
import _03u._wP;

import _04g.BuyingDialog;

import _07g.CharacterSlotNeedGoldDialog;

import _10a._FU;

import _1i0._18D;
import _1i0._Q;

import _Ny._0JW;

import _U1.CharacterSelectionAndNewsScreen;

import _Vb.ErrorDialog;

import __1Ye._0nK;

import __Nj._0ay;
import __Nj._M4;

public class _kn {

    [Inject]
    public var price:int;
    [Inject]
    public var _2:_0JW;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var model:_FU;
    [Inject]
    public var account:Account;
    [Inject]
    public var _16k:_18D;


    public function execute():void {
        if (this._nv()) {
            this._1R7();
        } else {
            this._1hZ();
        }
        ;
    }

    private function _nv():Boolean {
        return ((this.model._1fB() < this.model._2y()));
    }

    private function _1R7():void {
        this._nU.dispatch(new CharacterSlotNeedGoldDialog());
    }

    private function _1hZ():void {
        this._nU.dispatch(new BuyingDialog());
        var _local1:_2w = new _2w();
        _local1.add(new _Fk(this._2, this._PZ(), this._zR()));
        _local1.add(new _1hp(this._00G));
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _PZ():_wP {
        var _local1:_2w = new _2w();
        _local1.add(new _1hp(this._p2, new CharacterSelectionAndNewsScreen()));
        _local1.add(new _1hp(this._16k, this._lw()));
        return (_local1);
    }

    private function _lw():_0nK {
        var _local1:_0nK = new _0nK();
        _local1.category = "credits";
        _local1._0HR = "buyConverted";
        _local1.label = "Character Slot";
        _local1.value = this.price;
        return (_local1);
    }

    private function _zR():_wP {
        return (new _1hp(this._nU, new ErrorDialog("Unable to complete character slot purchase")));
    }


}
}//package _1PE

