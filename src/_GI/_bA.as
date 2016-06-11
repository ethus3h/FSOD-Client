// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._bA

package _GI {
public class _bA extends _0rj {

    public function _bA(_arg1:int, _arg2:int, _arg3:int, _arg4:Number, _arg5:Number, _arg6:Number, _arg7:Number) {
        this._0tF = _arg4;
        super(_arg1, _arg2, _arg3, _arg5, _arg6, _arg7);
    }
    private var _0tF:Number;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local4:Number;
        timeLeft_ = (timeLeft_ - _arg2);
        if (timeLeft_ <= 0) {
            return (false);
        }
        ;
        if (((_ml.obj_) && (_ml.obj_.props_.static_))) {
            return (false);
        }
        ;
        var _local3:Number = (Math.random() * this._0tF);
        _local4 = (Math.random() * this._0tF);
        x_ = (x_ + (((dx_ * _local3) * _arg2) / 1000));
        y_ = (y_ + (((dy_ * _local4) * _arg2) / 1000));
        setSize(((timeLeft_ / lifetime_) * initialSize_));
        return (true);
    }


}
}//package _GI

