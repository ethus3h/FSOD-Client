// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_02B._ts

package _02B {
import _0y8._1xD;

import _10a._FU;

import _14._1Id;

import _1i0._Q;
import _1i0._cz;
import _1i0._nB;

import _GD._7t;

import _U1.CharacterSelectionAndNewsScreen;

import _wm._0e7;
import _wm._1Jw;

public class _ts {

    [Inject]
    public var player:_FU;
    [Inject]
    public var model:_7t;
    [Inject]
    public var _1Dx:_cz;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var _09N:_nB;
    [Inject]
    public var _1BF:_1xD;


    public function execute():void {
        this._1Dx.dispatch();
        if (this.model._0K3()) {
            this._0Mh();
        } else {
            this._1y7();
        }
        ;
    }

    private function _0Mh():void {
        var _local1:_1Id = this.model._1jw();
        var _local2:_1Jw = new _0e7(this.player._1rI(), _local1.charId_);
        this._1BF.dispatch(_local2);
    }

    private function _1y7():void {
        this._09N.dispatch(new CharacterSelectionAndNewsScreen());
    }


}
}//package _02B

