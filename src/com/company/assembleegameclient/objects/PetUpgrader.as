// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.PetUpgrader

package com.company.assembleegameclient.objects {
import _0Sj._0tN;

import _1f4.Panel;

import _6u._TG;

import _Z0._0BS;
import _Z0.ToolTip;

import com.company.assembleegameclient.game.GameSprite;

public class PetUpgrader extends GameObject implements _Rk {

    public function PetUpgrader(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }

    public function getTooltip():ToolTip {
        var _local1:ToolTip = new _0BS(0x363636, 0x9B9B9B, _TG._0Yp, _TG._042, 200);
        return (_local1);
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new _0tN(_arg1, objectType_));
    }


}
}//package com.company.assembleegameclient.objects

