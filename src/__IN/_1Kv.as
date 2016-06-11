// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_IN._1Kv

package __IN {
import _07g.TitleView;

import _10a._1bT;

import _1i0._cz;
import _1i0._nB;

import __Nj._0ay;

public class _1Kv {

    [Inject]
    public var _1Dx:_cz;
    [Inject]
    public var _p2:_nB;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _Tu:_1bT;


    public function execute():void {
        var _local1:Class = ((this._Tu._1Qb()) || (TitleView));
        this._1Dx.dispatch();
        this.closeDialogs.dispatch();
        this._p2.dispatch(new (_local1)());
    }


}
}//package _IN

