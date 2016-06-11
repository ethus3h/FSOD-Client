// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_mq._2F

package _mq {
import _0cA._0bz;

import _0tf._0lD;
import _0tf._0yo;

import _1PM.*;

import _1l6.AppEngineRequestStats;
import _1l6._0Dr;
import _1l6._0dk;
import _1l6._1Z6;
import _1l6._V3;

import _4p._1ae;

public class _2F implements _YL {

    private const _1iY:Boolean = true;

    [Inject]
    public var context:_Ld;
    [Inject]
    public var setup:_1ae;
    [Inject]
    public var _sk:_0bz;


    public function configure():void {
        this._Gk();
        if (this.setup._yP()) {
            this._0fH();
        } else {
            if (this._1iY) {
                this._0cc();
            } else {
                this._0Jc();
            }
            ;
        }
        ;
    }

    private function _Gk():void {
        this._sk.map(_0lD)._131(_1Z6);
    }

    private function _0fH():void {
        this._sk.map(AppEngineRequestStats)._0MH();
        this._sk.map(_0Dr);
        this._sk.map(_0yo)._131(_V3);
    }

    private function _0cc():void {
        this._sk.map(_0Dr);
        this._sk.map(_0yo)._131(_0dk);
    }

    private function _0Jc():void {
        this._sk.map(_0yo)._131(_0Dr);
    }


}
}//package _mq

