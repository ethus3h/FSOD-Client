// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._0Qd

package _GI {
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;
import com.company.util._0q;

import flash.display.BitmapData;
import flash.events.TimerEvent;
import flash.geom.Point;
import flash.utils.Timer;

public class _0Qd extends _1S9 {

    public static var _tP:Vector.<BitmapData>;

    public function _0Qd(_arg1:GameObject) {
        this.go = _arg1;
        if (_arg1.texture_.height == 8) {
            this._1zS = 0.4;
            this._0x4 = 1.3;
            this._1eR = 30;
        } else {
            this._1zS = 0.7;
            this._0x4 = 2;
            this._1eR = 40;
        }
        ;
    }
    public var start_:Point;
    public var end_:Point;
    public var objectId:uint;
    public var go:GameObject;
    private var _1zS:Number;
    private var _0x4:Number;
    private var _1vu:Number;
    private var _1eR:uint;
    private var timer:Timer;
    private var _0mm:Boolean = false;

    override public function update(_arg1:int, _arg2:int):Boolean {
        if (this._0mm) {
            return (false);
        }
        ;
        if (!this.timer) {
            this.initialize();
        }
        ;
        x_ = this.go.x_;
        y_ = this.go.y_;
        return (true);
    }

    override public function removeFromMap():void {
        this.destroy();
        super.removeFromMap();
    }

    public function destroy():void {
        if (this.timer) {
            this.timer.removeEventListener(TimerEvent.TIMER, this._5N);
            this.timer.removeEventListener(TimerEvent.TIMER, this._1VG);
            this.timer.stop();
            this.timer = null;
        }
        ;
        this.go = null;
        this._0mm = true;
    }

    private function _0dc():void {
        var _local2:uint;
        _tP = new Vector.<BitmapData>();
        var _local1:_0q = AssetLibrary._1dj("lofiParticlesShocker");
        var _local3:uint = 9;
        _local2 = 0;
        while (_local2 < _local3) {
            _tP.push(TextureRedrawer.redraw(_local1._1XN[_local2], this._1eR, true, 0, true));
            _local2++;
        }
        ;
    }

    private function initialize():void {
        this.timer = new Timer(200, 10);
        this.timer.addEventListener(TimerEvent.TIMER, this._5N);
        this.timer.addEventListener(TimerEvent.TIMER_COMPLETE, this._1VG);
        this.timer.start();
        this._0dc();
    }

    private function _5N(_arg1:TimerEvent):void {
        if (map_) {
            this._1vu = (int((Math.random() * 360)) * (Math.PI / 180));
            this.start_ = new Point((this.go.x_ + (Math.sin(this._1vu) * this._1zS)), (this.go.y_ + (Math.cos(this._1vu) * this._1zS)));
            this.end_ = new Point((this.go.x_ + (Math.sin(this._1vu) * this._0x4)), (this.go.y_ + (Math.cos(this._1vu) * this._0x4)));
            map_.addObj(new _u0(this.objectId, 25, this._1eR, this.start_, this.end_, this._1vu, this.go, _tP), this.start_.x, this.start_.y);
        }
        ;
    }

    private function _1VG(_arg1:TimerEvent):void {
        this.destroy();
    }


}
}//package _GI

