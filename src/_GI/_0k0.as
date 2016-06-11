// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._0k0

package _GI {
import _0pG.Animations;

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
import flash.geom.Vector3D;

public class _0k0 extends BasicObject {

    public function _0k0(_arg1:_0ZY) {
        this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
        this.path_ = new GraphicsPath(_1WM._5r, null);
        this.vS_ = new Vector.<Number>();
        this._0rI = new Vector.<Number>();
        this._16d = new Matrix();
        super();
        objectId_ = _1LK();
        this.size_ = _arg1.size_;
        z_ = _arg1.z_;
        this._dy = _arg1.duration_;
        this.texture_ = _arg1._1Ip.getTexture(objectId_);
        if (_arg1._on != null) {
            this._9k = new Animations(_arg1._on);
        }
        ;
        this.moveVec_ = new Vector3D();
        var _local2:Number = ((Math.PI * 2) * Math.random());
        this.moveVec_.x = ((Math.cos(_local2) * 0.1) * 5);
        this.moveVec_.y = ((Math.sin(_local2) * 0.1) * 5);
    }
    public var texture_:BitmapData = null;
    public var _9k:Animations = null;
    public var size_:int;
    public var _dy:Number;
    public var moveVec_:Vector3D;
    protected var bitmapFill_:GraphicsBitmapFill;
    protected var path_:GraphicsPath;
    protected var vS_:Vector.<Number>;
    protected var _0rI:Vector.<Number>;
    protected var _16d:Matrix;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local3:Number = (_arg2 / 1000);
        this._dy = (this._dy - _local3);
        if (this._dy <= 0) {
            return (false);
        }
        ;
        x_ = (x_ + (this.moveVec_.x * _local3));
        y_ = (y_ + (this.moveVec_.y * _local3));
        return (true);
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var _local7:BitmapData;
        var _local4:BitmapData = this.texture_;
        if (this._9k != null) {
            _local7 = this._9k.getTexture(_arg3);
            if (_local7 != null) {
                _local4 = _local7;
            }
            ;
        }
        ;
        _local4 = TextureRedrawer.redraw(_local4, this.size_, true, 0);
        var _local5:int = _local4.width;
        var _local6:int = _local4.height;
        this.vS_.length = 0;
        this.vS_.push((_1Pg[3] - (_local5 / 2)), (_1Pg[4] - _local6), (_1Pg[3] + (_local5 / 2)), (_1Pg[4] - _local6), (_1Pg[3] + (_local5 / 2)), _1Pg[4], (_1Pg[3] - (_local5 / 2)), _1Pg[4]);
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
        var _local3:Square = map_.getSquare(_arg1, _arg2);
        if (_local3 == null) {
            return (false);
        }
        ;
        x_ = _arg1;
        y_ = _arg2;
        _ml = _local3;
        return (true);
    }


}
}//package _GI

