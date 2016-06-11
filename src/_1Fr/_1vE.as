// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Fr._1vE

package _1Fr {
import _0Ql._ZQ;

import _1Sm._sy;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class _1vE {

    public function _1vE() {
        this.update = new _sy(int);
        this.available = true;
    }
    public var objectId:uint;
    public var _KW:uint;
    public var _0al:int;
    public var position:int;
    public var available:Boolean;
    public var update:_sy;
    private var _1hQ:Array;
    private var _dz:uint;
    private var _0nU:int;
    private var _YQ:Timer;
    private var _Ow:_ZQ;
    private var _1Zx:Timer;
    private var _28:_ZQ;

    public function get _0XF():Array {
        return (this._1hQ);
    }

    public function set _0XF(_arg1:Array):void {
        this._1hQ = _arg1;
        if (((!((_arg1 == null))) && ((_arg1.length > 0)))) {
            this._0nU = 0;
        }
        ;
    }

    public function set _1vB(_arg1:uint):void {
        this._dz = _arg1;
        this._YQ = new Timer(_arg1, 0);
        this._Ow = new _ZQ(this._YQ, TimerEvent.TIMER, TimerEvent);
        this._Ow.add(this._6W);
    }

    public function set _0F(_arg1:uint):void {
        this._KW = _arg1;
        this._1Zx = new Timer(_arg1, 0);
        this._28 = new _ZQ(this._1Zx, TimerEvent.TIMER, TimerEvent);
        this._28.add(this._1zH);
    }

    public function _7F():void {
        if (this.available) {
            this._YQ.reset();
            this._YQ.start();
            this._1Zx.reset();
            this._1Zx.start();
            this.available = false;
            if (this._0nU < (this._0XF.length - 1)) {
                this._0nU++;
            }
            ;
            this.update.dispatch(this.position);
        }
        ;
    }

    public function _1nt(_arg1:int):int {
        var _local2:int;
        if (_arg1 <= 0) {
            _local2 = this._0XF[this._0nU];
        }
        ;
        return (_local2);
    }

    private function _1zH(_arg1:TimerEvent):void {
        if (this._0nU == 0) {
            this._1Zx.stop();
        }
        ;
        this.available = true;
        this.update.dispatch(this.position);
    }

    private function _6W(_arg1:TimerEvent):void {
        this._0nU--;
        if (this._0nU == 0) {
            this._YQ.stop();
        }
        ;
        this.update.dispatch(this.position);
    }


}
}//package _1Fr

