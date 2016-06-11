// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.CharacterChanger

package com.company.assembleegameclient.objects {
import _1f4.CharacterChangerPanel;
import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;

public class CharacterChanger extends GameObject implements _Rk {

    public function CharacterChanger(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new CharacterChangerPanel(_arg1));
    }


}
}//package com.company.assembleegameclient.objects

