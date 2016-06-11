// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_JD._0FP

package _JD {
import _GI._1S9;

import flash.geom.Point;

public class _0FP extends _1S9 {

    public function _0FP(_arg1:int, _arg2:Point, _arg3:Point) {
        this.start_ = _arg2;
        this.end_ = _arg3;
        this.id_ = _arg1;
    }
    public var start_:Point;
    public var end_:Point;
    public var id_:uint;

    override public function update(_arg1:int, _arg2:int):Boolean {
        x_ = this.start_.x;
        y_ = this.start_.y;
        var _local3 = 10000;
        var _local4:_04m = new _04m(this.id_, 1500, this.start_, this.end_);
        map_.addObj(_local4, x_, y_);
        return (false);
    }


}
}//package _JD

