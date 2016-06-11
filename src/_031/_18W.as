// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_031._18W

package _031 {
import _03u._0MI;

import _10a._1bT;

import _1H0.FameView;

import _1L3._IG;

import _1PE.Account;

import _1i0._cz;
import _1i0._nB;

import _U1.CharacterSelectionAndNewsScreen;

import _rB._0en;

import flash.display.Sprite;

public class _18W {

    [Inject]
    public var account:Account;
    [Inject]
    public var _1Dx:_cz;
    [Inject]
    public var _09N:_nB;
    [Inject]
    public var _0ke:_1bT;
    [Inject]
    public var _1pv:_0en;
    [Inject]
    public var _e2:_IG;


    public function execute():void {
        this.account.clear();
        this._1Dx.dispatch();
        this._e2._1iz();
        this._1pv._i4.addOnce(this._17T);
        this._1pv.start();
    }

    private function _17T(_arg1:_0MI, _arg2:Boolean, _arg3:String):void {
        this._09N.dispatch(this._fh());
    }

    private function _fh():Sprite {
        if (this._0ke._1Qb() == FameView) {
            return (new CharacterSelectionAndNewsScreen());
        }
        ;
        return (new (((this._0ke._1Qb()) || (CharacterSelectionAndNewsScreen)))());
    }


}
}//package _031

