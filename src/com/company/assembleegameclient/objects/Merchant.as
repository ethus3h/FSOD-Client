// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Merchant

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _0Mr._5R;

import _175._dS;

import _1E._0dI;

import _1Ea._1V1;

import _1d9._0fc;

import _DO.GTween;

import _Z0.EquipmentToolTip;
import _Z0.ToolTip;

import _tI._a8;

import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map._18q;
import com.company.ui._V2;
import com.company.util.IntPoint;

import flash.display.BitmapData;
import flash.geom.ColorTransform;
import flash.geom.Matrix;

public class Merchant extends SellableObject implements _Rk {

    private static const _1Sc:int = 0;
    private static const _Ub:int = 1;
    private static const _11K:int = 2;
    private static const _0AW:int = 3;
    private static const _0bm:int = 4;
    private static const T:Number = 1;
    private static const _0VR:Matrix = function ():Matrix {
        var _local1:* = new Matrix();
        _local1.translate(10, 5);
        return (_local1);
    }();

    public function Merchant(_arg1:XML) {
        this._Cr = new ColorTransform(1, 1, 1, 1);
        this.addSpeechBalloon = _8w._1Sz().getInstance(_0fc);
        this._0us = _8w._1Sz().getInstance(_dS);
        super(_arg1);
        _11k = true;
    }
    public var _oQ:int = -1;
    public var _zM:int = -1;
    public var _1kI:int = -1;
    public var _0br:int = 0;
    public var merchandiseTexture_:BitmapData = null;
    public var _r4:int = 0;
    public var alpha_:Number = 1;
    private var addSpeechBalloon:_0fc;
    private var _0us:_dS;
    private var _q1:Boolean = true;
    private var _1So:int = 0;
    private var _Cr:ColorTransform;

    override public function setPrice(_arg1:int):void {
        super.setPrice(_arg1);
        this._r4 = 0;
    }

    override public function setRankReq(_arg1:int):void {
        super.setRankReq(_arg1);
        this._r4 = 0;
    }

    override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean {
        if (!super.addTo(_arg1, _arg2, _arg3)) {
            return (false);
        }
        ;
        _arg1.merchLookup_[new IntPoint(x_, y_)] = this;
        return (true);
    }

