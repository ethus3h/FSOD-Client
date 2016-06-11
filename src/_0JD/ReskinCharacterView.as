// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0JD.ReskinCharacterView

package _0JD {
import _07g._2v;

import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _4._0Qj;

import _6u._TG;

import _n._Qp;

import _v9._ND;

import com.company.assembleegameclient.ui._1jP;

import flash.display.CapsStyle;
import flash.display.DisplayObject;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;

public class ReskinCharacterView extends Sprite {

    private static const _vQ:int = 10;
    private static const _0Zb:int = (_0Qj.WIDTH + (_vQ * 2));//462
    private static const _0zu:int = 120;
    private static const _1nq:int = 16;
    private static const _vh:int = 40;
    private static const _1sU:int = 27;

    private const _B3:_2v = _0Dc();
    private const background:_Qp = _0kH();
    private const title:_06T = _JX();
    private const list:_0Qj = _0hz();
    private const cancel:_1jP = _1El();
    private const select:_1jP = _3G();
    public const _OD:_sy = new _0q(cancel, MouseEvent.CLICK);
    public const selected:_sy = new _0q(select, MouseEvent.CLICK);

    public var _Or:int;

    public function _0fK(_arg1:Vector.<DisplayObject>):void {
        this.list.setItems(_arg1);
        this._E1();
        this._wd();
        this._Rg();
    }

    private function _0Dc():_2v {
        var _local1:_2v = new _2v();
        _local1.complete.add(this._Rg);
        return (_local1);
    }

    private function _0kH():_Qp {
        var _local1:_Qp = new _Qp();
        addChild(_local1);
        return (_local1);
    }

    private function _JX():_06T {
        var _local1:_06T = new _06T().setSize(18).setColor(0xB6B6B6).setTextWidth(_0Zb);
        _local1.setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
        _local1.setStringBuilder(new _5R().setParams(_TG._1m3));
        _local1.y = (_vQ * 0.5);
        addChild(_local1);
        return (_local1);
    }

    private function _0hz():_0Qj {
        var _local1:_0Qj;
        _local1 = new _0Qj();
        _local1.x = _vQ;
        _local1.y = (_vQ + _1sU);
        addChild(_local1);
        return (_local1);
    }

    private function _1El():_1jP {
        var _local1:_1jP = new _1jP(_1nq, _TG._1Uz, _0zu);
        addChild(_local1);
        this._B3.push(_local1.textChanged);
        return (_local1);
    }

    private function _3G():_1jP {
        var _local1:_1jP = new _1jP(_1nq, _TG._02I, _0zu);
        addChild(_local1);
        this._B3.push(_local1.textChanged);
        return (_local1);
    }

    private function _E1():void {
        this._Or = Math.min((_0Qj.HEIGHT + _vQ), this.list._4P());
        this._Or = (this._Or + ((_vh + (_vQ * 2)) + _1sU));
    }

    private function _wd():void {
        this.background.draw(_0Zb, this._Or);
        this.background.graphics.lineStyle(2, 0x5B5B5B, 1, false, LineScaleMode.NONE, CapsStyle.NONE, JointStyle.BEVEL);
        this.background.graphics.moveTo(1, _1sU);
        this.background.graphics.lineTo((_0Zb - 1), _1sU);
    }

    private function _Rg():void {
        var _local1:_ND = new _ND();
        _local1.layout(_0Zb, this.cancel, this.select);
        this.cancel.y = (this.select.y = (this._Or - _vh));
    }


}
}//package _0JD

