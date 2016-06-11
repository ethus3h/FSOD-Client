// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ClosedGiftChest

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _0no.TextPanel;

import _1d9._145;

import _1f4.Panel;

import _6u._TG;

import _Z0._0BS;
import _Z0.ToolTip;

import com.company.assembleegameclient.game.GameSprite;

public class ClosedGiftChest extends GameObject implements _Rk {

    public function ClosedGiftChest(_arg1:XML) {
        super(_arg1);
        _11k = true;
        this._3p = _8w._1Sz().getInstance(_145);
    }
    private var _3p:_145;

    public function getTooltip():ToolTip {
        var _local1:ToolTip = new _0BS(0x363636, 0x9B9B9B, _TG._0Yp, _TG._042, 200);
        return (_local1);
    }

    public function getPanel(_arg1:GameSprite):Panel {
        this._3p.dispatch(_TG._042);
        return (new TextPanel(_arg1));
    }


}
}//package com.company.assembleegameclient.objects

