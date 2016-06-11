// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj.PetFeeder

package _0Sj {
import _08Y._sC;

import _1L3._0xm;
import _1L3._1FO;

import _1Sm._sy;

import _MU._0t5;
import _MU._12V;

import flash.display.Sprite;

public class PetFeeder extends Sprite {

    public const _1S3:_sy = new _sy();
    public const _u:_sy = new _sy(Boolean, _1FO);
    public const _6g:_sy = new _sy(_1FO);

    public function PetFeeder() {
        this._0j = new _12V();
        this._1TB = _sC._1qw();
        this._20A = _sC._09O();
        super();
        addChild(this._0j);
        addChild(this._1TB);
        addChild(this._20A);
        this._0j._1S3.addOnce(this._0xI);
        this._20A._1Ul.add(this._1zW);
        this._20A._0za.add(this._HB);
    }
    private var _0j:_12V;
    private var _1TB:_0SX;
    private var _20A:_0t5;
    private var state:_0xm;

    public function initialize(_arg1:_0xm):void {
        this.state = _arg1;
        this._UX(this.state._1uw);
        this.update();
    }

    public function _UX(_arg1:_1FO):void {
        this._0j._UX(_arg1);
        if (_arg1) {
            this._6g.dispatch(_arg1);
        }
        ;
    }

    public function _0JC():void {
        this.state._1XH = -1;
        this.state._1N0 = -1;
        this.state._Ux = -1;
        this._20A._3Z();
        this.update();
    }

    public function _gM():void {
        if (this.state._1XW()) {
            this._1TB._NQ(true);
            this._20A._NQ(true);
            this._0j._NQ(true);
        } else {
            this._20A._NQ((this.state._1XH == -1));
            this._0j._NQ((this.state._1uw == null));
            this._1TB._NQ(false);
        }
        ;
    }

    public function _0Ca(_arg1:Boolean):void {
        this._20A._0Ca(_arg1);
        this._0j._0Ca(_arg1);
        if (_arg1) {
            this._1TB._NQ(false);
            this._20A._NQ(false);
            this._0j._NQ(false);
        } else {
            this.update();
        }
        ;
    }

    private function _HB():void {
        this.state._1XH = -1;
        this.state._1N0 = -1;
        this.state._Ux = -1;
        this.update();
    }

    private function _1zW(_arg1:int):void {
        this.state._1XH = _arg1;
        this.update();
    }

    private function update():void {
        this._gM();
        this._u.dispatch(this.state._1XW(), this.state._1uw);
    }

    private function _0xI():void {
        this._1S3.dispatch();
    }


}
}//package _0Sj

