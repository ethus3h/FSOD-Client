// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._0OC

package _GI {
import _11j._1ST;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.util._1Os;

import flash.geom.Point;

public class _0OC extends _1S9 {

    public function _0OC(_arg1:GameObject, _arg2:_1ST, _arg3:int) {
        this.start_ = new Point(_arg1.x_, _arg1.y_);
        this.end_ = new Point(_arg2.x_, _arg2.y_);
        this.color_ = _arg3;
    }
    public var start_:Point;
    public var end_:Point;
    public var color_:int;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local5:Point;
        var _local6:Particle;
        x_ = this.start_.x;
        y_ = this.start_.y;
        var _local3:int = 30;
        var _local4:int;
        while (_local4 < _local3) {
            _local5 = Point.interpolate(this.start_, this.end_, (_local4 / _local3));
            _local6 = new _0rj(100, this.color_, 700, 0.5, _1Os._1Bg(1), _1Os._1Bg(1));
            map_.addObj(_local6, _local5.x, _local5.y);
            _local4++;
        }
        ;
        return (false);
    }


}
}//package _GI

