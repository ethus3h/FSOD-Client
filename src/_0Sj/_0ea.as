// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0ea

package _0Sj {
import _08Y._sC;

import _0Mr._5R;

import _0y9._06T;

import _1Fr._1IN;

import _1L3._0tx;
import _1L3._1FO;
import _1L3._tM;

import flash.display.Bitmap;
import flash.display.Sprite;

public class _0ea extends Sprite {

    public function _0ea() {
        this._1Qv = new Sprite();
        this._fN = _sC._1h(0xB3B3B3, 13, false);
        this._j2 = _sC._1h(0xB3B3B3, 15, true);
        this._155 = _sC._1h(0xB3B3B3, 13, false);
        super();
    }
    public var _0Yg:Bitmap;
    public var _fN:_06T;
    private var _1Qv:Sprite;
    private var _j2:_06T;
    private var _155:_06T;
    private var petVO:_1FO;

    public function init(_arg1:_1FO):void {
        this.petVO = _arg1;
        this._0Yg = _arg1._1PW();
        this._1dN();
        this._0SB();
        this._UC();
        this._JA();
        this._1Qv.name = _1IN._0cq;
        _arg1._1an.add(this._0IJ);
    }

    private function _0IJ():void {
        this._18e();
        this._fN.setStringBuilder(new _5R().setParams(this.petVO._07I()));
    }

    private function _18e():void {
        this._1Qv.removeChild(this._0Yg);
        this._0Yg = this.petVO._1PW();
        this._1Qv.addChild(this._0Yg);
    }

    private function _0SB():void {
        var _local1:uint;
        var _local3:_1Ft;
        var _local2:uint = 3;
        _local1 = 0;
        while (_local1 < _local2) {
            _local3 = new _1Ft(this.petVO._1mo[_local1], 171);
            _local3.x = 3;
            _local3.y = (72 + (17 * _local1));
            this._1Qv.addChild(_local3);
            _local1++;
        }
        ;
    }

    private function _P2():uint {
        var _local1:Boolean = (((this.petVO._07I() == _tM._1dK.value)) || ((this.petVO._07I() == _tM._0r.value)));
        if (_local1) {
            return (2);
        }
        ;
        return (3);
    }

    private function _JA():void {
        this._j2.setStringBuilder(new _5R().setParams(this.petVO.getName()));
        this._fN.setStringBuilder(new _5R().setParams(this.petVO._07I()));
        this._155.setStringBuilder(new _5R().setParams(_0tx._0Nk(this.petVO._N6())));
    }

    private function _1dN():void {
        this._1Qv.addChild(this._0Yg);
        this._1Qv.addChild(this._j2);
        this._1Qv.addChild(this._fN);
        this._1Qv.addChild(this._155);
        addChild(this._1Qv);
    }

    private function _UC():void {
        this._0Yg.x = (this._0Yg.x - 8);
        this._0Yg.y = (this._0Yg.y - 1);
        this._1Qv.x = 7;
        this._1Qv.y = 6;
        this._j2.x = 45;
        this._j2.y = 20;
        this._fN.x = 45;
        this._fN.y = 33;
        this._155.x = 45;
        this._155.y = 47;
    }


}
}//package _0Sj

