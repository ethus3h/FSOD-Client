// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._0UH

package com.company.assembleegameclient.ui {
import _1TG._0W6;
import _1TG._1Y;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.GlowFilter;

public class _0UH extends Sprite {

    public function _0UH() {
        this.bitmap_ = new Bitmap();
        super();
        addChild(this.bitmap_);
        this.bitmap_.scaleX = 2;
        this.bitmap_.scaleY = 2;
        this._1Zj();
        addEventListener(MouseEvent.CLICK, this._0g8);
        filters = [new GlowFilter(0, 1, 4, 4, 2, 1)];
    }
    private var bitmap_:Bitmap;

    private function _1Zj():void {
        this.bitmap_.bitmapData = ((((Parameters.data_.playMusic) || (Parameters.data_.playSFX))) ? AssetLibrary._Rb("lofiInterfaceBig", 3) : AssetLibrary._Rb("lofiInterfaceBig", 4));
    }

    private function _0g8(_arg1:MouseEvent):void {
        var _local2 = !(((Parameters.data_.playMusic) || (Parameters.data_.playSFX)));
        _0W6._16i(_local2);
        _1Y._dI(_local2);
        Parameters.data_.playPewPew = _local2;
        Parameters.save();
        this._1Zj();
    }


}
}//package com.company.assembleegameclient.ui

