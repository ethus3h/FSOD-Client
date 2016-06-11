// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_12-._1Ie

package _12 {
import _03u._0MI;

import _0tf._0yo;

import _10a._FU;

import _1E._03e;

import _1PE.Account;

import com.company.util._0CM;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class _1Ie extends _0MI {

    private static const _02i:String = "account/getCredits";

    public function _1Ie() {
        this._0fP = [2, 5, 15];
        this.timer = new Timer(1000);
        super();
    }
    [Inject]
    public var account:Account;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var _Zs:_03e;
    [Inject]
    public var _qP:_FU;
    private var _0fP:Array;
    private var timer:Timer;
    private var _1LM:int = 0;

    override protected function startTask():void {
        this.timer.addEventListener(TimerEvent.TIMER, this._1kU);
        this.timer.start();
    }

    private function _05N():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest(_02i, this._1H9());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        var _local4:String;
        var _local3:Boolean;
        if (_arg1) {
            _local4 = XML(_arg2).toString();
            if (((!((_local4 == ""))) && (!((_local4.search("Error") == -1))))) {
                this._Oi(int(_local4));
            }
            ;
        } else {
            if (this._1LM < this._0fP.length) {
                this.timer.addEventListener(TimerEvent.TIMER, this._1kU);
                this.timer.start();
                _local3 = true;
            }
            ;
        }
        ;
        ((!(_local3)) && (_Ug(_arg1, _arg2)));
    }

    private function _Oi(_arg1:int):void {
        if (_arg1 >= 0) {
            if (((((!((this._Zs == null))) && (!((this._Zs.player == null))))) && (!((_arg1 == this._Zs.player.credits_))))) {
                this._Zs.player.credits_ = _arg1;
            } else {
                if (((!((this._qP == null))) && (!((this._qP._1fB() == _arg1))))) {
                    this._qP._Oi(_arg1);
                }
                ;
            }
            ;
        }
        ;
    }

    private function _1H9():Object {
        var _local1:Object = {};
        _0CM._0lh(_local1, this.account._1iT());
        return (_local1);
    }

    private function _1kU(_arg1:TimerEvent):void {
        var _local2 = this._0fP;
        var _local3 = this._1LM;
        var _local4 = (_local2[_local3] - 1);
        _local2[_local3] = _local4;
        if (this._0fP[this._1LM] <= 0) {
            this.timer.removeEventListener(TimerEvent.TIMER, this._1kU);
            this._05N();
            this._1LM++;
            this.timer.stop();
        }
        ;
    }


}
}//package _12-

