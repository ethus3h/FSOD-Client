// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._3j

package _n {
import _1Sm._sy;

import _v9._108;
import _v9._qi;

import flash.display.Sprite;
import flash.events.MouseEvent;

final class _3j extends Sprite {

    public static const WIDTH:int = _14L.WIDTH;//20
    public static const BEVEL:int = (_14L.BEVEL + (_14L._1U6 * 0.5));//4

    public const clicked:_sy = new _sy(int);
    public const rect:_108 = new _108(WIDTH, 0, BEVEL);
    private const _1FZ:_qi = new _qi();


    public function redraw():void {
        graphics.clear();
        graphics.beginFill(0x545454);
        this._1FZ._EN(0, 0, this.rect, graphics);
        graphics.endFill();
    }

    public function _lF():void {
        addEventListener(MouseEvent.CLICK, this._1Lb);
    }

    public function _1Rs():void {
        removeEventListener(MouseEvent.CLICK, this._1Lb);
    }

    private function _1Lb(_arg1:MouseEvent):void {
        this.clicked.dispatch(int(mouseY));
    }


}
}//package _n-

