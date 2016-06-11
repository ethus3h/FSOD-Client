// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_8x._1D5

package _8x {
import _1RN._RX;

import _r7._17v;

import flash.display.DisplayObjectContainer;
import flash.events.KeyboardEvent;

public class _1D5 extends _17v {

    private const _1GO:uint = 27;

    [Inject]
    public var view:DisplayObjectContainer;
    [Inject]
    public var _11l:_RX;


    override public function initialize():void {
        this.view.stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    override public function destroy():void {
        this.view.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if (_arg1.keyCode == this._1GO) {
            this._11l.dispatch();
        }
        ;
    }


}
}//package _8x

