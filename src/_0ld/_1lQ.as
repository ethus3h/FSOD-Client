// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._1lQ

package _0ld {
import com.company.util._1WM;

import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;

public class _1lQ extends Sprite {

    public function _1lQ(_arg1:int, _arg2:Array) {
        this._0t6 = new GraphicsSolidFill(0x545454);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        super();
        var _local3:Vector.<IGraphicsData> = new <IGraphicsData>[this._0t6, this.path_, _1WM.END_FILL];
        _1WM._0lo(0, 0, _arg1, _arg1, (_arg1 / 12), _arg2, this.path_);
        graphics.drawGraphicsData(_local3);
    }
    private var _0t6:GraphicsSolidFill;
    private var path_:GraphicsPath;

}
}//package _0ld

