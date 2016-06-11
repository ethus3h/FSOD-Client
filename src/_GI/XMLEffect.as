// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI.XMLEffect

package _GI {
import com.company.assembleegameclient.objects.GameObject;

public class XMLEffect extends _1S9 {

    public function XMLEffect(_arg1:GameObject, _arg2:_0oF) {
        this.go_ = _arg1;
        this._038 = _rA._x9[_arg2.particle];
        this._2e = _arg2.cooldown;
        this._1lS = 0;
    }
    private var go_:GameObject;
    private var _038:_0ZY;
    private var _2e:Number;
    private var _1lS:Number;

    override public function update(_arg1:int, _arg2:int):Boolean {
        if (this.go_.map_ == null) {
            return (false);
        }
        ;
        var _local3:Number = (_arg2 / 1000);
        this._1lS = (this._1lS - _local3);
        if (this._1lS >= 0) {
            return (true);
        }
        ;
        this._1lS = this._2e;
        map_.addObj(new _0k0(this._038), this.go_.x_, this.go_.y_);
        return (true);
    }


}
}//package _GI

