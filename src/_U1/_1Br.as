// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._1Br

package _U1 {
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.rotmg.graphics.ScreenGraphic;

import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _1Br extends Sprite {

    public function _1Br() {
        addChild(new ScreenGraphic());
        this._0Nr = new _06T().setSize(30).setColor(0xFFFFFF).setBold(true);
        this._0Nr.setStringBuilder(new _5R().setParams(_TG._1UX));
        this._0Nr.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        this._0Nr.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        addChild(this._0Nr);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
    }
    private var _0Nr:_06T;

    protected function onAddedToStage(_arg1:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        this._0Nr.x = (stage.stageWidth / 2);
        this._0Nr.y = 550;
    }


}
}//package _U1

