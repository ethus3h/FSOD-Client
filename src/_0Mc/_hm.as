// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._hm

package _0Mc {
import _0Mr._5R;

import _0Nb.*;

import _0y9._06T;

import _1Sm._sy;

import _n._0f4;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _hm extends Sprite implements _0nz {

    public static const HEIGHT:int = 28;

    public const _05H:_sy = new _sy();

    public function _hm(_arg1:String) {
        this.label = _arg1;
        this._1pQ();
        this._1ZG();
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        this.text.textChanged.add(this.onTextChanged);
    }
    private var label:String;
    private var text:_06T;
    private var button:_0f4;

    public function getValue():String {
        return (this.label);
    }

    public function setSelected(_arg1:Boolean):void {
        this.button.setSelected(_arg1);
    }

    private function onTextChanged():void {
        this.text.y = ((this.button.height / 2) - (this.text.height / 2));
        this._05H.dispatch();
    }

    private function _1pQ():void {
        this.button = new _0f4();
        addChild(this.button);
    }

    private function _1ZG():void {
        this.text = new _06T().setSize(18).setColor(0xFFFFFF).setBold(true);
        this.text.setStringBuilder(new _5R().setParams(this.label));
        this.text.filters = [new DropShadowFilter(0, 0, 0)];
        this.text.x = (HEIGHT + 8);
        addChild(this.text);
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this.text.setColor(16768133);
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this.text.setColor(0xFFFFFF);
    }


}
}//package _0Mc

