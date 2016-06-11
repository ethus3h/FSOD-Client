// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_SA._Ss

package _SA {
import _DO.GTween;

import flash.display.Sprite;
import flash.filters.GlowFilter;

public class _Ss extends Sprite {

    public function _Ss() {
        this.text = new ProTipText();
        this.text.x = 300;
        this.text.y = 125;
        addChild(this.text);
        filters = [new GlowFilter(0, 1, 3, 3, 2, 1)];
        mouseEnabled = false;
        mouseChildren = false;
    }
    private var text:ProTipText;

    public function _15k(_arg1:String):void {
        this.text._15k(_arg1);
        var _local2:GTween = new GTween(this, 5, {alpha: 0});
        _local2.delay = 5;
        _local2.onComplete = this._1ZJ;
    }

    private function _1ZJ(_arg1:GTween):void {
        ((parent) && (parent.removeChild(this)));
    }


}
}//package _SA

