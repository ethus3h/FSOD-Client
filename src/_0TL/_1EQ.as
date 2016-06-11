// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0TL._1EQ

package _0TL {

import _03u._1hp;
import _03u._2w;
import _03u._BW;
import _03u._Fk;
import _03u._wP;

import _0yS.DeletingCharacterView;

import _1i0._Q;

import _1pf._2n;

import _U1.CharacterSelectionAndNewsScreen;

import __Nj._0ay;
import __Nj._M4;

public class _1EQ {

    [Inject]
    public var _2:_2n;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _p2:_Q;


    public function execute():void {
        var _local1:_2w = new _2w();
        _local1.add(new _1hp(this._nU, new DeletingCharacterView()));
        _local1.add(new _Fk(this._2, this._0Rc(), this._0Id()));
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _0Rc():_wP {
        var _local1:_2w = new _2w();
        _local1.add(new _1hp(this._p2, new CharacterSelectionAndNewsScreen()));
        _local1.add(new _1hp(this.closeDialogs));
        return (_local1);
    }

    private function _0Id():_wP {
        return (new _1hp(this._nU, "Unable to delete character"));
    }


}
}//package _0TL

