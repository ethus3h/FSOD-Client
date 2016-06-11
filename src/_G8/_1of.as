// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_G8._1of

package _G8 {
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _Z0._0BS;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _1of extends _true {

    public function _1of(_arg1:String, _arg2:String, _arg3:String) {
        this._07j = _arg1;
        this._Iq = _arg3;
        this._1ZU = new _06T().setSize(18).setColor(0xB3B3B3);
        this._1ZU.setStringBuilder(new _5R().setParams(_arg2));
        this._1ZU.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        this._1ZU.x = (KeyCodeBox.WIDTH + 24);
        this._1ZU.mouseEnabled = true;
        this._1ZU.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        this._1ZU.addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        addChild(this._1ZU);
        this._Ly = new _0BS(0x272727, 0x828282, null, this._Iq, 150);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        textChanged = this._1ZU.textChanged;
    }
    public var _07j:String;
    protected var _Ly:_0BS;
    protected var _1ZU:_06T;
    private var _Iq:String;

    public function _0X7(_arg1:_1vN):void {
        this._1ZU.setStringBuilder(_arg1);
    }

    public function _0rB(_arg1:_1vN):void {
        this._Ly._1Nq(_arg1);
    }

    public function refresh():void {
    }

    private function removeToolTip():void {
        if (((!((this._Ly == null))) && (parent.contains(this._Ly)))) {
            parent.removeChild(this._Ly);
        }
        ;
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        parent.addChild(this._Ly);
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this.removeToolTip();
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this.removeToolTip();
    }


}
}//package _G8

