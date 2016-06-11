// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._iQ

package _GI {
import _11j._1ST;

import com.company.assembleegameclient.objects.GameObject;

import flash.geom.Point;

public class _iQ extends _1S9 {

    public function _iQ(_arg1:GameObject, _arg2:_1ST, _arg3:_1ST, _arg4:int) {
        this.center_ = new Point(_arg2.x_, _arg2.y_);
        this._0v2 = new Point(_arg3.x_, _arg3.y_);
        this.color_ = _arg4;
    }
    public var center_:Point;
    public var _0v2:Point;
    public var color_:int;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local7:Number;
        var _local8:Point;
        var _local9:Particle;
        x_ = this.center_.x;
        y_ = this.center_.y;
        var _local3:Number = Point.distance(this.center_, this._0v2);
        var _local4:int = 100;
        var _local5:int = 24;
        var _local6:int;
        while (_local6 < _local5) {
            _local7 = (((_local6 * 2) * Math.PI) / _local5);
            _local8 = new Point((this.center_.x + (_local3 * Math.cos(_local7))), (this.center_.y + (_local3 * Math.sin(_local7))));
            _local9 = new _06W(_local4, this.color_, (100 + (Math.random() * 200)), this.center_, _local8);
            map_.addObj(_local9, x_, y_);
            _local6++;
        }
        ;
        return (false);
    }


}
}//package _GI

