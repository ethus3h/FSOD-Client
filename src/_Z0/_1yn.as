// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0._1yn

package _Z0 {
import com.company.assembleegameclient.objects.GameObject;
import com.company.util.BitmapUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;

public class _1yn extends ToolTip {

    public function _1yn(_arg1:GameObject) {
        super(6036765, 1, 16549442, 1, false);
        this._0H = new Bitmap();
        this._0H.x = 0;
        this._0H.y = 0;
        var _local2:BitmapData = _arg1.getPortrait();
        _local2 = BitmapUtil._6L(_local2, 10, 10, (_local2.width - 20), (_local2.height - 20));
        this._0H.bitmapData = _local2;
        addChild(this._0H);
        filters = [];
    }
    private var _0H:Bitmap;

}
}//package _Z0

