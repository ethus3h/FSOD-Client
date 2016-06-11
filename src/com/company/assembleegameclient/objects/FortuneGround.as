// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.FortuneGround

package com.company.assembleegameclient.objects {
import _0no.FortuneGroundPanel;

import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;

public class FortuneGround extends GameObject implements _Rk {

    public function FortuneGround(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new FortuneGroundPanel(_arg1, objectType_));
    }


}
}//package com.company.assembleegameclient.objects

