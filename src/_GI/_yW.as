// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._yW

package _GI {
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.util._0CH;

public class _yW extends _1S9 {

    private static const _Ob:Number = 400;

    public function _yW(_arg1:GameObject, _arg2:_0oF) {
        this.go_ = _arg1;
        this._0wq = _arg2;
        this._0A2 = (((1 - _arg2.rate) * _Ob) + 1);
        this._mm = ("BubbleEffect_" + Math.random());
    }
    public var go_:GameObject;
    public var lastUpdate_:int = -1;
    public var _0A2:Number;
    private var _mm:String;
    private var _0wq:_0oF;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local3:int;
        var _local4:int;
        var _local5:int;
        var _local6:Number;
        var _local7:Number;
        var _local8:Number;
        var _local9:Number;
        var _local11:_MV;
        var _local12:Number;
        var _local13:Number;
        if (this.go_.map_ == null) {
            return (false);
        }
        ;
        if (!this.lastUpdate_) {
            this.lastUpdate_ = _arg1;
            return (true);
        }
        ;
        _local3 = int((this.lastUpdate_ / this._0A2));
        _local4 = int((_arg1 / this._0A2));
        _local8 = this.go_.x_;
        _local9 = this.go_.y_;
        if (this.lastUpdate_ < 0) {
            this.lastUpdate_ = Math.max(0, (_arg1 - _Ob));
        }
        ;
        x_ = _local8;
        y_ = _local9;
        var _local10:int = _local3;
        while (_local10 < _local4) {
            _local5 = (_local10 * this._0A2);
            _local11 = _MV.create(this._mm, this._0wq.color, this._0wq.speed, this._0wq.life, this._0wq.lifeVariance, this._0wq.speedVariance, this._0wq.spread);
            _local11.restart(_local5, _arg1);
            _local6 = (Math.random() * Math.PI);
            _local7 = (Math.random() * 0.4);
            _local12 = (_local8 + (_local7 * Math.cos(_local6)));
            _local13 = (_local9 + (_local7 * Math.sin(_local6)));
            map_.addObj(_local11, _local12, _local13);
            _local10++;
        }
        ;
        this.lastUpdate_ = _arg1;
        return (true);
    }

    override public function removeFromMap():void {
        super.removeFromMap();
        _0CH.dump(this._mm);
    }


}
}//package _GI

