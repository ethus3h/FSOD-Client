// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._19t

package _GI {
import _11j._1ST;

import com.company.assembleegameclient.objects.GameObject;

import flash.geom.Point;

public class _19t extends _1S9 {

    public function _19t(_arg1:GameObject, _arg2:_1ST, _arg3:Number, _arg4:int) {
        this.start_ = new Point(_arg1.x_, _arg1.y_);
        this._1yN = _arg2;
        this._74 = _arg3;
        this.color_ = _arg4;
    }
    public var start_:Point;
    public var _1yN:_1ST;
    public var _74:Number;
    public var color_:int;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local9:Number;
        var _local10:Point;
        var _local11:Particle;
        x_ = this.start_.x;
        y_ = this.start_.y;
        var _local3 = 200;
        var _local4:int = 100;
        var _local5:Number = (Math.PI / 3);
        var _local6:int = 7;
        var _local7:Number = Math.atan2((this._1yN.y_ - this.start_.y), (this._1yN.x_ - this.start_.x));
        var _local8:int;
        while (_local8 < _local6) {
            _local9 = ((_local7 - (_local5 / 2)) + ((_local8 * _local5) / _local6));
            _local10 = new Point((this.start_.x + (this._74 * Math.cos(_local9))), (this.start_.y + (this._74 * Math.sin(_local9))));
            _local11 = new _06W(_local3, this.color_, _local4, this.start_, _local10);
            map_.addObj(_local11, x_, y_);
            _local8++;
        }
        ;
        return (false);
    }


}
}//package _GI

