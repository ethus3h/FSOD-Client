// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._0NQ

package _07g {
import _0y9._06T;

import _1Ea._1rP;

import _6u._TG;

import _U1._1O0;

import flash.text.TextFieldAutoSize;

public class _0NQ {

    public static const _1Nd:uint = 36;
    public static const _0eY:uint = 22;
    private static const LEFT:String = TextFieldAutoSize.LEFT;//"left"
    private static const CENTER:String = TextFieldAutoSize.CENTER;//"center"
    private static const RIGHT:String = TextFieldAutoSize.RIGHT;//"right"

    private static var _1xy:_1O0;
    private static var _0kE:_1O0;
    private static var _0T3:_1O0;
    private static var _0ui:_1O0;
    private static var _0LO:_1O0;
    private static var _0Oz:_1O0;
    private static var _0bZ:_1O0;
    private static var _0M9:_1O0;
    private static var _4W:_1O0;
    private static var _0sd:_1O0;
    private static var _1CA:_1O0;


    public static function _lE():_1O0 {
        return ((_1xy = ((_1xy) || (_0Cf(_1rP._1Ga, _1Nd, CENTER, true)))));
    }

    public static function _At():_1O0 {
        return ((_1CA = ((_1CA) || (_0Cf(_TG._1z1, _0eY, LEFT)))));
    }

    public static function _qe():_1O0 {
        return ((_0sd = ((_0sd) || (_0Cf(_TG._0uZ, _0eY, RIGHT)))));
    }

    public static function _1X9():_1O0 {
        return ((_4W = ((_4W) || (_0Cf(_TG._t8, _1Nd, CENTER)))));
    }

    public static function _0B1():_1O0 {
        return ((_0T3 = ((_0T3) || (_0Cf(_1rP._rp, _0eY, LEFT)))));
    }

    public static function _1qj():_1O0 {
        return ((_0ui = ((_0ui) || (_0Cf(_1rP._ZH, _0eY, LEFT)))));
    }

    public static function _hC():_1O0 {
        return ((_0kE = ((_0kE) || (_0Cf(_1rP._1Jx, _0eY, RIGHT)))));
    }

    public static function _0Xh():_1O0 {
        return ((_0LO = ((_0LO) || (_0Cf(_1rP._09h, _0eY, RIGHT)))));
    }

    public static function _gJ():_1O0 {
        return ((_0Oz = ((_0Oz) || (_0Cf(_1rP._aA, _0eY, RIGHT)))));
    }

    public static function _ua():_1O0 {
        return ((_0bZ = ((_0bZ) || (_0Cf(_1rP._0UM, _0eY, RIGHT)))));
    }

    public static function _Um():_1O0 {
        return ((_0M9 = ((_0M9) || (_0Cf(_1rP._Tj, _0eY, LEFT)))));
    }

    private static function _0Cf(_arg1:String, _arg2:int, _arg3:String, _arg4:Boolean = false):_1O0 {
        var _local5:_1O0 = new _1O0(_arg1, _arg2, _arg4);
        _local5.setAutoSize(_arg3);
        _local5.setVerticalAlign(_06T.MIDDLE);
        return (_local5);
    }


}
}//package _07g

