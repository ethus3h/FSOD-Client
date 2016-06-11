// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._0n3

package _GI {
import _11j._1ST;

import com.company.assembleegameclient.objects.GameObject;

import flash.geom.Point;

public class _0n3 extends _1S9 {

    public function _0n3(_arg1:GameObject, _arg2:_1ST, _arg3:_1ST, _arg4:int) {
        this.center_ = new Point(_arg2.x_, _arg2.y_);
        this._0v2 = new Point(_arg3.x_, _arg3.y_);
        this.color_ = _arg4;
    }
    public var center_:Point;
    public var _0v2:Point;
    public var color_:int;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local8:Number;
        var _local9:Point;
        var _local10:Particle;
        x_ = this.center_.x;
        y_ = this.center_.y;
        var _local3:Number = Point.distance(this.center_, this._0v2);
        var _local4 = 300;
        var _local5 = 200;
        var _local6:int = 24;
        var _local7:int;
        while (_local7 < _local6) {
            _local8 = (((_local7 * 2) * Math.PI) / _local6);
            _local9 = new Point((this.center_.x + (_local3 * Math.cos(_local8))), (this.center_.y + (_local3 * Math.sin(_local8))));
            _local10 = new _06W(_local4, this.color_, _local5, _local9, this.center_);
            map_.addObj(_local10, x_, y_);
            _local7++;
        }
        ;
        return (false);
    }


}
}//package _GI

