// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._0w-

package _1EG {
import _0hU._1J4;
import _0hU._1hN;

import _r7._17v;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class _0w extends _17v {

    public function _0w() {
        this._17p = new Timer(6000);
        super();
    }
    [Inject]
    public var view:_0vn;
    [Inject]
    public var _1CM:_1hN;
    [Inject]
    public var _1yf:_1J4;
    private var _17p:Timer;

    override public function initialize():void {
        this._1CM.add(this._0hv);
        this._1yf.add(this._fD);
        this._17p.addEventListener(TimerEvent.TIMER, this._1Xp);
    }

    override public function destroy():void {
        this._1CM.remove(this._0hv);
        this._1yf.remove(this._fD);
        this.view.stop();
    }

    private function _fD():void {
        this.view.stop();
    }

    private function _0hv(_arg1:int):void {
        this._17p.start();
        this.view.stop();
    }

    private function _1Xp(_arg1:TimerEvent):void {
        this._17p.stop();
        this.view.start();
        this.view.x = (300 - (this.view.width / 2));
    }


}
}//package _1EG

