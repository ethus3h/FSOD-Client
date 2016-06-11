// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0y9._JP

package _0y9 {
import _0Mr._1vN;

import _6u._00t;
import _6u._1x1;

import com.company.util.PointUtil;

import flash.display.BitmapData;
import flash.filters.GlowFilter;
import flash.geom.Matrix;
import flash.text.TextFieldAutoSize;

public class _JP {

    private const _1Q3:GlowFilter = new GlowFilter(0, 1, 3, 3, 2, 1);

    public function _JP(_arg1:_00t, _arg2:_1x1) {
        this._0bV = new _06T();
        this._0bV._1qt(_arg1._0OE());
        this._0bV._0Q7(_arg2._1Nu());
        this._0bV._qO(_arg2._04());
    }
    public var padding:int = 0;
    private var _0bV:_06T;

    public function make(_arg1:_1vN, _arg2:int, _arg3:uint, _arg4:Boolean, _arg5:Matrix, _arg6:Boolean):BitmapData {
        this._0R0(_arg2, _arg3, _arg4, _arg1);
        return (this._03g(_arg6, _arg5));
    }

    private function _0R0(_arg1:int, _arg2:uint, _arg3:Boolean, _arg4:_1vN):void {
        this._0bV.setSize(_arg1).setColor(_arg2).setBold(_arg3).setAutoSize(TextFieldAutoSize.LEFT);
        this._0bV.setStringBuilder(_arg4);
    }

    private function _03g(_arg1:Boolean, _arg2:Matrix):BitmapData {
        var _local3:int = ((this._0bV.width + this.padding) + _arg2.tx);
        var _local4:int = (this._0bV.height + this.padding);
        var _local5:BitmapData = new _0Iy(_local3, _local4, true, 0);
        _local5.draw(this._0bV, _arg2);
        ((_arg1) && (_local5.applyFilter(_local5, _local5.rect, PointUtil._0Q4, this._1Q3)));
        return (_local5);
    }


}
}//package _0y9

