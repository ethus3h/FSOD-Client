// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4.GuildChroniclePanel

package _1f4 {
import _2t._b;

import _6u._TG;

import com.company.assembleegameclient.game.GameSprite;

import flash.events.MouseEvent;

public class GuildChroniclePanel extends _0l2 {

    public function GuildChroniclePanel(_arg1:GameSprite) {
        super(_arg1, _TG._0h, _TG._15i);
    }

    override protected function onButtonClick(_arg1:MouseEvent):void {
        gs_.mui_.clearInput();
        gs_.addChild(new _b(gs_));
    }


}
}//package _1f4

