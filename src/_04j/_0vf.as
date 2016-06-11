// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04j._0vf

package _04j {
import flash.display.DisplayObject;
import flash.display.Sprite;

public class _0vf extends Sprite {

    public function _0vf(_arg1:DisplayObject, _arg2:Number, _arg3:Number) {
        this._8L = _arg1;
        addChild(_arg1);
        this.width = _arg2;
        this.height = _arg3;
    }
    public var _8L:DisplayObject;

    public function setXPos(_arg1:Number):void {
        this.x = (_arg1 - (this.width / 2));
    }

    public function setYPos(_arg1:Number):void {
        this.y = (_arg1 - (this.height / 2));
    }

    public function getCenterX():Number {
        return ((this.x + (this.width / 2)));
    }

    public function getCenterY():Number {
        return ((this.y + (this.height / 2)));
    }


}
}//package _04j

