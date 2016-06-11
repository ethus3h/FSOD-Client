// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4.CharacterChangerPanel

package _1f4 {
import _6u._TG;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;

public class CharacterChangerPanel extends _0l2 {

    public function CharacterChangerPanel(_arg1:GameSprite) {
        super(_arg1, _TG._nL, _TG._0vO);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    override protected function onButtonClick(_arg1:MouseEvent):void {
        gs_.closed.dispatch();
    }

    private function onAddedToStage(_arg1:Event):void {
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null)))) {
            gs_.closed.dispatch();
        }
        ;
    }


}
}//package _1f4

