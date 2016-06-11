// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_8x._1RV

package _8x {
import flash.display.Sprite;

public final class _1RV extends Sprite {

    public function _1RV() {
        addChild((this.output = new _CJ()));
        addChild((this.input = new _1A()));
    }
    public var output:_CJ;
    public var input:_1A;

    override public function set visible(_arg1:Boolean):void {
        super.visible = _arg1;
        if (((_arg1) && (stage))) {
            stage.focus = this.input;
        }
        ;
    }


}
}//package _8x

