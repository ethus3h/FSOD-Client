// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._1S8

package _GI {
import flash.geom.Point;

public class _1S8 extends _1S9 {

    public function _1S8(_arg1:Point, _arg2:Number, _arg3:int) {
        this.start_ = _arg1;
        this._06j = _arg2;
        this.color_ = _arg3;
    }
    public var start_:Point;
    public var _06j:Number;
    public var color_:int;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local7:Number;
        var _local8:Point;
        var _local9:Particle;
        x_ = this.start_.x;
        y_ = this.start_.y;
        var _local3 = 200;
        var _local4 = 200;
        var _local5:int = (4 + (this._06j * 2));
        var _local6:int;
        while (_local6 < _local5) {
            _local7 = (((_local6 * 2) * Math.PI) / _local5);
            _local8 = new Point((this.start_.x + (this._06j * Math.cos(_local7))), (this.start_.y + (this._06j * Math.sin(_local7))));
            _local9 = new _06W(_local3, this.color_, _local4, this.start_, _local8);
            map_.addObj(_local9, x_, y_);
            _local6++;
        }
        ;
        return (false);
    }


}
}//package _GI

