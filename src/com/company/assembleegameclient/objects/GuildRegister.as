// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.GuildRegister

package com.company.assembleegameclient.objects {
import _1f4.GuildRegisterPanel;
import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;

public class GuildRegister extends GameObject implements _Rk {

    public function GuildRegister(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new GuildRegisterPanel(_arg1));
    }


}
}//package com.company.assembleegameclient.objects

