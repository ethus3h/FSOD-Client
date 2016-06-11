// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._06k

package _05j {
import _md._0AH;

import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class _06k extends Sprite {

    private const timer:Timer = new Timer(1000);
    private const _Gj:Vector.<_08Z> = new Vector.<_08Z>();

    public function _06k(_arg1:int = 7, _arg2:uint = 150) {
        mouseEnabled = true;
        mouseChildren = true;
        this._wc = new Vector.<_08Z>();
        this._1rL = new Vector.<_08Z>();
        this._0GJ = _arg1;
        this._0fU = _arg2;
        this.index = 0;
        this._1 = true;
        this.timer.addEventListener(TimerEvent.TIMER, this._jY);
        this.timer.start();
    }
    private var _wc:Vector.<_08Z>;
    private var _1rL:Vector.<_08Z>;
    private var _0GJ:int;
    private var index:int;
    private var _1:Boolean;
    private var _0u:Boolean = false;
    private var _0fU:int;

    public function setup(_arg1:_0AH):void {
        this._0GJ = _arg1._0GJ;
    }

    public function _yZ(_arg1:_08Z):void {
        var _local2:_08Z;
        if (this._wc.length > this._0fU) {
            _local2 = this._wc.shift();
            this._0lq(_local2);
            this.index--;
            if (((!(this._1)) && ((this.index < this._0GJ)))) {
                this._20X();
            }
            ;
        }
        ;
        this._wc.push(_arg1);
        if (this._1) {
            this._W5(_arg1);
        }
        ;
    }

    public function _14u():void {
        if (((this._0u) && (this._Vp()))) {
            this._143();
        } else {
            this._ZN();
        }
        ;
        this._0u = true;
    }

    public function _ZN():void {
        var _local4:_08Z;
        var _local1:int = ((this.index - this._1rL.length) - 1);
        var _local2:int = Math.max(0, ((this.index - this._0GJ) - 1));
        var _local3:int = _local1;
        while (_local3 > _local2) {
            _local4 = this._wc[_local3];
            if (this._1rL.indexOf(_local4) == -1) {
                this._0SD(_local4);
            }
            ;
            _local3--;
        }
        ;
        this._92();
    }

    public function _0Vw():void {
        if (this._0u) {
            this._0u = false;
            this._01();
            this._jY(null);
        }
        ;
        if (!this._1) {
            this._20k();
        } else {
            if (this._0u) {
                this._0u = false;
            }
            ;
        }
        ;
    }

    public function _01():void {
        while (!(this._1)) {
            this._20k();
        }
        ;
    }

    public function _mY():void {
        var _local1:int;
        if (!this._0u) {
            this._ZN();
            this._0u = true;
        } else {
            _local1 = 0;
            while (_local1 < this._0GJ) {
                if (this._Vp()) {
                    this._143();
                } else {
                    return;
                }
                ;
                _local1++;
            }
            ;
        }
        ;
    }

    public function _20X():void {
        var _local1:int;
        while (_local1 < this._0GJ) {
            if (!this._1) {
                this._20k();
            } else {
                this._0u = false;
                return;
            }
            ;
            _local1++;
        }
        ;
    }

    private function _0lq(_arg1:_08Z):void {
        var _local2:int = this._1rL.indexOf(_arg1);
        if (_local2 != -1) {
            removeChild(_arg1);
            this._1rL.splice(_local2, 1);
            this._1 = (this.index == this._wc.length);
        }
        ;
    }

    private function _W5(_arg1:_08Z):void {
        this.index++;
        this._1qD(_arg1);
        this._0Sf();
        this._92();
    }

    private function _1qD(_arg1:_08Z):void {
        this._1rL.push(_arg1);
        addChild(_arg1);
    }

    private function _0Sf():void {
        if (this._1rL.length > this._0GJ) {
            removeChild(this._1rL.shift());
        }
        ;
    }

    private function _Vp():Boolean {
        return ((this.index > this._0GJ));
    }

    private function _143():void {
        var _local1:_08Z = this._wc[(--this.index - this._0GJ)];
        this._0SD(_local1);
        this._0aY();
        this._92();
        this._1 = false;
    }

    private function _20k():void {
        if (this.index < 0) {
            this.index = 0;
        }
        ;
        var _local1:_08Z = this._wc[this.index];
        this.index++;
        this._1qD(_local1);
        this._0Sf();
        this._1 = (this.index == this._wc.length);
        this._92();
    }

    private function _0SD(_arg1:_08Z):void {
        this._1rL.unshift(_arg1);
        addChild(_arg1);
    }

    private function _0aY():void {
        if (this._1rL.length > this._0GJ) {
            removeChild(this._1rL.pop());
        }
        ;
    }

    private function _92():void {
        var _local3:_08Z;
        var _local1:int;
        var _local2:int = this._1rL.length;
        while (_local2--) {
            _local3 = this._1rL[_local2];
            _local3.y = _local1;
            _local1 = (_local1 - _local3.height);
        }
        ;
    }

    private function _jY(_arg1:TimerEvent):void {
        var _local2:_08Z;
        var _local3:_08Z;
        for each (_local2 in this._1rL) {
            if (((_local2._Ga()) && (!(this._0u)))) {
                this._Gj.push(_local2);
            } else {
                break;
            }
            ;
        }
        ;
        while (this._Gj.length > 0) {
            this._0lq(this._Gj.pop());
            if (!this._1) {
                _local3 = this._wc[this.index++];
                if (!_local3._Ga()) {
                    this._1qD(_local3);
                    this._1 = (this.index == this._wc.length);
                    this._92();
                }
                ;
            }
            ;
        }
        ;
    }


}
}//package _05j

