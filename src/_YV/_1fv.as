// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_YV._1fv

package _YV {

import _03u._1hp;
import _03u._2w;
import _03u._BW;

import _1PM._1YQ;

import _Ny._1PD;

import __Nj._0ay;

public class _1fv {

    [Inject]
    public var _05f:_1PD;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _1TT:_1YQ;


    public function execute():void {
        this._1TT.debug("execute");
        var _local1:_2w = new _2w();
        _local1.add(this._05f);
        _local1.add(new _1hp(this._00G));
        this._1ZX.add(_local1);
        _local1.start();
    }


}
}//package _YV

