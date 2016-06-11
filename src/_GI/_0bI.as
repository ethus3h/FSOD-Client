// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._0bI

package _GI {
import com.company.assembleegameclient.objects.GameObject;

public class _0bI extends _1S9 {

    public function _0bI(_arg1:GameObject) {
        this.go_ = _arg1;
        this._0YR = 0;
    }
    public var go_:GameObject;
    public var _0YR:int;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local4:Number;
        var _local5:int;
        var _local6:Number;
        var _local7:_MX;
        if (this.go_.map_ == null) {
            return (false);
        }
        ;
        x_ = this.go_.x_;
        y_ = this.go_.y_;
        var _local3:int = (_arg1 - this._0YR);
        if (_local3 > 500) {
            _local4 = ((2 * Math.PI) * Math.random());
            _local5 = ((3 + int((Math.random() * 5))) * 20);
            _local6 = (0.3 + (0.4 * Math.random()));
            _local7 = new _MX(0xFFFFFF, (Math.random() * 0.3), _local5, 1000, (0.1 + (Math.random() * 0.1)), this.go_, _local4, _local6);
            map_.addObj(_local7, (x_ + (_local6 * Math.cos(_local4))), (y_ + (_local6 * Math.sin(_local4))));
            this._0YR = _arg1;
        }
        ;
        return (true);
    }


}
}//package _GI

