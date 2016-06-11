// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._14d

package _GI {
import com.company.assembleegameclient.objects.GameObject;

import flash.events.TimerEvent;
import flash.geom.Point;
import flash.utils.Timer;

public class _14d extends _1S9 {

    public function _14d(_arg1:GameObject, _arg2:uint) {
        this.go = _arg1;
        this._dD = (Math.floor((_arg1.x_ * 10)) / 10);
        this._10X = (Math.floor((_arg1.y_ * 10)) / 10);
        this.time = _arg2;
        this._Ok();
        this._17B();
    }
    public var start_:Point;
    public var go:GameObject;
    private var _dD:Number;
    private var _10X:Number;
    private var _1kO:ParticleField;
    private var time:uint;
    private var timer:Timer;
    private var _uu:Boolean;

    override public function update(_arg1:int, _arg2:int):Boolean {
        map_.addObj(this._1kO, this.go.x_, this.go.y_);
        return (false);
    }

    private function _Ok():void {
        var _local1:uint = (((this.go.texture_.height == 8)) ? 50 : 30);
        this.timer = new Timer(_local1, Math.round((this.time / _local1)));
        this.timer.addEventListener(TimerEvent.TIMER, this._5N);
        this.timer.addEventListener(TimerEvent.TIMER_COMPLETE, this._0f);
        this.timer.start();
    }

    private function _17B():void {
        this._1kO = new ParticleField(this.go.texture_.width, this.go.texture_.height);
    }

    private function _5N(_arg1:TimerEvent):void {
        var _local2:Number = (Math.floor((this.go.x_ * 10)) / 10);
        var _local3:Number = (Math.floor((this.go.y_ * 10)) / 10);
        if (((!((this._dD == _local2))) || (!((this._10X == _local3))))) {
            this.timer.stop();
            this._1kO.destroy();
        }
        ;
    }

    private function _0f(_arg1:TimerEvent):void {
        this._1kO.destroy();
        var _local2:Timer = new Timer(33, 12);
        _local2.addEventListener(TimerEvent.TIMER, this._dM);
        _local2.start();
    }

    private function _dM(_arg1:TimerEvent):void {
        this._uu = !(this._uu);
        this.go._0cT(this._uu);
    }


}
}//package _GI

