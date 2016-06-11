// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0WV._GY

package _0WV {
import _03u._1hp;
import _03u._2w;
import _03u._BW;
import _03u._Fk;
import _03u._wP;

import _04g._GE;

import _07g._0Ek;

import _10a._FU;

import _1PE.Account;

import _1i0._0Wt;
import _1i0._171;

import _6u._TG;

import _Ny._200;

import __1Ye.PurchaseCharacterClassTask;
import __1Ye._0sV;

import __Nj._M4;

import com.company.assembleegameclient.objects.ObjectLibrary;

public class _GY {

    [Inject]
    public var classType:int;
    [Inject]
    public var account:Account;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _1r4:_171;
    [Inject]
    public var _1pr:_0Wt;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _2:PurchaseCharacterClassTask;
    [Inject]
    public var failure:_0sV;
    [Inject]
    public var _0V4:_200;
    private var cost:int;


    public function execute():void {
        this.cost = this._vt();
        if (!this.account._vD()) {
            this._1rZ();
        } else {
            if (this._0ni()) {
                this._1HJ();
            } else {
                this._1TP();
            }
            ;
        }
        ;
    }

    private function _1rZ():void {
        this._nU.dispatch(new _GE("In order to unlock a class type you must be a registered user."));
        this._1r4.dispatch();
    }

    private function _1HJ():void {
        this._qP._0xd((-1 * this.cost));
        this._1pr.dispatch(this.classType);
        var _local1:_2w = new _2w();
        _local1.add(new _Fk(this._2, this._0V4, this._zR()));
        _local1.add(new _1hp(this._1r4));
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _zR():_wP {
        this.failure._06q = this._2;
        return (this.failure);
    }

    private function _1TP():void {
        var _local1:_0Ek = new _0Ek();
        _local1._Mu(_TG._2A, {cost: this.cost});
        this._nU.dispatch(_local1);
        this._1r4.dispatch();
    }

    private function _vt():int {
        return (ObjectLibrary._18H[this.classType].UnlockCost);
    }

    private function _0ni():Boolean {
        return (((!(this.cost)) || ((this.cost <= this._qP._1fB()))));
    }


}
}//package _0WV

