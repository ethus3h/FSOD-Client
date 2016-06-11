// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._LI

package _1CB {
import _1Fr._1IN;

import flash.display.Sprite;

public class _LI extends Sprite {

    public function _LI(_arg1:uint) {
        this.stats = new __0Vh();
        super();
        this.init();
        this._UC(_arg1);
        this._1dN();
    }
    private var stats:__0Vh;

    private function _1dN():void {
        addChild(this.stats);
    }

    private function _UC(_arg1:uint):void {
        this.stats.y = (((_arg1 - _1Jz._0AX) / 2) - (this.stats.height / 2));
    }

    private function init():void {
        this.stats.name = _1IN._1Or;
    }


}
}//package _1CB

