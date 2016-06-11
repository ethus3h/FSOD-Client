// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.GuildMerchant

package com.company.assembleegameclient.objects {
import _Z0._0BS;
import _Z0.ToolTip;

import com.company.assembleegameclient.util.Currency;
import com.company.assembleegameclient.util.GuildUtil;

import flash.display.BitmapData;

public class GuildMerchant extends SellableObject implements _Rk {

    public function GuildMerchant(_arg1:XML) {
        super(_arg1);
        price_ = int(_arg1.Price);
        currency_ = Currency._vZ;
        this.description_ = _arg1.Description;
        _16t = GuildUtil._1PX;
    }
    public var description_:String;

    override public function soldObjectName():String {
        return (ObjectLibrary._1w3[objectType_]);
    }

    override public function soldObjectInternalName():String {
        var _local1:XML = ObjectLibrary._18H[objectType_];
        return (_local1.@id.toString());
    }

    override public function getTooltip():ToolTip {
        var _local1:ToolTip = new _0BS(0x363636, 0x9B9B9B, this.soldObjectName(), this.description_, 200);
        return (_local1);
    }

    override public function getIcon():BitmapData {
        return (ObjectLibrary.getRedrawnTextureFromType(objectType_, 80, true));
    }


}
}//package com.company.assembleegameclient.objects

