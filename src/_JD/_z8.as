// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_JD._z8

package _JD {
import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.BasicObject;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsPath;
import flash.display.IGraphicsData;
import flash.geom.Matrix;

public class _z8 extends BasicObject {

    public function _z8(_arg1:BitmapData, _arg2:Number) {
        this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
        this.path_ = new GraphicsPath(_1WM._5r, null);
        this.vS_ = new Vector.<Number>();
        this._16d = new Matrix();
        super();
        _Ci = false;
        objectId_ = _1LK();
        this._0L1 = _arg1;
        z_ = _arg2;
    }
    public var size_:int;
    public var _0L1:BitmapData;
    public var _0fR:Number = 0;
    protected var bitmapFill_:GraphicsBitmapFill;
    protected var path_:GraphicsPath;
    protected var vS_:Vector.<Number>;
    protected var _16d:Matrix;
    protected var _An:Number = 0;

    override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var texture:BitmapData;
        var w:int;
        var h:int;
        var graphicsData:Vector.<IGraphicsData> = _arg1;
        var camera:_18q = _arg2;
        var time:int = _arg3;
        try {
            texture = this._0L1;
            w = texture.width;
            h = texture.height;
            if (((!(w)) || (!(h)))) {
                return;
            }
            ;
            this.vS_.length = 0;
            this.vS_.push((_1Pg[3] - (w / 2)), (_1Pg[4] - (h / 2)), (_1Pg[3] + (w / 2)), (_1Pg[4] - (h / 2)), (_1Pg[3] + (w / 2)), (_1Pg[4] + (h / 2)), (_1Pg[3] - (w / 2)), (_1Pg[4] + (h / 2)));
            this.path_.data = this.vS_;
            this.bitmapFill_.bitmapData = texture;
            this._16d.identity();
            if (((this._0fR) || (this._An))) {
                if (this._An) {
                    this._0fR = (this._0fR + this._An);
                }
                ;
                this._16d.translate((-(w) / 2), (-(h) / 2));
                this._16d.rotate(this._0fR);
                this._16d.translate((w / 2), (h / 2));
            }
            ;
            this._16d.translate(this.vS_[0], this.vS_[1]);
            this.bitmapFill_.matrix = this._16d;
            graphicsData.push(this.bitmapFill_);
            graphicsData.push(this.bitmapFill_);
            graphicsData.push(this.path_);
            graphicsData.push(_1WM.END_FILL);
        } catch (error:Error) {
            return;
        }
        ;
    }

    public function moveTo(_arg1:Number, _arg2:Number):Boolean {
        var _local3:Square;
        _local3 = map_.getSquare(_arg1, _arg2);
        if (!_local3) {
            return (false);
        }
        ;
        x_ = _arg1;
        y_ = _arg2;
        _ml = _local3;
        return (true);
    }

    public function setSize(_arg1:int):void {
        this.size_ = ((_arg1 / 100) * 5);
    }


}
}//package _JD

