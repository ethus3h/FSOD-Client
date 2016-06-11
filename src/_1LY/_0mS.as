// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1LY._0mS

package _1LY {
import _07g._0GQ;

import flash.display.DisplayObjectContainer;

public class _0mS {

    private static var show:Boolean = true;
    private static var view:_0GQ;

    [Inject]
    public var _bo:DisplayObjectContainer;


    public function execute():void {
        if (show) {
            view = new _0GQ();
            view.x = 4;
            view.y = 4;
            this._bo.addChild(view);
            show = false;
        } else {
            this._bo.removeChild(view);
            view = null;
            show = true;
        }
        ;
    }


}
}//package _1LY

