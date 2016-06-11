// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj.FusionStrength

package _0Sj {
import _0Mr._5R;

import _0y9._06T;

import flash.display.Sprite;

public class FusionStrength extends Sprite {

    public static const _0bD:uint = 8768801;
    public static const _T7:uint = 0xFF0000;
    public static const _C0:int = 0xB3B3B3;
    public static const LOW:String = "FusionStrength.Low";
    public static const _zJ:String = "FusionStrength.Bad";
    public static const _0I:String = "FusionStrength.Good";
    public static const _0Iz:String = "FusionStrength.Great";
    public static const _0Sz:String = "FusionStrength.Fantastic";
    public static const _0dX:String = "FusionStrength.Maxed";
    public static const NONE:String = "FusionStrength.None";
    private static const _1U6:Number = 16;

    private static function _7O(_arg1:Number):String {
        if (_0fI(_arg1)) {
            return (_0dX);
        }
        ;
        if (_arg1 > 0.8) {
            return (_0Sz);
        }
        ;
        if (_arg1 > 0.6) {
            return (_0Iz);
        }
        ;
        if (_arg1 > 0.4) {
            return (_0I);
        }
        ;
        if (_arg1 > 0.2) {
            return (LOW);
        }
        ;
        return (_zJ);
    }

    private static function _0fI(_arg1:Number):Boolean {
        return ((Math.abs((_arg1 - 1)) < 0.001));
    }

    private static function _1x4(_arg1:Number):Boolean {
        return ((_arg1 < 0.2));
    }

    public function FusionStrength():void {
        addChild(_1kR._0gu());
        this._1pL();
        this._ld();
    }
    public var _017:_06T;

    public function reset():void {
        this._017.setStringBuilder(new _5R().setParams(NONE));
        this._017.setColor(_C0);
    }

    public function _0Oa(_arg1:Number):void {
        var _local2:String = _7O(_arg1);
        this._017.setStringBuilder(new _5R().setParams(_local2));
        this._4Q(_arg1);
    }

    private function _1pL():void {
        var _local1:_06T = _1kR.makeText();
        _local1.x = _1U6;
        _local1.y = this._Dk();
        addChild(_local1);
    }

    private function _ld():void {
        this._017 = _1kR._0Yu();
        this._017.x = (width - _1U6);
        this._017.y = this._Dk();
        this._017.setStringBuilder(new _5R().setParams(NONE));
        this._017.setColor(_C0);
        addChild(this._017);
    }

    private function _Dk():Number {
        return ((height / 2));
    }

    private function _4Q(_arg1:Number):void {
        if (_0fI(_arg1)) {
            this._017.setColor(_0bD);
        } else {
            if (_1x4(_arg1)) {
                this._017.setColor(_T7);
            } else {
                this._017.setColor(_C0);
            }
            ;
        }
        ;
    }


}
}//package _0Sj

