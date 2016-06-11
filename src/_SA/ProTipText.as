// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_SA.ProTipText

package _SA {
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.text.TextFormatAlign;

public class ProTipText extends Sprite {

    private var text:_06T;


    public function _15k(_arg1:String):void {
        this.text = new _06T().setSize(18).setColor(0xFFFFFF).setWordWrap(true).setMultiLine(true).setTextWidth(580).setTextHeight(100).setHorizontalAlign(TextFormatAlign.CENTER);
        this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        this.text.setStringBuilder(new _5R().setParams(_TG._11o, {tip: _arg1}));
        this.text.x = -290;
        mouseEnabled = false;
        mouseChildren = false;
        addChild(this.text);
    }


}
}//package _SA

