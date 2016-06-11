// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no.MoneyChangerPanel

package _0no {
import _1Sm._sy;

import _1f4._0l2;

import _6u._TG;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;

public class MoneyChangerPanel extends _0l2 {

    public function MoneyChangerPanel(_arg1:GameSprite) {
        super(_arg1, _TG._0xc, _TG._1FX);
        this._0pU = new _sy();
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var _0pU:_sy;

    override protected function onButtonClick(_arg1:MouseEvent):void {
        this._0pU.dispatch();
    }

    private function onAddedToStage(_arg1:Event):void {
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null)))) {
            this._0pU.dispatch();
        }
        ;
    }


}
}//package _0no

