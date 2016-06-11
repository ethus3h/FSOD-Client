// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._0Y1

package _GI {
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;

public class _0Y1 extends _1S9 {

    public static function _1R(_arg1:_0oF, _arg2:GameObject):_0Y1 {
        return (new _0Y1(_arg1, _arg2));
    }

    public function _0Y1(_arg1:_0oF, _arg2:GameObject) {
        this._1ul = _arg2;
        this._0Fk = new Vector.<_03>();
        this._Q5 = new Vector.<_03>();
        this._06p = _arg1;
        if (this._06p.bitmapFile) {
            this.bitmapData = AssetLibrary._Rb(this._06p.bitmapFile, this._06p.bitmapIndex);
            this.bitmapData = TextureRedrawer.redraw(this.bitmapData, this._06p.size, true, 0);
        } else {
            this.bitmapData = TextureRedrawer.redrawSolidSquare(this._06p.color, this._06p.size);
        }
        ;
    }
    private var _0Fk:Vector.<_03>;
    private var _Q5:Vector.<_03>;
    private var _1ul:GameObject;
    private var _d3:Number = 0;
    private var _0Eg:Number = 0;
    private var _06p:_0oF;
    private var bitmapData:BitmapData;
    private var _AA:Number;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local4:Number;
        var _local9:_03;
        var _local10:_03;
        var _local3:Number = (_arg1 / 1000);
        _local4 = (_arg2 / 1000);
        if (this._1ul.map_ == null) {
            return (false);
        }
        ;
        x_ = this._1ul.x_;
        y_ = this._1ul.y_;
        z_ = (this._1ul.z_ + this._06p.zOffset);
        this._0Eg = (this._0Eg + _local4);
        var _local5:Number = (this._06p.rate * this._0Eg);
        var _local6:int = (_local5 - this._d3);
        var _local7:int;
        while (_local7 < _local6) {
            if (this._0Fk.length) {
                _local9 = this._0Fk.pop();
            } else {
                _local9 = new _03(this.bitmapData);
            }
            ;
            _local9.initialize((this._06p.life + (this._06p.lifeVariance * ((2 * Math.random()) - 1))), (this._06p.speed + (this._06p.speedVariance * ((2 * Math.random()) - 1))), (this._06p.speed + (this._06p.speedVariance * ((2 * Math.random()) - 1))), (this._06p.rise + (this._06p.riseVariance * ((2 * Math.random()) - 1))), z_);
            map_.addObj(_local9, (x_ + (this._06p.rangeX * ((2 * Math.random()) - 1))), (y_ + (this._06p.rangeY * ((2 * Math.random()) - 1))));
            this._Q5.push(_local9);
            _local7++;
        }
        ;
        this._d3 = (this._d3 + _local6);
        var _local8:int;
        while (_local8 < this._Q5.length) {
            _local10 = this._Q5[_local8];
            _local10._015 = (_local10._015 - _local4);
            if (_local10._015 <= 0) {
                this._Q5.splice(_local8, 1);
                map_.removeObj(_local10.objectId_);
                _local8--;
                this._0Fk.push(_local10);
            } else {
                _local10._01x = (_local10._01x + (this._06p.riseAcc * _local4));
                _local10.x_ = (_local10.x_ + (_local10._0XV * _local4));
                _local10.y_ = (_local10.y_ + (_local10._1oM * _local4));
                _local10.z_ = (_local10.z_ + (_local10._01x * _local4));
            }
            ;
            _local8++;
        }
        ;
        return (true);
    }

    override public function removeFromMap():void {
        var _local1:_03;
        for each (_local1 in this._Q5) {
            map_.removeObj(_local1.objectId_);
        }
        ;
        this._Q5 = null;
        this._0Fk = null;
        super.removeFromMap();
    }


}
}//package _GI

