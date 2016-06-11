// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._R9

package _GI {
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.util._1Os;

public class _R9 extends _1S9 {

    public function _R9(_arg1:GameObject, _arg2:int) {
        this.go_ = _arg1;
        this.color_ = _arg2;
    }
    public var go_:GameObject;
    public var color_:int;

    override public function update(_arg1:int, _arg2:int):Boolean {
        if (this.go_.map_ == null) {
            return (false);
        }
        ;
        x_ = this.go_.x_;
        y_ = this.go_.y_;
        var _local3:int = 10;
        var _local4:int;
        while (_local4 < _local3) {
            map_.addObj(new _0rj(100, this.color_, 400, 0.75, _1Os._1Bg(4), _1Os._1Bg(4)), x_, y_);
            _local4++;
        }
        ;
        return (false);
    }


}
}//package _GI

