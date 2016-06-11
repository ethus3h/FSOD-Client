// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._15v

package _0PF {
import _07g._2v;

import _08Y._42;
import _08Y._QU;
import _08Y._sC;

import _0Mr._5R;

import _0Sj.PetAbilityMeter;
import _0Sj.PetFeeder;
import _0Sj._05E;
import _0Sj._0Rz;
import _0Sj._1l_;

import _0y9._06T;

import _1L3._1FO;
import _1L3._1Xt;
import _1L3._tM;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.ui._yz;

import flash.events.Event;

public class _15v extends _0YT {

    private const background:_1l_ = _sC._1AZ(_QU._IY, _QU._1Ce);
    private const _1MG:_06T = _sC._1Ir(0xB3B3B3, 18, true);
    private const _A:_0Rz = _sC._1h6(_TG._9V, (_QU._1Ce - 35));
    private const _m5:PetFeeder = _sC._1CE();
    private const _Mt:_05E = _sC._1JY(_QU._IY);
    private const _1n3:Vector.<PetAbilityMeter> = _sC._0ud();
    private const _1AH:Vector.<Boolean> = Vector.<Boolean>([false, false, false]);
    private const _0vo:_yz = new _yz((_QU._IY - 25), 0);
    public const _1S3:_sy = new _sy();
    public const closed:_sy = new _sy();

    public var _1VT:_sy;
    public var _1tX:_sy;


    public function init():void {
        this._1MG.setStringBuilder(new _5R().setParams(_TG._0nc));
        this._m5._1S3.addOnce(this._0xI);
        this._1VT = this._A._0ms;
        this._1tX = this._A._1hq;
        this._Mt.clicked.add(this._0zc);
        this._m5._u.add(this._1aN);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._CL();
        this._1dN();
        this._1Ku();
    }

    public function _1xR():void {
        this._m5._0JC();
        this._m5._gM();
    }

    public function destroy():void {
        var _local1:PetAbilityMeter;
        for each (_local1 in this._1n3) {
            _local1._0Nz.remove(this._0jL);
        }
        ;
        this._A._29.remove(this._0GK);
    }

    public function _1ZV(_arg1:Array, _arg2:int):void {
        var _local4:_1Xt;
        var _local5:PetAbilityMeter;
        var _local6:PetAbilityMeter;
        var _local3:int;
        if (_arg1 == null) {
            for each (_local5 in this._1n3) {
                _local5.visible = false;
            }
            ;
        }
        ;
        for each (_local4 in _arg1) {
            if (_local3 < this._1n3.length) {
                _local6 = this._1n3[_local3];
                _local6.index = _local3;
                _local6.max = _arg2;
                _local6.visible = true;
                _local6._O(_local4);
                _local6._0Nz.add(this._0jL);
                _local3++;
            }
            ;
        }
        ;
    }

    private function _1aN(_arg1:Boolean, _arg2:_1FO):void {
        var _local3:_tM;
        this._A._0KW(!(_arg1));
        if (_arg2) {
            if (!_arg2._0AB()) {
                this._A.setPrefix(_TG._9V);
                _local3 = _tM._0yp(_arg2._07I());
                this._A._1pN(_42._4Y(_local3));
                this._A._1hi(_42._1Pz(_local3));
            } else {
                this._A._Y7();
                this._A.setPrefix(_TG._0aZ);
            }
            ;
        } else {
            this._A.setPrefix(_TG._0Qn);
        }
        ;
    }

    private function _0zc():void {
        this.closed.dispatch();
    }

    private function _0xI():void {
        this._1S3.dispatch();
    }

    private function _0jL(_arg1:PetAbilityMeter, _arg2:Boolean):void {
        this._1AH[_arg1.index] = _arg2;
        var _local3:Boolean = this._N0();
        this._A._0KW(_local3);
        this._m5._0Ca(_local3);
        ((!(_local3)) && (this._m5._0JC()));
    }

    private function _N0():Boolean {
        var _local2:Boolean;
        var _local1:Boolean;
        for each (_local2 in this._1AH) {
            if (_local2) {
                _local1 = true;
                break;
            }
            ;
        }
        ;
        return (_local1);
    }

    private function _1dN():void {
        var _local1:PetAbilityMeter;
        addChild(this.background);
        addChild(this._1MG);
        addChild(this._A);
        addChild(this._m5);
        addChild(this._Mt);
        addChild(this._0vo);
        for each (_local1 in this._1n3) {
            _local1.visible = false;
            addChild(_local1);
        }
        ;
    }

    private function _1Ku():void {
        _0Hr();
        this._1JG();
        this._1ps();
    }

    private function _1ps():void {
        this._m5.x = Math.round(((_QU._IY - this._m5.width) * 0.5));
    }

    private function _CL():void {
        var _local2:PetAbilityMeter;
        this._1MG.textChanged.addOnce(this._0KA);
        var _local1:_2v = new _2v();
        for each (_local2 in this._1n3) {
            _local1.push(_local2._29);
        }
        ;
        _local1.complete.addOnce(this._0Wn);
        this._A._29.add(this._0GK);
    }

    private function _0KA():void {
        this._1MG.y = 5;
        this._1MG.x = ((_QU._IY - this._1MG.width) * 0.5);
    }

    private function _0Wn():void {
        var _local2:PetAbilityMeter;
        var _local1:int = (this._0vo.y + 14);
        for each (_local2 in this._1n3) {
            _local2.x = ((_QU._IY - 227) * 0.5);
            _local2.y = _local1;
            _local1 = (_local1 + (_local2.height + 10));
        }
        ;
    }

    private function _1JG():void {
        this._0vo.x = (((_QU._IY - this._0vo.width) + 8) * 0.5);
        this._0vo.y = 152;
    }

    private function _0GK():void {
        this._A.x = ((_QU._IY - this._A.width) / 2);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this._m5._u.remove(this._1aN);
        this._Mt.clicked.remove(this._0zc);
    }


}
}//package _0PF

