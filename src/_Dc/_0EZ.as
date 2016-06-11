// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Dc._0EZ

package _Dc {
import _02h._Zy;

import _0cA._0bz;

import _0tb._0Et;
import _0tb._0iU;
import _0tb._wr;

import _1PM.*;

import _1bt._1LA;

import _4p._1ae;

import _UB._210;

public class _0EZ implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var setup:_1ae;


    public function configure():void {
        this.mediatorMap.map(WebMain)._1kd(_Zy);
        this._0OA();
    }

    private function _0OA():void {
        if (this.setup._2q()) {
            this._9R.map(_wr)._UN(_0Et);
        } else {
            this._9R.map(_wr)._UN(_0iU);
        }
        ;
    }


}
}//package _Dc

