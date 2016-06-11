// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI.ParticleField

package _GI {
import _JD._z8;

import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.geom.Point;
import flash.utils.Timer;

public class ParticleField extends _z8 {

    private const SMALL:String = "SMALL";
    private const LARGE:String = "LARGE";

    public function ParticleField(_arg1:Number, _arg2:Number) {
        this._0vN = new Sprite();
        this._0x7 = [];
        this._VB(_arg2, _arg1);
        this._sT();
        this._Ok();
        var _local3:BitmapData = new BitmapData(this.width, this.height, true, 0);
        _local3.draw(this._0vN);
        super(_local3, 0);
    }
    public var lifetime_:int;
    public var timeLeft_:int;
    private var _02c:String;
    private var width:int;
    private var height:int;
    private var _0vN:Sprite;
    private var _0x7:Array;
    private var visibleHeight:Number;
    private var offset:Number;
    private var timer:Timer;
    private var _0d6:Boolean;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local3:uint;
        if (this._0d6) {
            return (false);
        }
        ;
        var _local4:uint = this._0x7.length;
        _local3 = 0;
        while (_local3 < _local4) {
            if (this._0x7[_local3]) {
                this._0x7[_local3].move();
            }
            ;
            _local3++;
        }
        ;
        _0L1 = new BitmapData(this.width, this.height, true, 0);
        _0L1.draw(this._0vN);
        return (true);
    }

    public function destroy():void {
        if (this.timer != null) {
            this.timer.removeEventListener(TimerEvent.TIMER, this._5N);
            this.timer.stop();
            this.timer = null;
        }
        ;
        this._0vN = null;
        this._0x7 = [];
        this._0d6 = true;
    }

    private function _Ok():void {
        this.timer = new Timer(this._1Np());
        this.timer.addEventListener(TimerEvent.TIMER, this._5N);
        this.timer.start();
    }

    private function _VB(_arg1:Number, _arg2:Number):void {
        this.visibleHeight = ((_arg1 * 5) + 40);
        this.offset = (this.visibleHeight * 0.5);
        this.width = ((_arg2 * 5) + 40);
        this.height = (this.visibleHeight + this.offset);
    }

    private function _sT():void {
        this._02c = (((this.width == 8)) ? this.SMALL : this.LARGE);
    }

    private function _0TC():uint {
        return ((((this._02c == this.SMALL)) ? 15 : 30));
    }

    private function _1Np():uint {
        return ((((this._02c == this.SMALL)) ? 100 : 50));
    }

    private function _1NQ(_arg1:Square):void {
        _arg1.complete.removeAll();
        this._0vN.removeChild(_arg1);
        this._0x7.splice(this._0x7.indexOf(_arg1), 1);
    }

    private function _1Hx():Point {
        var _local1:Array = (((Math.random() < 0.5)) ? ["x", "y", "width", "visibleHeight"] : ["y", "x", "visibleHeight", "width"]);
        var _local2:Point = new Point(0, 0);
        _local2[_local1[0]] = (Math.random() * this[_local1[2]]);
        _local2[_local1[1]] = (((Math.random() < 0.5)) ? 0 : this[_local1[3]]);
        return (_local2);
    }

    private function _26():Point {
        return (new Point((this.width / 2), (this.visibleHeight / 2)));
    }

    private function _5N(_arg1:TimerEvent):void {
        var _local2:Square = new Square(this._1Hx(), this._26(), this._0TC());
        _local2.complete.add(this._1NQ);
        this._0x7.push(_local2);
        this._0vN.addChild(_local2);
    }


}
}//package _GI

import _1Sm._sy;

import flash.display.Shape;
import flash.geom.Point;

class Square extends Shape {

    public var start:Point;
    public var end:Point;
    private var lifespan:uint;
    private var moveX:Number;
    private var moveY:Number;
    private var angle:Number;
    public var complete:_sy;

    public function Square(_arg1:Point, _arg2:Point, _arg3:uint) {
        this.complete = new _sy();
        super();
        this.start = _arg1;
        this.end = _arg2;
        this.lifespan = _arg3;
        this.moveX = ((_arg2.x - _arg1.x) / _arg3);
        this.moveY = ((_arg2.y - _arg1.y) / _arg3);
        graphics.beginFill(0xFFFFFF);
        graphics.drawRect(-2, -2, 4, 4);
        this.position();
    }

    private function position():void {
        this.x = this.start.x;
        this.y = this.start.y;
    }

    public function move():void {
        this.x = (this.x + this.moveX);
        this.y = (this.y + this.moveY);
        this.lifespan--;
        if (!this.lifespan) {
            this.complete.dispatch(this);
        }
        ;
    }


}

