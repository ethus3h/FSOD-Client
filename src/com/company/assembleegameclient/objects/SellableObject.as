// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.SellableObject

package com.company.assembleegameclient.objects {
import _0no.SellableObjectPanel;

import _1f4.Panel;

import _Z0.ToolTip;

import com.company.assembleegameclient.game.GameSprite;

import flash.display.BitmapData;

public class SellableObject extends GameObject implements _Rk {

    public function SellableObject(_arg1:XML) {
        super(_arg1);
        _11k = true;
    }
    public var price_:int = 0;
    public var currency_:int = -1;
    public var _1DL:int = 0;
    public var _16t:int = -1;

    public function setPrice(_arg1:int):void {
        this.price_ = _arg1;
    }

    public function _qz(_arg1:int):void {
        this.currency_ = _arg1;
    }

    public function setRankReq(_arg1:int):void {
        this._1DL = _arg1;
    }

    public function soldObjectName():String {
        return (null);
    }

    public function soldObjectInternalName():String {
        return (null);
    }

    public function getTooltip():ToolTip {
        return (null);
    }

    public function getIcon():BitmapData {
        return (null);
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new SellableObjectPanel(_arg1, this));
    }


}
}//package com.company.assembleegameclient.objects

