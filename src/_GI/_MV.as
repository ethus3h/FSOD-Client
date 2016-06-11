// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._MV

package _GI {
import com.company.assembleegameclient.util._0CH;

public class _MV extends Particle {

    private const _0A4:Number = 0.0025;

    public static function create(_arg1, _arg2:uint, _arg3:Number, _arg4:Number, _arg5:Number, _arg6:Number, _arg7:Number):_MV {
        var _local8:_MV = (_0CH.getObject(_arg1) as _MV);
        if (!_local8) {
            _local8 = new _MV(_arg2, _arg3, _arg4, _arg5, _arg6, _arg7);
        }
        ;
        return (_local8);
    }

    public function _MV(_arg1:uint, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:Number, _arg6:Number) {
        super(_arg1, 0, (75 + (Math.random() * 50)));
        this._Qm = _arg2;
        this.life = (_arg3 * 1000);
        this.lifeVariance = _arg4;
        this.speedVariance = _arg5;
        this.spread = _arg6;
        this._0uw = 0;
        this._1cf = 0;
    }
    public var startTime:int;
    public var speed:Number;
    public var spread:Number;
    public var _Qm:Number;
    public var life:Number;
    public var lifeVariance:Number;
    public var speedVariance:Number;
    public var _015:Number;
    public var _0uw:Number;
    public var _1cf:Number;

    override public function removeFromMap():void {
        super.removeFromMap();
    }

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local3:Number = ((_arg1 - this.startTime) / 1000);
        this._015 = (this._015 - _arg2);
        if (this._015 <= 0) {
            return (false);
        }
        ;
        z_ = (this.speed * _local3);
        if (this.spread > 0) {
            moveTo((x_ + ((this._0uw * _arg2) * this._0A4)), (y_ + ((this._1cf * _arg2) * this._0A4)));
        }
        ;
        return (true);
    }

    public function restart(_arg1:int, _arg2:int):void {
        this.startTime = _arg1;
        var _local3:Number = Math.random();
        this.speed = ((this._Qm - (this._Qm * (_local3 * (1 - this.speedVariance)))) * 10);
        if (this.spread > 0) {
            this._0uw = ((Math.random() * this.spread) - 0.1);
            this._1cf = ((Math.random() * this.spread) - 0.1);
        }
        ;
        var _local4:Number = ((_arg2 - _arg1) / 1000);
        this._015 = (this.life - (this.life * (_local3 * (1 - this.lifeVariance))));
        z_ = (this.speed * _local4);
    }


}
}//package _GI