    override public function removeFromMap():void {
        var _local1:IntPoint = new IntPoint(x_, y_);
        if (map_.merchLookup_[_local1] == this) {
            map_.merchLookup_[_local1] = null;
        }
        ;
        super.removeFromMap();
    }

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local5:GTween;
        super.update(_arg1, _arg2);
        if (this._q1) {
            if (this._1kI == 2147483647) {
                _local5 = new GTween(this, (0.5 * T), {size_: 150}, {ease: _a8._0RY});
                _local5._1QN = new GTween(this, (0.5 * T), {size_: 100}, {ease: _a8._19O});
                _local5._1QN.paused = true;
            }
            ;
            this._q1 = false;
        }
        ;
        this._r4 = (this._r4 - _arg2);
        if (this._r4 > 0) {
            return (true);
        }
        ;
        this._r4 = 5000;
        var _local3:Vector.<int> = new Vector.<int>();
        if (this._1kI == 2147483647) {
            _local3.push(_Ub);
        } else {
            if ((((this._1kI >= 0)) && ((this._1kI <= 5)))) {
                _local3.push(_11K);
            }
            ;
        }
        ;
        if ((((this._zM >= 1)) && ((this._zM <= 2)))) {
            _local3.push(_0AW);
        }
        ;
        if (this._0br > 0) {
            _local3.push(_0bm);
        }
        ;
        if (_local3.length == 0) {
            return (true);
        }
        ;
        this._1So = (++this._1So % _local3.length);
        var _local4:int = _local3[this._1So];
        this.addSpeechBalloon.dispatch(this._1lK(_local4));
        return (true);
    }

    override public function soldObjectName():String {
        return (ObjectLibrary._1w3[this._oQ]);
    }

    override public function soldObjectInternalName():String {
        var _local1:XML = ObjectLibrary._18H[this._oQ];
        return (_local1.@id.toString());
    }

    override public function getTooltip():ToolTip {
        var _local1:ToolTip = new EquipmentToolTip(this._oQ, map_.player_, -1, _1V1.NPC);
        return (_local1);
    }

    override public function getIcon():BitmapData {
        var _local3:_V2;
        var _local1:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this._oQ, 80, true);
        var _local2:XML = ObjectLibrary._18H[this._oQ];
        if (_local2.hasOwnProperty("Doses")) {
            _local1 = _local1.clone();
            _local3 = new _V2(12, 0xFFFFFF, false, 0, 0);
            _local3.text = String(_local2.Doses);
            _local3._1B5();
            _local1.draw(_local3, _0VR);
        }
        ;
        return (_local1);
    }

    override protected function getTexture(_arg1:_18q, _arg2:int):BitmapData {
        if ((((this.alpha_ == 1)) && ((size_ == 100)))) {
            return (this.merchandiseTexture_);
        }
        ;
        var _local3:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this._oQ, size_, false, false);
        if (this.alpha_ != 1) {
            this._Cr.alphaMultiplier = this.alpha_;
            _local3.colorTransform(_local3.rect, this._Cr);
        }
        ;
        return (_local3);
    }

    public function _1lK(_arg1:int):_0dI {
        var _local2:_5R;
        var _local3:uint;
        var _local4:uint;
        var _local5:uint;
        switch (_arg1) {
            case _Ub:
                _local2 = new _5R().setParams("Merchant.new");
                _local3 = 0xE6E6E6;
                _local4 = 0xFFFFFF;
                _local5 = 5931045;
                break;
            case _11K:
                if (this._1kI == 0) {
                    _local2 = new _5R().setParams("Merchant.goingSoon");
                } else {
                    if (this._1kI == 1) {
                        _local2 = new _5R().setParams("Merchant.goingInOneMinute");
                    } else {
                        _local2 = new _5R().setParams("Merchant.goingInNMinutes", {minutes: this._1kI});
                    }
                    ;
                }
                ;
                _local3 = 5973542;
                _local4 = 16549442;
                _local5 = 16549442;
                break;
            case _0AW:
                _local2 = new _5R().setParams("Merchant.limitedStock", {count: this._zM});
                _local3 = 5973542;
                _local4 = 16549442;
                _local5 = 16549442;
                break;
            case _0bm:
                _local2 = new _5R().setParams("Merchant.discount", {discount: this._0br});
                _local3 = 6324275;
                _local4 = 16777103;
                _local5 = 16777103;
                break;
            default:
                return (null);
        }
        ;
        _local2._qO(this._0us);
        return (new _0dI(this, _local2.getString(), _local3, 1, _local4, 1, _local5, 6, true, false));
    }

    public function getTex1Id(_arg1:int):int {
        var _local2:XML = ObjectLibrary._18H[this._oQ];
        if (_local2 == null) {
            return (_arg1);
        }
        ;
        if ((((_local2.Activate == "Dye")) && (_local2.hasOwnProperty("Tex1")))) {
            return (int(_local2.Tex1));
        }
        ;
        return (_arg1);
    }

    public function getTex2Id(_arg1:int):int {
        var _local2:XML = ObjectLibrary._18H[this._oQ];
        if (_local2 == null) {
            return (_arg1);
        }
        ;
        if ((((_local2.Activate == "Dye")) && (_local2.hasOwnProperty("Tex2")))) {
            return (int(_local2.Tex2));
        }
        ;
        return (_arg1);
    }

    public function setMerchandiseType(_arg1:int):void {
        this._oQ = _arg1;
        this.merchandiseTexture_ = ObjectLibrary.getRedrawnTextureFromType(this._oQ, 100, false);
    }


}
}//package com.company.assembleegameclient.objects

