// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.model.Animation

package kabam.rotmg.assets.model {
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class Animation extends Sprite {

    private const _1nD:int = 200;
    private const _0tD:Bitmap = makeBitmap();
    private const _xz:Vector.<BitmapData> = new <BitmapData>[];
    private const timer:Timer = _0ko();

    private var _0fz:Boolean;
    private var index:int;
    private var count:uint;
    private var disposed:Boolean;

    public function _0KS():int {
        return (this.timer.delay);
    }

    public function _09q(_arg1:int):void {
        this.timer.delay = _arg1;
    }

    public function _sv(..._args):void {
        var _local2:BitmapData;
        this._xz.length = 0;
        this.index = 0;
        for each (_local2 in _args) {
            this.count = this._xz.push(_local2);
        }
        ;
        if (this._0fz) {
            this.start();
        } else {
            this._Lt();
        }
        ;
    }

    public function _07C(_arg1:BitmapData):void {
        this.count = this._xz.push(_arg1);
        ((this._0fz) && (this.start()));
    }

    public function start():void {
        if (((!(this._0fz)) && ((this.count > 0)))) {
            this.timer.start();
            this._Lt();
        }
        ;
        this._0fz = true;
    }

    public function stop():void {
        ((this._0fz) && (this.timer.stop()));
        this._0fz = false;
    }

    public function dispose():void {
        var _local1:BitmapData;
        this.disposed = true;
        this.stop();
        this.index = 0;
        this.count = 0;
        this._xz.length = 0;
        for each (_local1 in this._xz) {
            _local1.dispose();
        }
        ;
    }

    public function _0Jf():Boolean {
        return (this._0fz);
    }

    public function _1Tx():Boolean {
        return (this.disposed);
    }

    private function makeBitmap():Bitmap {
        var _local1:Bitmap = new Bitmap();
        addChild(_local1);
        return (_local1);
    }

    private function _0ko():Timer {
        var _local1:Timer = new Timer(this._1nD);
        _local1.addEventListener(TimerEvent.TIMER, this._Lt);
        return (_local1);
    }

    private function _Lt(_arg1:TimerEvent = null):void {
        this.index = (++this.index % this.count);
        this._0tD.bitmapData = this._xz[this.index];
    }


}
}//package kabam.rotmg.assets.model

