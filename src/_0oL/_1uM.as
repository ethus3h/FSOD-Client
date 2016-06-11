// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0oL._1uM

package _0oL {
public final class _1uM {

    private static const _M0:Number = (180 / Math.PI);//57.2957795130823
    private static const _l7:Number = (Math.PI / 180);//0.0174532925199433
    private static const _LE:Number = (((60 * 1.1515) * 1.609344) * 1000);//111189.57696

    public static function distance(_arg1:_1uM, _arg2:_1uM):Number {
        var _local3:Number = (_l7 * (_arg1._VI - _arg2._VI));
        var _local4:Number = (_l7 * _arg1._1mG);
        var _local5:Number = (_l7 * _arg2._1mG);
        var _local6:Number = ((Math.sin(_local4) * Math.sin(_local5)) + ((Math.cos(_local4) * Math.cos(_local5)) * Math.cos(_local3)));
        _local6 = ((_M0 * Math.acos(_local6)) * _LE);
        return (_local6);
    }

    public function _1uM(_arg1:Number, _arg2:Number) {
        this._1mG = _arg1;
        this._VI = _arg2;
    }
    public var _1mG:Number;
    public var _VI:Number;

    public function toString():String {
        return ((((("(" + this._1mG) + ", ") + this._VI) + ")"));
    }


}
}//package _0oL

