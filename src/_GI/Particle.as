// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI.Particle

package _GI {
import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.BasicObject;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsPath;
import flash.display.IGraphicsData;
import flash.geom.Matrix;

public class Particle extends BasicObject {

    public function Particle(_arg1:uint, _arg2:Number, _arg3:int) {
        this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
        this.path_ = new GraphicsPath(_1WM._5r, null);
        this.vS_ = new Vector.<Number>();
        this._16d = new Matrix();
        super();
        objectId_ = _1LK();
        this._0CD(_arg2);
        this.setColor(_arg1);
        this.setSize(_arg3);
    }
    public var size_:int;
    public var color_:uint;
    protected var bitmapFill_:GraphicsBitmapFill;
    protected var path_:GraphicsPath;
    protected var vS_:Vector.<Number>;
    protected var _16d:Matrix;

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var _local4:BitmapData = TextureRedrawer.redrawSolidSquare(this.color_, this.size_);
        var _local5:int = _local4.width;
        var _local6:int = _local4.height;
        this.vS_.length = 0;
        this.vS_.push((_1Pg[3] - (_local5 / 2)), (_1Pg[4] - (_local6 / 2)), (_1Pg[3] + (_local5 / 2)), (_1Pg[4] - (_local6 / 2)), (_1Pg[3] + (_local5 / 2)), (_1Pg[4] + (_local6 / 2)), (_1Pg[3] - (_local5 / 2)), (_1Pg[4] + (_local6 / 2)));
        this.path_.data = this.vS_;
        this.bitmapFill_.bitmapData = _local4;
        this._16d.identity();
        this._16d.translate(this.vS_[0], this.vS_[1]);
        this.bitmapFill_.matrix = this._16d;
        _arg1.push(this.bitmapFill_);
        _arg1.push(this.path_);
        _arg1.push(_1WM.END_FILL);
    }

    public function moveTo(_arg1:Number, _arg2:Number):Boolean {
        var _local3:Square;
        _local3 = map_.getSquare(_arg1, _arg2);
        if (_local3 == null) {
            return (false);
        }
        ;
        x_ = _arg1;
        y_ = _arg2;
        _ml = _local3;
        return (true);
    }

    public function _jO(_arg1:Number, _arg2:Number):Boolean {
        x_ = _arg1;
        y_ = _arg2;
        return (true);
    }

    public function setColor(_arg1:uint):void {
        this.color_ = _arg1;
    }

    public function _0CD(_arg1:Number):void {
        z_ = _arg1;
    }

    public function setSize(_arg1:int):void {
        this.size_ = ((_arg1 / 100) * 5);
    }


}
}//package _GI

