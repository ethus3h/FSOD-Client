// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d._0Z2

package com.company.assembleegameclient.engine3d {
import com.company.assembleegameclient.map._18q;
import com.company.util.Trig;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsEndFill;
import flash.display.GraphicsPath;
import flash.display.GraphicsPathCommand;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.geom.Matrix;
import flash.geom.Matrix3D;
import flash.geom.Utils3D;
import flash.geom.Vector3D;

public class _0Z2 {

    private static const _0Eq:Vector.<int> = new <int>[GraphicsPathCommand.MOVE_TO, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO];
    private static const END_FILL:GraphicsEndFill = new GraphicsEndFill();

    public function _0Z2(_arg1:Number) {
        this.size_ = _arg1;
    }
    public var size_:Number;
    public var _1Pg:Vector3D;
    private var data_:Vector.<Number> = new Vector.<Number>();
    private var path_:GraphicsPath = new GraphicsPath(_0Eq, data_);
    private var bitmapFill_:GraphicsBitmapFill = new GraphicsBitmapFill(null, new Matrix(), false, false);
    private var _153:GraphicsSolidFill = new GraphicsSolidFill(0, 1);

    public function setSize(_arg1:Number):void {
        this.size_ = _arg1;
    }

    public function draw(_arg1:Vector.<IGraphicsData>, _arg2:Vector3D, _arg3:Number, _arg4:Matrix3D, _arg5:_18q, _arg6:BitmapData, _arg7:uint = 0):void {
        var _local10:Number;
        var _local11:Number;
        var _local12:Matrix;
        this._1Pg = Utils3D.projectVector(_arg4, _arg2);
        if (this._1Pg.w < 0) {
            return;
        }
        ;
        var _local8:Number = (this._1Pg.w * Math.sin(((_arg5._10c.fieldOfView / 2) * Trig._1HC)));
        var _local9:Number = (this.size_ / _local8);
        this.data_.length = 0;
        if (_arg3 == 0) {
            this.data_.push((this._1Pg.x - _local9), (this._1Pg.y - _local9), (this._1Pg.x + _local9), (this._1Pg.y - _local9), (this._1Pg.x + _local9), (this._1Pg.y + _local9), (this._1Pg.x - _local9), (this._1Pg.y + _local9));
        } else {
            _local10 = Math.cos(_arg3);
            _local11 = Math.sin(_arg3);
            this.data_.push((this._1Pg.x + ((_local10 * -(_local9)) + (_local11 * -(_local9)))), (this._1Pg.y + ((_local11 * -(_local9)) - (_local10 * -(_local9)))), (this._1Pg.x + ((_local10 * _local9) + (_local11 * -(_local9)))), (this._1Pg.y + ((_local11 * _local9) - (_local10 * -(_local9)))), (this._1Pg.x + ((_local10 * _local9) + (_local11 * _local9))), (this._1Pg.y + ((_local11 * _local9) - (_local10 * _local9))), (this._1Pg.x + ((_local10 * -(_local9)) + (_local11 * _local9))), (this._1Pg.y + ((_local11 * -(_local9)) - (_local10 * _local9))));
        }
        ;
        if (_arg6 != null) {
            this.bitmapFill_.bitmapData = _arg6;
            _local12 = this.bitmapFill_.matrix;
            _local12.identity();
            _local12.scale(((2 * _local9) / _arg6.width), ((2 * _local9) / _arg6.height));
            _local12.translate(-(_local9), -(_local9));
            _local12.rotate(_arg3);
            _local12.translate(this._1Pg.x, this._1Pg.y);
            _arg1.push(this.bitmapFill_);
        } else {
            this._153.color = _arg7;
            _arg1.push(this._153);
        }
        ;
        _arg1.push(this.path_);
        _arg1.push(END_FILL);
    }


}
}//package com.company.assembleegameclient.engine3d

