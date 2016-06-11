// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-._0cX

package _4 {
import _10a._FU;

import _1q1._JI;

import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import _r7._17v;

import com.company.assembleegameclient.util._0ZU;

import flash.events.TimerEvent;
import flash.utils.Timer;

import kabam.rotmg.assets.model.Animation;
import kabam.rotmg.assets.services._1Ns;

public class _0cX extends _17v {

    private const _0fJ:Object = new Object();
    private const _1dT:Timer = new Timer(250, 1);

    [Inject]
    public var view:ClassDetailView;
    [Inject]
    public var _PI:_1Z;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _6Y:_JI;
    [Inject]
    public var factory:_1Ns;
    private var character:_E0;
    private var _1Qr:_1GP;


    override public function initialize():void {
        this.character = this._PI._0ZN();
        this._1dT.addEventListener(TimerEvent.TIMER, this._tt);
        this._6Y.add(this._1hT);
        this._0ny();
        this._1hT();
    }

    override public function destroy():void {
        this._6Y.remove(this._1hT);
        this._1dT.removeEventListener(TimerEvent.TIMER, this._tt);
        this.view._0qw(null);
        this._1kH();
    }

    private function _0ny():void {
        var _local1:int = this._qP._0V4._04z(this.character.id);
        var _local2:int = _0ZU.numStars(_local1);
        this.view._f(this.character.name, this.character.description, _local2, this._qP._0V4.bestLevel(this.character.id), _local1);
        var _local3:int = _0ZU.nextStarFame(_local1, 0);
        this.view._Ts(this.character.name, _local3);
    }

    private function _1hT(_arg1:_1GP = null):void {
        _arg1 = ((_arg1) || (this.character._0fJ._20R()));
        this._1Qr = _arg1;
        this._1dT.start();
    }

    private function _1kH():void {
        var _local1:String;
        var _local2:Animation;
        for (_local1 in this._0fJ) {
            _local2 = this._0fJ[_local1];
            _local2.dispose();
            delete this._0fJ[_local1];
        }
        ;
    }

    private function _tt(_arg1:TimerEvent):void {
        var _local2:Animation = (this._0fJ[this._1Qr.id] = ((this._0fJ[this._1Qr.id]) || (this.factory._0kq(this._1Qr._164, 200))));
        this.view._0qw(_local2);
    }


}
}//package _4-

