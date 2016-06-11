// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects._1Sg

package com.company.assembleegameclient.objects {
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;

public class _1Sg {


    public function _Rb(_arg1:String, _arg2:int):BitmapData {
        return (AssetLibrary._Rb(_arg1, _arg2));
    }

    public function getTexture(_arg1:int, _arg2:int):BitmapData {
        var _local4:Number;
        var _local5:BitmapData;
        var _local3:BitmapData = ObjectLibrary.getBitmapData(_arg1);
        if (_local3) {
            _local4 = ((_arg2 - TextureRedrawer._tZ) / _local3.width);
            _local5 = ObjectLibrary.getRedrawnTextureFromType(_arg1, 100, true, false, _local4);
            return (_local5);
        }
        ;
        return (new _0Iy(_arg2, _arg2));
    }


}
}//package com.company.assembleegameclient.objects

