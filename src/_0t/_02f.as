// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._02f

package _0t {
import _Z0.ToolTip;

import com.company.assembleegameclient.map._0d7;
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.map._IO;
import com.company.assembleegameclient.map._Ip;

import flash.display.BitmapData;
import flash.display.IGraphicsData;
import flash.display.Shape;
import flash.geom.Rectangle;

class _02f extends _1pu {

    private static const _0cM:Vector.<Number> = new <Number>[0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0];
    private static const _1s7:Number = 0.6;

    public function _02f(_arg1:XML) {
        super(int(_arg1.@type));
        this._GQ = _arg1;
        var _local2:Vector.<IGraphicsData> = new Vector.<IGraphicsData>();
        var _local3:_18q = new _18q();
        _local3.configure(0.5, 0.5, 12, (Math.PI / 4), new Rectangle(-100, -100, 200, 200));
        var _local4:BitmapData = _0d7.getBitmapData(type_);
        var _local5:_IO = new _IO(_local4, _0cM, 0, 0, _Ip._1sf, 0, 0);
        _local5.draw(_local2, _local3, 0);
        this._hZ = new Shape();
        this._hZ.graphics.drawGraphicsData(_local2);
        this._hZ.scaleX = (this._hZ.scaleY = _1s7);
        this._hZ.x = (WIDTH / 2);
        this._hZ.y = (HEIGHT / 2);
        addChild(this._hZ);
    }
    public var _GQ:XML;
    private var _hZ:Shape;

    override protected function getToolTip():ToolTip {
        return (new _0M(this._GQ));
    }


}
}//package _0t-

