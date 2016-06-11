// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._1EW

package _1CB {
import _r7._17v;

import flash.events.MouseEvent;

public class _1EW extends _17v {

    [Inject]
    public var view:_cg;


    override public function initialize():void {
        this.view._0Kn.add(this.onMouseOut);
        this.view._1Gq.add(this.onMouseOver);
    }

    override public function destroy():void {
        this.view._0Kn.remove(this.onMouseOut);
        this.view._1Gq.remove(this.onMouseOver);
        this.view._WJ();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this.view._1zN();
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this.view._WJ();
    }


}
}//package _1CB

