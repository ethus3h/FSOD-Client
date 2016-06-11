// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.screens.charrects.CreateNewCharacterRect

package com.company.assembleegameclient.screens.charrects {
import _0Mr._5R;

import _10a._FU;

import _6u._TG;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.util._0ZU;
import com.company.assembleegameclient.util._0zq;
import com.company.util.BitmapUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;

public class CreateNewCharacterRect extends CharacterRect {

    public function CreateNewCharacterRect(_arg1:_FU) {
        var _local2:int;
        super();
        super.className = new _5R().setParams(_TG._ag);
        super.color = 0x545454;
        super.overColor = 0x777777;
        super.init();
        this.makeBitmap();
        if (_arg1._Pw() != _0ZU._0fG()) {
            _local2 = (_0ZU._0fG() - _arg1._Pw());
            super.makeTaglineIcon();
            super.makeTaglineText(new _5R().setParams(_TG._P, {remainingStars: _local2}));
            taglineText.x = (taglineText.x + taglineIcon.width);
        }
        ;
    }
    private var bitmap_:Bitmap;

    public function makeBitmap():void {
        var _local1:XML = ObjectLibrary._0ZM[int((ObjectLibrary._0ZM.length * Math.random()))];
        var _local2:BitmapData = SavedCharacter.getImage(null, _local1, _0zq.RIGHT, _0zq._c0, 0, false, false);
        _local2 = BitmapUtil._6L(_local2, 6, 6, (_local2.width - 12), (_local2.height - 6));
        this.bitmap_ = new Bitmap();
        this.bitmap_.bitmapData = _local2;
        this.bitmap_.x = CharacterRectConstants.ICON_POS_X;
        this.bitmap_.y = CharacterRectConstants.ICON_POS_Y;
        selectContainer.addChild(this.bitmap_);
    }


}
}//package com.company.assembleegameclient.screens.charrects

