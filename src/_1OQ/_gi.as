// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1OQ._gi

package _1OQ {
import _0cA._0bz;

import _0ga._0LM;
import _0ga._0Qi;
import _0ga._0UA;
import _0ga._0hN;
import _0ga._10K;
import _0ga._1eX;

import _0vs._0aM;
import _0vs._14I;

import _1PM.*;

import _2B._Pk;
import _2B._vA;

import _4p._0yD;
import _4p._1ae;

import flash.display.DisplayObjectContainer;
import flash.display.LoaderInfo;

public class _gi implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var root:DisplayObjectContainer;
    [Inject]
    public var data:_vA;
    [Inject]
    public var loaderInfo:LoaderInfo;
    [Inject]
    public var _180:_0aM;


    public function configure():void {
        var _local1:_1ae = this._0xH();
        this._sk.map(_0yD)._nR(_local1);
        this._sk.map(_1ae)._nR(_local1);
        this._sk.map(_14I)._0MH();
    }

    private function _0xH():_1ae {
        var _local1:_Pk = this.data._1NV();
        switch (_local1) {
            case _Pk._Hq:
                return (new _0hN());
            case _Pk._gu:
                return (this._0SH());
            case _Pk._cS:
                return (new _0Qi());
            case _Pk._1Nh:
                return (new _1eX());
            case _Pk.TESTING2:
                return (new _0LM());
            default:
                return (new _0UA());
        }
        ;
    }

    private function _0SH():_10K {
        return (new _10K().setAddress(this.data._09D()));
    }


}
}//package _1OQ

