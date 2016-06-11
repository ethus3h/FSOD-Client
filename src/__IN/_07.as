// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_IN._07-

package __IN {
import _03u._1hp;
import _03u._2w;
import _03u._BW;

import _0MO._0U6;

import _0Mk._1Sw;

import _0cA._0bz;

import _175._0CN;

import _1RN._bw;

public class _07 {

    [Inject]
    public var language:String;
    [Inject]
    public var model:_0CN;
    [Inject]
    public var _g:_0U6;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _2:_1Sw;
    [Inject]
    public var _hv:_Tq;
    [Inject]
    public var _1om:_bw;
    [Inject]
    public var _1ZX:_BW;


    public function execute():void {
        this.model._0U8(this.language);
        this._g.dispatch();
        var _local1:_2w = new _2w();
        _local1.add(this._2);
        _local1.add(new _1hp(this._hv));
        _local1.add(new _1hp(this._1om));
        this._1ZX.add(_local1);
        _local1.start();
    }


}
}//package _IN

