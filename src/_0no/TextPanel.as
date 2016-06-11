// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no.TextPanel

package _0no {
import _0Mr._5R;

import _0y9._06T;

import _1f4.Panel;

import _6u._TG;

import com.company.assembleegameclient.game.GameSprite;

import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class TextPanel extends Panel {

    public function TextPanel(_arg1:GameSprite) {
        super(_arg1);
        this._bj();
    }
    private var textField:_06T;
    private var _lJ:Number;
    private var _uN:Number;

    public function init(_arg1:String):void {
        this.textField.setStringBuilder(new _5R().setParams(_arg1));
        this.textField.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        this.textField.x = (WIDTH / 2);
        this.textField.y = (HEIGHT / 2);
    }

    private function _bj():void {
        this.textField = new _06T().setSize(16).setColor(0xFFFFFF);
        this.textField.setBold(true);
        this.textField.setStringBuilder(new _5R().setParams(_TG._042));
        this.textField.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.textField);
    }


}
}//package _0no

