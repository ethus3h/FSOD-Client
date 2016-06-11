// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1sa

package _0t {
import _Z0.ToolTip;

import com.company.assembleegameclient.objects.ObjectLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;

class _1sa extends _1pu {

    public function _1sa(_arg1:XML) {
        var _local3:Bitmap;
        super(int(_arg1.@type));
        this._1GW = _arg1;
        var _local2:BitmapData = ObjectLibrary.getRedrawnTextureFromType(type_, 100, true, false);
        _local3 = new Bitmap(_local2);
        var _local4:Number = ((WIDTH - 4) / Math.max(_local3.width, _local3.height));
        _local3.scaleX = (_local3.scaleY = _local4);
        _local3.x = ((WIDTH / 2) - (_local3.width / 2));
        _local3.y = ((HEIGHT / 2) - (_local3.height / 2));
        addChild(_local3);
    }
    public var _1GW:XML;

    override protected function getToolTip():ToolTip {
        return (new _0db(this._1GW));
    }


}
}//package _0t-

