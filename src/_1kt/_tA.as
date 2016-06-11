// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kt._tA

package _1kt {
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.utils.getTimer;

import kabam.rotmg.assets._0vi;

public class _tA extends Sprite {

    public const _RA:DisplayObject = new _0vi.StarburstSpinner();

    public function _tA() {
        this._0lx = 0;
        this._Pb();
        this._19q();
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        addEventListener(Event.REMOVED_FROM_STAGE, this._1fl);
    }
    public var _03i:Number;
    private var _0lx:Number;
    private var _0DD:Number;

    private function _Pb():void {
        this._03i = 50;
    }

    private function _19q():void {
        addChild(this._RA);
        this._RA.x = ((-1 * width) / 2);
        this._RA.y = ((-1 * height) / 2);
    }

    private function _0uK():void {
        var _local1:Number = (getTimer() / 1000);
        if (this._0DD) {
            this._0lx = (this._0lx + (_local1 - this._0DD));
        }
        ;
        this._0DD = _local1;
    }

    private function _1fl(_arg1:Event):void {
        removeEventListener(Event.REMOVED_FROM_STAGE, this._1fl);
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onEnterFrame(_arg1:Event):void {
        this._0uK();
        rotation = ((this._03i * this._0lx) % 360);
    }


}
}//package _1kt

