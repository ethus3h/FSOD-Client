// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0A5._1Ly

package _0A5 {
import _0cA._0bz;

import _0hi._1Uy;

import _0oL._0hs;

import _1M9._3f;
import _1M9._6M;
import _1M9._eI;

import _1PM.*;

import _1bt._1LA;

import _2B._Pk;
import _2B._vA;

import _hH._1fm;

public class _1Ly implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var data:_vA;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        var _local1:_Pk = this.data._1NV();
        switch (_local1) {
            case _Pk._gu:
                this._0v6();
                return;
            case _Pk._Hq:
            case _Pk._cS:
                this._1x2();
                return;
            default:
                this._0mP();
        }
        ;
    }

    private function _1x2():void {
        this._sk.map(_0hs)._5Z(_eI);
    }

    private function _0v6():void {
        this._sk.map(_0hs)._nR(this._1YF());
    }

    private function _1YF():_6M {
        return (new _6M().setIP(this.data._09D()));
    }

    private function _0mP():void {
        this._sk.map(_0hs)._5Z(_3f);
        this._9R.map(_1Uy)._UN(_1fm);
    }


}
}//package _0A5

