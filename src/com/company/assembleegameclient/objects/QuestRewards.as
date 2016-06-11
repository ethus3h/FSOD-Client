// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.QuestRewards

package com.company.assembleegameclient.objects {
import _1f4.Panel;

import _nH._4m;

import com.company.assembleegameclient.game.GameSprite;

public class QuestRewards extends GameObject implements _Rk {

    public function QuestRewards(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new _4m(_arg1));
    }


}
}//package com.company.assembleegameclient.objects

