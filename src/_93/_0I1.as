// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_93._0I1

package _93 {
import _07g._0Yv;

import _r7._17v;

import com.company.assembleegameclient.util._1hw;

import flash.events.MouseEvent;

public class _0I1 extends _17v {

    [Inject]
    public var _054:_0Yv;
    [Inject]
    public var _0FE:_1hw;


    override public function initialize():void {
        this._054.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
    }

    override public function destroy():void {
        this._054.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
    }

    private function onMouseUp(_arg1:MouseEvent):void {
        this._0FE.setFocus(null);
    }


}
}//package _93

