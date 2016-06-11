// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_031._1vg

package _031 {
import _03u._1hp;
import _03u._2w;
import _03u._BW;
import _03u._Fk;

import _085._LQ;

import _0hi._1IP;

import _10a._1bT;

import _1i0._18D;
import _1i0._1aE;
import _1i0._cz;
import _1i0._nB;

import _Ny._bX;

import _U1.CharacterSelectionAndNewsScreen;

import __1Ye._0nK;

import __Nj._0ay;

import _rB._0en;

import com.company.assembleegameclient.game.GameSprite;

import flash.display.Sprite;

public class _1vg {

    [Inject]
    public var data:_LQ;
    [Inject]
    public var _03k:_bX;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _X8:_1aE;
    [Inject]
    public var _0jg:_1IP;
    [Inject]
    public var _16k:_18D;
    [Inject]
    public var _1Dx:_cz;
    [Inject]
    public var _09N:_nB;
    [Inject]
    public var _0ke:_1bT;
    [Inject]
    public var _1pv:_0en;
    private var _0kj:_1hp;


    public function execute():void {
        this._0kj = new _1hp(this._09N, this._1sj());
        var _local1:_Fk = new _Fk(this._03k, this._PZ(), this._zR());
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _PZ():_2w {
        var _local1:_2w = new _2w();
        _local1.add(new _1hp(this.closeDialogs));
        _local1.add(new _1hp(this._16k, this._1Ow()));
        _local1.add(new _1hp(this._0jg));
        _local1.add(new _1hp(this._1Dx));
        _local1.add(this._1pv);
        _local1.add(this._0kj);
        return (_local1);
    }

    private function _zR():_2w {
        var _local1:_2w = new _2w();
        _local1.add(new _1hp(this._X8, this._03k));
        _local1.add(this._0kj);
        return (_local1);
    }

    private function _1sj():Sprite {
        var _local1:Class = this._0ke._1Qb();
        if ((((_local1 == null)) || ((_local1 == GameSprite)))) {
            _local1 = CharacterSelectionAndNewsScreen;
        }
        ;
        return (new (_local1)());
    }

    private function _1Ow():_0nK {
        var _local1:_0nK = new _0nK();
        _local1.category = "account";
        _local1._0HR = "signedIn";
        return (_local1);
    }


}
}//package _031

