// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cZ._wB

package _0cZ {
import flash.display.BlendMode;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class _wB extends Sprite {

    private const _0Zp:Sprite = _1WV();
    private const _xI:Sprite = _1lY();
    private const _jf:Sprite = _2Y();
    private const timer:Timer = new Timer(25);
    private const radius:int = 22;
    private const color:uint = 0xFFFFFF;

    public function _wB() {
        x = (y = this.radius);
        this._1dN();
        addEventListener(Event.ADDED_TO_STAGE, this._1oe);
        addEventListener(Event.REMOVED_FROM_STAGE, this._1fl);
    }

    private function _1WV():Sprite {
        var _local1:Sprite;
        _local1 = new Sprite();
        _local1.blendMode = BlendMode.LAYER;
        _local1.graphics.beginFill(this.color);
        _local1.graphics.drawCircle(0, 0, this.radius);
        _local1.graphics.endFill();
        return (_local1);
    }

    private function _1lY():Sprite {
        var _local1:Sprite = new Sprite();
        _local1.blendMode = BlendMode.ERASE;
        _local1.graphics.beginFill((0xFFFFFF * 0.6));
        _local1.graphics.drawCircle(0, 0, (this.radius / 2));
        _local1.graphics.endFill();
        return (_local1);
    }

    private function _2Y():Sprite {
        var _local1:Sprite = new Sprite();
        _local1.graphics.beginFill(0xFFFFFF);
        _local1.graphics.drawRect(0, 0, this.radius, this.radius);
        _local1.graphics.endFill();
        return (_local1);
    }

    private function _1dN():void {
        this._0Zp.addChild(this._xI);
        this._0Zp.addChild(this._jf);
        this._0Zp.mask = this._jf;
        addChild(this._0Zp);
    }

    private function _1oe(_arg1:Event):void {
        this.timer.addEventListener(TimerEvent.TIMER, this._0qe);
        this.timer.start();
    }

    private function _1fl(_arg1:Event):void {
        this.timer.stop();
        this.timer.removeEventListener(TimerEvent.TIMER, this._0qe);
    }

    private function _0qe(_arg1:TimerEvent):void {
        this._jf.rotation = (this._jf.rotation + 20);
    }


}
}//package _0cZ

