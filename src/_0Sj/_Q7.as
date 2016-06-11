// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._Q7

package _0Sj {
import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0y9._06T;

import _1Fr._1IN;

import _1L3._0tx;
import _1L3._1FO;
import _1L3._1Xt;
import _1L3._tM;

import _Z0.ToolTip;

import com.company.assembleegameclient.ui._yz;

import flash.display.Bitmap;
import flash.display.Sprite;

public class _Q7 extends ToolTip {

    private const _1Qv:Sprite = new Sprite();
    private const _VU:_06T = _sC._1h(0xFFFFFF, 16, true);
    private const _fN:_06T = _sC._1h(0xB3B3B3, 12, false);
    private const _155:_06T = _sC._1h(0xB3B3B3, 12, false);
    private const _1mh:_yz = _sC._0G();

    public function _Q7(_arg1:_1FO) {
        this.petVO = _arg1;
        super(0x363636, 1, 0xFFFFFF, 1, true);
        this._1Qv.name = _1IN._0cq;
    }
    private var _0Yg:Bitmap;
    private var petVO:_1FO;

    public function init():void {
        this._0Yg = this.petVO._1PW();
        this._1dN();
        this._0SB();
        this._UC();
        this._JA();
    }

    private function _JA():void {
        this._VU.setStringBuilder(new _5R().setParams(this.petVO.getName()));
        this._fN.setStringBuilder(new _5R().setParams(this.petVO._07I()));
        this._155.setStringBuilder(new _5R().setParams(_0tx._0Nk(this.petVO._N6())));
    }

    private function _1dN():void {
        this._1Qv.graphics.beginFill(0, 0);
        this._1Qv.graphics.drawRect(0, 0, _QU._0kN, _QU._7n);
        this._1Qv.addChild(this._0Yg);
        this._1Qv.addChild(this._VU);
        this._1Qv.addChild(this._fN);
        this._1Qv.addChild(this._155);
        this._1Qv.addChild(this._1mh);
        addChild(this._1Qv);
    }

    private function _0SB():void {
        var _local1:uint;
        var _local3:_1Xt;
        var _local4:_1Ft;
        var _local2:uint = 3;
        _local1 = 0;
        while (_local1 < _local2) {
            _local3 = this.petVO._1mo[_local1];
            _local4 = new _1Ft(_local3, 174);
            _local4.x = 8;
            _local4.y = (86 + (17 * _local1));
            this._1Qv.addChild(_local4);
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

    private function _UC():void {
        this._VU.x = 55;
        this._VU.y = 21;
        this._fN.x = 55;
        this._fN.y = 35;
        this._155.x = 55;
        this._155.y = 48;
    }


}
}//package _0Sj

