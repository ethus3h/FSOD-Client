// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._0pY

package _1EG {
import _1ik._2X;
import _1ik._UD;
import _1ik._f0;

import _1oE._cm;

import __Nj._M4;

import _r7._17v;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class _0pY extends _17v {

    public function _0pY() {
        this._b6 = new Timer(800, 1);
        super();
    }
    [Inject]
    public var view:BattleSummaryDialog;
    [Inject]
    public var _9K:_cm;
    [Inject]
    public var _0Xz:_f0;
    [Inject]
    public var _TW:_UD;
    [Inject]
    public var _nU:_M4;
    private var _b6:Timer;

    override public function initialize():void {
        this.view.visible = false;
        this.view._0Hr();
        this.view._1aS(this._0Xz._1ej._1qz, this._0Xz._1ej._0fh);
        var _local1:Boolean = (((this._TW._1ej._1qz > this._0Xz._1ej._1qz)) || ((((this._TW._1ej._1qz == this._0Xz._1ej._1qz)) && ((this._TW._1ej._0fh < this._0Xz._1ej._0fh)))));
        var _local2:_2X = ((_local1) ? this._TW._1ej : this._0Xz._1ej);
        this.view._1Wy(_local2._1qz, _local2._0fh);
        this.view.close.add(this._0mM);
        this._9K.addOnce(this._1ou);
    }

    override public function destroy():void {
        this.view.close.remove(this._0mM);
    }

    private function _0mM():void {
        this._nU.dispatch(new ArenaLeaderboard());
    }

    private function _1ou():void {
        this._b6.addEventListener(TimerEvent.TIMER, this._06e);
        this._b6.start();
    }

    private function _06e(_arg1:TimerEvent):void {
        this._b6.removeEventListener(TimerEvent.TIMER, this._06e);
        this.view.visible = true;
    }


}
}//package _1EG

