// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj.PetAbilityMeter

package _0Sj {
import _07g._2v;

import _08Y._0Hy;
import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0y9._06T;

import _1L3._1Xt;

import _1Sm._sy;

import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import _6u._TG;

import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;

public class PetAbilityMeter extends Sprite implements _1q5 {

    public const _0Nz:_sy = new _sy(PetAbilityMeter, Boolean);
    private const _PN:_06T = _sC._1Ir(0xB3B3B3, 14, true, true);
    private const _1Rh:_06T = _sC._1Ir(0xB3B3B3, 14, true, true);
    private const _5j:_095 = new _095(_QU._0Yl, _QU._0E1);

    public function PetAbilityMeter() {
        this._29 = new _sy();
        this._1Av = new _1Ud();
        super();
        this._5j._0Nz.add(this._0Az);
        this._CL();
        this._1dN();
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._1Av._0qm(this);
    }
    public var _29:_sy;
    public var max:int;
    public var index:int;
    private var _16:Boolean = true;
    private var _1SA:int = 0;
    private var _117:int = 0;
    private var _A3:Number = 0;
    private var _1Av:_1Ud;

    public function _O(_arg1:_1Xt):void {
        var _local2:int;
        var _local3:int;
        this._1SA = _arg1.points;
        this._117 = _arg1.level;
        this._02N(_arg1.name);
        this.setUnlocked(_arg1._7q());
        this._1uf(((this._16) ? _arg1.level : 0));
        this._0Az(false);
        this._1Av.tooltip = new _mr(_arg1);
        if (this._16) {
            _local2 = Math.max(0, _0Hy._Vo(_arg1.points, _arg1.level));
            _local3 = _0Hy._0c(_arg1.level);
            _local2 = (((_arg1.level >= this.max)) ? _local3 : _local2);
            this._Le(_local2, _local3);
        }
        ;
        _arg1._1an.add(this._Os);
    }

    public function _02N(_arg1:String):void {
        this._1Rh.setStringBuilder(new _5R().setParams(_arg1));
    }

    public function _1uf(_arg1:int, _arg2:Boolean = false):void {
        var _local3:String = (((_arg1 >= this.max)) ? _TG._09l : _TG._1J6);
        this._PN.setColor(((_arg2) ? 1572859 : (((_arg1 >= this.max)) ? _QU._1Dg : 0xB3B3B3)));
        this._PN.setStringBuilder(new _5R().setParams(_local3, {level: _arg1.toString()}));
        this._PN.textChanged.addOnce(this._V5);
    }

    public function _Le(_arg1:int, _arg2:int):void {
        this._5j._0BK(_arg2);
        this._5j._1WE(_arg1);
    }

    public function setUnlocked(_arg1:Boolean):void {
        var _local2:int;
        var _local3:Array;
        if (this._16 != _arg1) {
            this._16 = _arg1;
            _local2 = ((_arg1) ? 0xB3B3B3 : 0x565656);
            _local3 = ((_arg1) ? [new DropShadowFilter(0, 0, 0)] : []);
            this._1Rh.setColor(_local2);
            this._1Rh.filters = _local3;
            this._PN.visible = _arg1;
        }
        ;
    }

    public function _1Tg(_arg1:_1PV):void {
        this._1Av._1Tg(_arg1);
    }

    public function _1ml():_1PV {
        return (this._1Av._1ml());
    }

    public function _Md(_arg1:_GV):void {
        this._1Av._Md(_arg1);
    }

    public function _0ec():_GV {
        return (this._1Av._0ec());
    }

    private function _Os(_arg1:_1Xt):void {
        var _local2:Number;
        this.setUnlocked(_arg1._7q());
        if ((((_arg1.points > this._1SA)) && (this._16))) {
            this._1SA = _arg1.points;
            this._A3 = _0Hy._Vo(_arg1.points, this._117);
            _local2 = _0Hy._0c(this._117);
            if (((!((_local2 == 0))) && ((this._A3 > _local2)))) {
                this._A3 = (this._A3 - _local2);
                this._5j._0tp.add(this._oN);
                this._5j.fill();
                this._0Az(true);
            } else {
                this._Le(this._A3, _local2);
            }
            ;
        }
        ;
    }

    private function _oN():void {
        var _local2:Number;
        var _local1:Boolean;
        if (!_local1) {
            this._117++;
            this._1uf(this._117, true);
            _local2 = _0Hy._0c(this._117);
            if (this._A3 > _local2) {
                this._5j.reset();
                this._A3 = (this._A3 - _local2);
                this._5j.fill();
            } else {
                this._5j._0tp.remove(this._oN);
                if (this._117 >= this.max) {
                    this._5j._0ia(null);
                    this._A3 = 0;
                } else {
                    this._5j.reset();
                    this._Le(this._A3, _local2);
                }
                ;
            }
            ;
        }
        ;
    }

    private function _1dN():void {
        addChild(this._1Rh);
        addChild(this._PN);
        addChild(this._5j);
    }

    private function _CL():void {
        var _local1:_2v = new _2v();
        _local1.push(this._PN.textChanged);
        _local1.push(this._1Rh.textChanged);
        _local1.complete.addOnce(this._0KA);
    }

    private function _V5():void {
        this._5j.y = 21;
        this._PN.x = (_QU._0Yl - this._PN.width);
    }

    private function _0KA():void {
        this._V5();
        this._29.dispatch();
    }

    private function _0Az(_arg1:Boolean):void {
        this._PN.setColor(((_arg1) ? 1572859 : (((this._117 >= this.max)) ? _QU._1Dg : 0xB3B3B3)));
        this._1Rh.setColor(((_arg1) ? 1572859 : (((this._117 >= 100)) ? _QU._1Dg : 0xB3B3B3)));
        if (((!(_arg1)) && ((this._117 >= 100)))) {
            this._5j._0e5(_QU._1Dg);
        }
        ;
        this._0Nz.dispatch(this, _arg1);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this._5j._0Nz.remove(this._0Az);
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }


}
}//package _0Sj

