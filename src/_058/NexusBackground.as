// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_058.NexusBackground

package _058 {
import com.company.assembleegameclient.map._18q;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.BitmapDataChannel;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsPath;
import flash.display.IGraphicsData;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Rectangle;

public class NexusBackground extends Background {

    public static const _1DD:Point = new Point(0.01, 0.01);

    public function NexusBackground() {
        this._1pb = new Vector.<Island>();
        this.graphicsData_ = new Vector.<IGraphicsData>();
        this.bitmapFill_ = new GraphicsBitmapFill(null, new Matrix(), true, false);
        this.path_ = new GraphicsPath(_1WM._5r, new Vector.<Number>());
        super();
        this._1hE = new _0Iy(0x0400, 0x0400, false, 0);
        this._1hE.perlinNoise(0x0400, 0x0400, 8, Math.random(), true, true, BitmapDataChannel.BLUE, false, null);
    }
    protected var graphicsData_:Vector.<IGraphicsData>;
    private var _1hE:BitmapData;
    private var _1pb:Vector.<Island>;
    private var bitmapFill_:GraphicsBitmapFill;
    private var path_:GraphicsPath;

    override public function draw(_arg1:_18q, _arg2:int):void {
        this.graphicsData_.length = 0;
        var _local3:Matrix = this.bitmapFill_.matrix;
        _local3.identity();
        _local3.translate((_arg2 * _1DD.x), (_arg2 * _1DD.y));
        _local3.rotate(-(_arg1.angleRad_));
        this.bitmapFill_.bitmapData = this._1hE;
        this.graphicsData_.push(this.bitmapFill_);
        this.path_.data.length = 0;
        var _local4:Rectangle = _arg1._0Ug;
        this.path_.data.push(_local4.left, _local4.top, _local4.right, _local4.top, _local4.right, _local4.bottom, _local4.left, _local4.bottom);
        this.graphicsData_.push(this.path_);
        this.graphicsData_.push(_1WM.END_FILL);
        this._VZ(_arg1, _arg2);
        graphics.clear();
        graphics.drawGraphicsData(this.graphicsData_);
    }

    private function _VZ(_arg1:_18q, _arg2:int):void {
        var _local4:Island;
        var _local3:int;
        while (_local3 < this._1pb.length) {
            _local4 = this._1pb[_local3];
            _local4.draw(_arg1, _arg2, this.graphicsData_);
            _local3++;
        }
        ;
    }


}
}//package _058

import _058.NexusBackground;

import com.company.assembleegameclient.map._18q;
import com.company.util.AssetLibrary;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsPath;
import flash.display.IGraphicsData;
import flash.geom.Matrix;
import flash.geom.Point;

class Island {

    public var center_:Point;
    public var startTime_:int;
    public var bitmapData_:BitmapData;
    private var bitmapFill_:GraphicsBitmapFill;
    private var path_:GraphicsPath;

    public function Island(_arg1:Number, _arg2:Number, _arg3:int):void {
        this.bitmapFill_ = new GraphicsBitmapFill(null, new Matrix(), true, false);
        this.path_ = new GraphicsPath(_1WM._5r, new Vector.<Number>());
        super();
        this.center_ = new Point(_arg1, _arg2);
        this.startTime_ = _arg3;
        this.bitmapData_ = AssetLibrary.getImage("stars");
    }

    public function draw(_arg1:_18q, _arg2:int, _arg3:Vector.<IGraphicsData>):void {
        var _local4:int = (_arg2 - this.startTime_);
        var _local5:Number = (this.center_.x + (_local4 * NexusBackground._1DD.x));
        var _local6:Number = (this.center_.y + (_local4 * NexusBackground._1DD.y));
        var _local7:Matrix = this.bitmapFill_.matrix;
        _local7.identity();
        _local7.translate(_local5, _local6);
        _local7.rotate(-(_arg1.angleRad_));
        this.bitmapFill_.bitmapData = this.bitmapData_;
        _arg3.push(this.bitmapFill_);
        this.path_.data.length = 0;
        var _local8:Point = _local7.transformPoint(new Point(_local5, _local6));
        var _local9:Point = _local7.transformPoint(new Point((_local5 + this.bitmapData_.width), (_local6 + this.bitmapData_.height)));
        this.path_.data.push(_local8.x, _local8.y, _local9.x, _local8.y, _local9.x, _local9.y, _local8.x, _local9.y);
        _arg3.push(this.path_);
        _arg3.push(_1WM.END_FILL);
    }


}

