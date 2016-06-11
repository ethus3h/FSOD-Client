// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.NameChanger

package com.company.assembleegameclient.objects {
import _0no.NameChangerPanel;

import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;

public class NameChanger extends GameObject implements _Rk {

    public function NameChanger(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }
    public var _1uD:int = 0;

    public function _1eL(_arg1:int):void {
        this._1uD = _arg1;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new NameChangerPanel(_arg1, this._1uD));
    }


}
}//package com.company.assembleegameclient.objects

