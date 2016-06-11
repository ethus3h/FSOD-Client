// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_jP.PetPanel

package _jP {
import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0Ql._ZQ;

import _0Sj._Q7;

import _0y9._06T;

import _1L3._1FO;

import _1Sm._sy;

import _1f4.Panel;

import _6u._TG;

import _DQ._0jU;

import _Z0.ToolTip;

import com.company.assembleegameclient.game._0p2;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.MouseEvent;

public class PetPanel extends Panel {

    private static const _Pi:int = 16;
    private static const _1Yw:int = 6;
    private static const _1sk:int = 5;

    public const _HF:_sy = new _sy(ToolTip);
    private const _1wq:_06T = _sC._1h(0xFFFFFF, 16, true);
    private const _0W2:_06T = _sC._1h(0xB6B6B6, 12, false);

    private static function _gL(_arg1:_0jU):void {
        _arg1.y = ((HEIGHT - _arg1.height) - 4);
    }

    public function PetPanel(_arg1:_0p2, _arg2:_1FO) {
        this._w = new Sprite();
        super(_arg1);
        this.petVO = _arg2;
        this._0iI = new _ZQ(this._w, MouseEvent.MOUSE_OVER);
        this._0iI.add(this._Uf);
        this._0Yg = _arg2._1PW();
        this._1dN();
        this._UC();
        this._JA();
        this._DD();
    }
    public var _0iI:_ZQ;
    public var _w:Sprite;
    public var _1xY:_0jU;
    public var _Nx:_0jU;
    public var _0K5:_0jU;
    public var petVO:_1FO;
    private var _0Yg:Bitmap;

    public function setState(_arg1:uint):void {
        this._Tx((_arg1 == _QU._Aw));
    }

    public function _Tx(_arg1:Boolean):void {
        this._1xY.visible = _arg1;
        this._Nx.visible = _arg1;
        this._0K5.visible = !(_arg1);
    }

    private function _DD():void {
        this._1xY = this._0Cf(_TG._1Ef);
        this._Nx = this._0Cf(_TG._fQ);
        this._0K5 = this._0Cf(_TG._0K7);
        this._jj();
    }

    private function _0Cf(_arg1:String):_0jU {
        var _local2:_0jU = new _0jU(_Pi, _arg1);
        addChild(_local2);
        return (_local2);
    }

    private function _1dN():void {
        this._w.addChild(this._0Yg);
        addChild(this._w);
        addChild(this._1wq);
        addChild(this._0W2);
    }

    private function _JA():void {
        this._1wq.setStringBuilder(new _5R().setParams(this.petVO.getName()));
        this._0W2.setStringBuilder(new _5R().setParams(this.petVO._07I()));
    }

    private function _UC():void {
        this._0Yg.x = 4;
        this._0Yg.y = -3;
        this._1wq.x = 58;
        this._1wq.y = 23;
        this._0W2.x = 58;
        this._0W2.y = 35;
    }

    private function _jj():void {
        this._0O8();
        this._0Kc();
        this._jx();
    }

    private function _0O8():void {
        this._1xY.x = _1Yw;
        _gL(this._1xY);
    }

    private function _0Kc():void {
        this._Nx.x = (((WIDTH - this._Nx.width) - _1Yw) - _1sk);
        _gL(this._Nx);
    }

    private function _jx():void {
        this._0K5.x = ((WIDTH - this._0K5.width) / 2);
        _gL(this._0K5);
    }

    private function _Uf(_arg1:MouseEvent):void {
        var _local2:_Q7 = new _Q7(this.petVO);
        _local2._0jH(this);
        this._HF.dispatch(_local2);
    }


}
}//package _jP

