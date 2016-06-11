// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_E4._AQ

package _E4 {
import _0y9._06T;

import com.company.assembleegameclient.objects.ObjectLibrary;

import flash.display.Bitmap;
import flash.filters.DropShadowFilter;

public class _AQ {


    public static function _1h(color:int, size:int, bold:Boolean, dropShadow:Boolean = false):_06T {
        var _local5:_06T = new _06T();
        _local5.setSize(size).setColor(color).setBold(bold);
        _local5.setVerticalAlign(_06T.BOTTOM);
        _local5.filters = ((dropShadow) ? [new DropShadowFilter(0, 0, 0)] : []);
        return (_local5);
    }

    public static function _1W8(_arg1:uint):Bitmap {
        return (new Bitmap(ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true)));
    }


}
}//package _E4

