// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1LY._GS

package _1LY {
import _07g.AgeVerificationDialog;

import _0oL._0hs;

import _10a._FU;

import _1Dd._0Qf;

import _1E._m;

import _1PE.Account;

import _1d9._Mm;

import _1i0._nB;

import _U1.CharacterSelectionAndNewsScreen;

import __Nj._M4;

public class _GS {

    private const _pv:int = 782;

    [Inject]
    public var account:Account;
    [Inject]
    public var model:_FU;
    [Inject]
    public var _09N:_nB;
    [Inject]
    public var _04M:_Mm;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var servers:_0hs;
    [Inject]
    public var _o2:_0Qf;


    public function execute():void {
        if (!this.servers._Pg()) {
            this._SC();
        } else {
            if (!this.account._vD()) {
                this._8i();
            } else {
                if (!this.model._0Y()) {
                    this._0iQ();
                } else {
                    this._1y7();
                }
                ;
            }
            ;
        }
        ;
    }

    private function _1y7():void {
        this._09N.dispatch(new CharacterSelectionAndNewsScreen());
    }

    private function _8i():void {
        this._04M.dispatch(this._0y());
    }

    private function _0y():_m {
        var _local1:_m = new _m();
        _local1._HG = true;
        _local1.charId = this.model._uQ();
        _local1._00F = -1;
        _local1._0uR = true;
        return (_local1);
    }

    private function _0iQ():void {
        this._nU.dispatch(new AgeVerificationDialog());
    }

    private function _SC():void {
        this._nU.dispatch(this._o2._1l1());
    }


}
}//package _1LY

