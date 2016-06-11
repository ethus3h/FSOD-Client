// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._4H

package _U1 {
import _0Mr._5R;

import _0y9._06T;

import _1Kr._1E8;

import _6u._TG;

import com.company.rotmg.graphics.ScreenGraphic;

import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _4H extends Sprite {

    public function _4H() {
        this.text = new _06T();
        super();
        addChild(new _1E8());
        addChild(new ScreenGraphic());
        this.text.setSize(30).setColor(0xFFFFFF).setVerticalAlign(_06T.MIDDLE).setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
        this.text.y = 550;
        addEventListener(Event.ADDED_TO_STAGE, this._1oe);
        this.text.setStringBuilder(new _5R().setParams(_TG._1UX));
        this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        addChild(this.text);
    }
    private var text:_06T;

    public function _1a2(_arg1:String):void {
        this.text.setStringBuilder(new _5R().setParams(_arg1));
    }

    private function _1oe(_arg1:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, this._1oe);
        this.text.x = (stage.stageWidth / 2);
    }


}
}//package _U1

