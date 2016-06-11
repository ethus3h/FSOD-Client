// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1E-._1ne

package _1E {
import _1Fr._1vE;

import _1Sm._sy;

import flash.utils.Dictionary;

public class _1ne {

    public static const _0ip:int = 2594;
    public static const _08W:int = 254;
    public static const _0Kh:int = 2595;
    public static const _os:int = 0xFF;

    public static function _1Kn(_arg1:int):int {
        switch (_arg1) {
            case _0ip:
                return (_08W);
            case _0Kh:
                return (_os);
        }
        ;
        return (-1);
    }

    public function _1ne() {
        this._1YP = new Dictionary();
        this._te = new _sy(int);
    }
    public var _1YP:Dictionary;
    public var _te:_sy;

    public function _0bf(_arg1:XML):void {
        var _local6:int;
        var _local7:_1vE;
        var _local2:int = _arg1.PotionPurchaseCooldown;
        var _local3:int = _arg1.PotionPurchaseCostCooldown;
        var _local4:int = _arg1.MaxStackablePotions;
        var _local5:Array = new Array();
        for each (_local6 in _arg1.PotionPurchaseCosts.cost) {
            _local5.push(_local6);
        }
        ;
        _local7 = new _1vE();
        _local7._0F = _local2;
        _local7._1vB = _local3;
        _local7._0al = _local4;
        _local7.objectId = _0ip;
        _local7.position = 0;
        _local7._0XF = _local5;
        this._1YP[_local7.position] = _local7;
        _local7.update.add(this.update);
        _local7 = new _1vE();
        _local7._0F = _local2;
        _local7._1vB = _local3;
        _local7._0al = _local4;
        _local7.objectId = _0Kh;
        _local7.position = 1;
        _local7._0XF = _local5;
        this._1YP[_local7.position] = _local7;
        _local7.update.add(this.update);
    }

    public function _9s(_arg1:uint):_1vE {
        var _local2:String;
        for (_local2 in this._1YP) {
            if (this._1YP[_local2].objectId == _arg1) {
                return (this._1YP[_local2]);
            }
            ;
        }
        ;
        return (null);
    }

    private function update(_arg1:int):void {
        this._te.dispatch(_arg1);
    }


}
}//package _1E-

