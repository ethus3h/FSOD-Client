// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4.GuildBoardPanel

package _1f4 {
import _0Ng._13o;

import _6u._TG;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.util.GuildUtil;

import flash.events.MouseEvent;

public class GuildBoardPanel extends _0l2 {

    public function GuildBoardPanel(_arg1:GameSprite) {
        super(_arg1, _TG._0eV, _TG._15i);
    }

    override protected function onButtonClick(_arg1:MouseEvent):void {
        var _local2:Player = gs_.map.player_;
        if (_local2 == null) {
            return;
        }
        ;
        gs_.addChild(new _13o((_local2.guildRank_ >= GuildUtil._15E)));
    }


}
}//package _1f4

