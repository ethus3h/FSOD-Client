// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1wC._0n1

package _1wC {
import flash.display.DisplayObject;
import flash.display.Sprite;

public class _0n1 extends Sprite {

    private var toolTip:DisplayObject;


    public function show(_arg1:DisplayObject):void {
        this.hide();
        this.toolTip = _arg1;
        if (_arg1) {
            addChild(_arg1);
        }
        ;
    }

    public function hide():void {
        if (((this.toolTip) && (this.toolTip.parent))) {
            this.toolTip.parent.removeChild(this.toolTip);
        }
        ;
        this.toolTip = null;
    }


}
}//package _1wC

