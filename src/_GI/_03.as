// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._0-3

package _GI {
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.BasicObject;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsPath;
import flash.display.IGraphicsData;
import flash.geom.Matrix;

public class _03 extends BasicObject {

    public function _03(_arg1:BitmapData) {
        this.vS_ = new Vector.<Number>(8);
        this._16d = new Matrix();
        this.path_ = new GraphicsPath(_1WM._5r, null);
        this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
        super();
        this.bitmapFill_.bitmapData = _arg1;
        objectId_ = _1LK();
    }
    public var _015:Number = 0;
    public var _0XV:Number;
    public var _1oM:Number;
    public var _01x:Number;
    protected var vS_:Vector.<Number>;
    protected var _16d:Matrix;
    protected var path_:GraphicsPath;
    protected var bitmapFill_:GraphicsBitmapFill;

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var _local4:Number = (this.bitmapFill_.bitmapData.width / 2);
        var _local5:Number = (this.bitmapFill_.bitmapData.height / 2);
        this.vS_[6] = (this.vS_[0] = (_1Pg[3] - _local4));
        this.vS_[3] = (this.vS_[1] = (_1Pg[4] - _local5));
        this.vS_[4] = (this.vS_[2] = (_1Pg[3] + _local4));
        this.vS_[7] = (this.vS_[5] = (_1Pg[4] + _local5));
        this.path_.data = this.vS_;
        this._16d.identity();
        this._16d.translate(this.vS_[0], this.vS_[1]);
        this.bitmapFill_.matrix = this._16d;
        _arg1.push(this.bitmapFill_);
        _arg1.push(this.path_);
        _arg1.push(_1WM.END_FILL);
    }

    override public function removeFromMap():void {
        map_ = null;
        _ml = null;
    }

    public function initialize(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:int):void {
        this._015 = _arg1;
        this._0XV = _arg2;
        this._1oM = _arg3;
        this._01x = _arg4;
        z_ = _arg5;
    }


}
}//package _GI

