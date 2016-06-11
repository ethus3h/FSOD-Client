// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._1jL

package _1EG {
import _0cy._0Ij;

import _1d9._21G;

import _1ik._f0;

import _1oE._0bY;
import _1oE._cm;

import _r7._17v;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class _1jL extends _17v {

    public function _1jL() {
        this._b6 = new Timer(800, 1);
        super();
    }
    [Inject]
    public var view:_9y;
    [Inject]
    public var _p7:_0Ij;
    [Inject]
    public var _0Hk:_f0;
    [Inject]
    public var _9K:_cm;
    [Inject]
    public var _1jN:_0bY;
    [Inject]
    public var _1Df:_21G;
    private var _b6:Timer;

    override public function initialize():void {
        this._b6.addEventListener(TimerEvent.TIMER, this._JU);
        this._1jN.add(this._1F3);
        this._1Df.add(this._1F3);
        this.view._sF(this._0Hk._1ej._1qz);
        this.view.close.addOnce(this._0mM);
        this.view.init();
        if (this._0Hk._1ej._1qz == 1) {
            this._b6.start();
        } else {
            this.view.show();
        }
        ;
    }

    override public function destroy():void {
        this._b6.removeEventListener(TimerEvent.TIMER, this._JU);
        this._1jN.remove(this._1F3);
        this._1Df.remove(this._1F3);
    }

    private function _1F3():void {
        this.view.destroy();
        this._0mM();
    }

    private function _0RN():void {
        this._b6.start();
    }

    private function _0mM():void {
        if (this._p7._KU.contains(this.view)) {
            this._p7._KU.removeChild(this.view);
        }
        ;
    }

    private function _JU(_arg1:TimerEvent):void {
        this.view.show();
    }


}
}//package _1EG

