// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_jX._Av

package _jX {
import flash.display.Sprite;

public class _Av extends Sprite {

    public function _Av(_arg1:int, _arg2:int, _arg3:int, _arg4:int) {
        graphics.beginFill(0, 0);
        graphics.drawRect(0, 0, _arg3, _arg4);
        graphics.endFill();
        this.x = _arg1;
        this.y = _arg2;
        buttonMode = true;
    }

}
}//package _jX

