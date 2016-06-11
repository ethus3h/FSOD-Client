// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.GuildBoard

package com.company.assembleegameclient.objects {
import _1f4.GuildBoardPanel;
import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;

public class GuildBoard extends GameObject implements _Rk {

    public function GuildBoard(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new GuildBoardPanel(_arg1));
    }


}
}//package com.company.assembleegameclient.objects

