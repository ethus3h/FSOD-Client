// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Em._i9

package _1Em {
import _0Mr._1vN;

import _0y9._06T;

import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.GameObject;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.filters.GlowFilter;
import flash.geom.Matrix;
import flash.geom.Point;

public class _i9 extends Sprite implements _wx {

    public const _0Xc:int = 40;

    public function _i9(_arg1:GameObject, _arg2:uint, _arg3:int, _arg4:int = 0) {
        this.go_ = _arg1;
        this._1Sy = new Point(0, (((-(_arg1.texture_.height) * (_arg1.size_ / 100)) * 5) - 20));
        this.color_ = _arg2;
        this.lifetime_ = _arg3;
        this._0lR = _arg4;
        this._L6 = new _06T().setSize(24).setColor(_arg2).setBold(true);
        this._L6.filters = [new GlowFilter(0, 1, 4, 4, 2, 1)];
        addChild(this._L6);
        visible = false;
    }
    public var go_:GameObject;
    public var _1Sy:Point;
    public var color_:uint;
    public var lifetime_:int;
    public var _0lR:int;
    private var startTime_:int = 0;
    private var _L6:_06T;

    public function draw(_arg1:_18q, _arg2:int):Boolean {
        if (this.startTime_ == 0) {
            this.startTime_ = (_arg2 + this._0lR);
        }
        ;
        if (_arg2 < this.startTime_) {
            visible = false;
            return (true);
        }
        ;
        var _local3:int = (_arg2 - this.startTime_);
        if ((((_local3 > this.lifetime_)) || (((!((this.go_ == null))) && ((this.go_.map_ == null)))))) {
            return (false);
        }
        ;
        if ((((this.go_ == null)) || (!(this.go_._07t)))) {
            visible = false;
            return (true);
        }
        ;
        visible = true;
        x = ((((this.go_) != null) ? this.go_._1Pg[0] : 0) + (((this._1Sy) != null) ? this._1Sy.x : 0));
        var _local4:Number = ((_local3 / this.lifetime_) * this._0Xc);
        y = (((((this.go_) != null) ? this.go_._1Pg[1] : 0) + (((this._1Sy) != null) ? this._1Sy.y : 0)) - _local4);
        return (true);
    }

    public function _1fD():GameObject {
        return (this.go_);
    }

    public function dispose():void {
        parent.removeChild(this);
    }

    public function setStringBuilder(_arg1:_1vN):void {
        this._L6.textChanged.add(this.onTextChanged);
        this._L6.setStringBuilder(_arg1);
    }

    private function onTextChanged():void {
        var _local2:Bitmap;
        var _local1:BitmapData = new BitmapData(this._L6.width, this._L6.height, true, 0);
        _local2 = new Bitmap(_local1);
        _local1.draw(this._L6, new Matrix());
        _local2.x = (_local2.x - (_local2.width * 0.5));
        _local2.y = (_local2.y - (_local2.height * 0.5));
        addChild(_local2);
        removeChild(this._L6);
        this._L6 = null;
    }


}
}//package _1Em

