// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj.PetFuser

package _0Sj {
import _08Y._sC;

import _1L3._0xm;
import _1L3._1FO;

import _1Sm._sy;

import _MU._12V;

import flash.display.Sprite;

public class PetFuser extends Sprite {

    public const _1S3:_sy = new _sy(String);

    public function PetFuser() {
        this._0j = new _12V();
        this._1TB = _sC._1qw();
        this._20A = _sC._1l();
        super();
        this._0j._zc = true;
        addChild(this._0j);
        addChild(this._1TB);
        addChild(this._20A);
        this._0j._1S3.addOnce(this._0JH);
        this._20A._1S3.addOnce(this._D5);
    }
    private var _0j:_12V;
    private var _1TB:_0SX;
    private var _20A:_12V;
    private var state:_0xm;

    public function initialize(_arg1:_0xm):void {
        this.state = _arg1;
        this._UX(this.state._1uw, _0xm.LEFT);
        if (this.state._1V) {
            this._UX(this.state._1V, _0xm.RIGHT);
        }
        ;
        this._gM();
    }

    public function _UX(_arg1:_1FO, _arg2:String):void {
        var _local3:_12V;
        if (_arg1) {
            _local3 = (((_arg2 == _0xm.LEFT)) ? this._0j : this._20A);
            _local3._UX(_arg1);
        }
        ;
    }

    public function _gM():void {
        if (this.state._7U()) {
            this._1TB._NQ(true);
            this._20A._NQ(true);
            this._0j._NQ(true);
        } else {
            this._20A._NQ((this.state._1V == null));
            this._0j._NQ((this.state._1uw == null));
            this._1TB._NQ(false);
        }
        ;
    }

    private function _0JH():void {
        this._1S3.dispatch(_0xm.LEFT);
    }

    private function _D5():void {
        this._1S3.dispatch(_0xm.RIGHT);
    }


}
}//package _0Sj

