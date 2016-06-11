// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tB._di

package _0tB_ {
import _0fO.*;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.geom.Rectangle;

public class _di extends Sprite implements _oh {

    public static var _1OE:Class = _1HY;

    public function _di() {
        this._1Iu();
        this._1mg();
    }
    private var _0gX:Sprite;

    public function resize(_arg1:Rectangle):void {
        x = ((_arg1.width - width) / 2);
        y = ((_arg1.height - height) / 2);
    }

    private function _1Iu():void {
        addChild(new _1OE());
    }

    private function _1mg():void {
        this._0gX = new Sprite();
        this._0gX.graphics.beginFill(0xFF0000, 0);
        this._0gX.graphics.drawRect(0, 0, 30, 30);
        this._0gX.graphics.endFill();
        this._0gX.buttonMode = true;
        this._0gX.x = 550;
        this._0gX.y = 30;
        addEventListener(MouseEvent.CLICK, this._0mM);
        addChild(this._0gX);
    }

    private function _0mM(_arg1:MouseEvent):void {
        parent.removeChild(this);
    }


}
}//package _0tB

