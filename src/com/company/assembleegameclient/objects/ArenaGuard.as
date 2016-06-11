// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ArenaGuard

package com.company.assembleegameclient.objects {
import _1EG.ArenaQueryPanel;

import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;

public class ArenaGuard extends GameObject implements _Rk {

    public function ArenaGuard(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new ArenaQueryPanel(_arg1, objectType_));
    }


}
}//package com.company.assembleegameclient.objects

