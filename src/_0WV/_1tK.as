// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0WV._1tK

package _0WV {
import _03u._1hp;
import _03u._2w;
import _03u._BW;

import _10a._FU;

import _1i0._Q;

import _Ny._200;

import _U1._4H;

import flash.display.Sprite;

public class _1tK {

    [Inject]
    public var model:_FU;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var view:Sprite;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _2:_200;


    public function execute():void {
        if (this.model._Eq) {
            this._0oS();
        } else {
            this._p2.dispatch(this.view);
        }
        ;
    }

    private function _0oS():void {
        this._p2.dispatch(new _4H());
        var _local1:_2w = new _2w();
        _local1.add(this._2);
        _local1.add(new _1hp(this._p2, this.view));
        this._1ZX.add(_local1);
        _local1.start();
    }


}
}//package _0WV

