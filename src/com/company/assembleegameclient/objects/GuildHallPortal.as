// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.GuildHallPortal

package com.company.assembleegameclient.objects {
import _1f4.GuildHallPortalPanel;
import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;

public class GuildHallPortal extends GameObject implements _Rk {

    public function GuildHallPortal(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new GuildHallPortalPanel(_arg1, this));
    }


}
}//package com.company.assembleegameclient.objects

