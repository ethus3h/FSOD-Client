// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4._0l2

package _1f4 {
import _0Mr._5R;

import _0y9._06T;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.ui._1jP;

import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _0l2 extends Panel {

    public function _0l2(_arg1:GameSprite, _arg2:String, _arg3:String) {
        super(_arg1);
        this._zj = new _06T().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setHTML(true).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER);
        this._zj.setBold(true);
        this._zj.setStringBuilder(new _5R().setParams(_arg2).setPrefix('<p align="center">').setPostfix("</p>"));
        this._zj.filters = [new DropShadowFilter(0, 0, 0)];
        this._zj.y = 6;
        addChild(this._zj);
        this._d4 = new _1jP(16, _arg3);
        this._d4.addEventListener(MouseEvent.CLICK, this.onButtonClick);
        this._d4.textChanged.addOnce(this._zx);
        addChild(this._d4);
    }
    protected var _d4:_1jP;
    private var _zj:_06T;

    private function _zx():void {
        this._d4.x = ((WIDTH / 2) - (this._d4.width / 2));
        this._d4.y = ((HEIGHT - this._d4.height) - 4);
    }

    protected function onButtonClick(_arg1:MouseEvent):void {
    }


}
}//package _1f4

