// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ReskinVendor

package com.company.assembleegameclient.objects {
import _0JD.ReskinPanel;

import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;

public class ReskinVendor extends GameObject implements _Rk {

    public function ReskinVendor(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new ReskinPanel(_arg1));
    }


}
}//package com.company.assembleegameclient.objects

