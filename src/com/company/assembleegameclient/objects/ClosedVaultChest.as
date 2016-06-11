// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ClosedVaultChest

package com.company.assembleegameclient.objects {
import _6u._TG;

import _Z0._0BS;
import _Z0.ToolTip;

import flash.display.BitmapData;

public class ClosedVaultChest extends SellableObject {

    public function ClosedVaultChest(_arg1:XML) {
        super(_arg1);
    }

    override public function soldObjectName():String {
        return (_TG._1Fe);
    }

    override public function soldObjectInternalName():String {
        return ("Vault Chest");
    }

    override public function getTooltip():ToolTip {
        var _local1:ToolTip = new _0BS(0x363636, 0x9B9B9B, this.soldObjectName(), _TG._05B, 200);
        return (_local1);
    }

    override public function getIcon():BitmapData {
        return (ObjectLibrary.getRedrawnTextureFromType(ObjectLibrary._qb["Vault Chest"], 80, true));
    }


}
}//package com.company.assembleegameclient.objects

