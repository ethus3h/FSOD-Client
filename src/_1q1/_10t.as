// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1q1._10t

package _1q1 {
import _20I._0Hi;
import _20I._11R;
import _20I._16S;
import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import _6u._TG;

import kabam.rotmg.assets.model._1ZZ;

public class _10t {

    [Inject]
    public var data:XML;
    [Inject]
    public var classes:_1Z;


    public function execute():void {
        var _local2:XML;
        var _local1:XMLList = this.data.Object;
        for each (_local2 in _local1) {
            this._0IH(_local2);
        }
        ;
    }

    private function _0IH(_arg1:XML):void {
        var _local2:int = _arg1.@type;
        var _local3:_E0 = this.classes._Sb(_local2);
        this._Gn(_local3, _arg1);
    }

    private function _Gn(_arg1:_E0, _arg2:XML):void {
        var _local3:XML;
        _arg1.id = _arg2.@type;
        _arg1.name = _arg2.DisplayId;
        _arg1.description = _arg2.Description;
        _arg1._1T = _arg2.HitSound;
        _arg1._80 = _arg2.DeathSound;
        _arg1._1Wk = _arg2.BloodProb;
        _arg1._16 = this._1mH(_arg2.SlotTypes);
        _arg1._0vp = this._1mH(_arg2.Equipment);
        _arg1._ie = this._06h(_arg2, "MaxHitPoints");
        _arg1._0Ii = this._06h(_arg2, "MaxMagicPoints");
        _arg1.attack = this._06h(_arg2, "Attack");
        _arg1.defense = this._06h(_arg2, "Defense");
        _arg1.speed = this._06h(_arg2, "Speed");
        _arg1.dexterity = this._06h(_arg2, "Dexterity");
        _arg1._0A7 = this._06h(_arg2, "HpRegen");
        _arg1._14A = this._06h(_arg2, "MpRegen");
        _arg1.unlockCost = _arg2.UnlockCost;
        for each (_local3 in _arg2.UnlockLevel) {
            _arg1._1XQ.push(this._0hP(_local3));
        }
        ;
        _arg1._0fJ._0Uf(this._0Tc(_arg2), true);
    }

    private function _0Tc(_arg1:XML):_1GP {
        var _local2:String = _arg1.AnimatedTexture.File;
        var _local3:int = _arg1.AnimatedTexture.Index;
        var _local4:_1GP = new _1GP();
        _local4.id = 0;
        _local4.name = _TG._0AR;
        _local4._164 = new _1ZZ(_local2, _local3);
        _local4.setState(_0Hi.OWNED);
        _local4._1dU(true);
        return (_local4);
    }

    private function _0hP(_arg1:XML):_16S {
        var _local2:_16S = new _16S();
        _local2.level = _arg1.@level;
        _local2.character = this.classes._Sb(_arg1.@type);
        return (_local2);
    }

    private function _06h(_arg1:XML, _arg2:String):_11R {
        var _local4:XML;
        var _local5:XML;
        var _local6:_11R;
        var _local3:XML = _arg1[_arg2][0];
        for each (_local5 in _arg1.LevelIncrease) {
            if (_local5.text() == _arg2) {
                _local4 = _local5;
            }
            ;
        }
        ;
        _local6 = new _11R();
        _local6._0z6 = int(_local3.toString());
        _local6.max = _local3.@max;
        _local6._0GR = ((_local4) ? _local4.@min : 0);
        _local6._P8 = ((_local4) ? _local4.@max : 0);
        return (_local6);
    }

    private function _1mH(_arg1:String):Vector.<int> {
        var _local2:Array = _arg1.split(",");
        var _local3:int = _local2.length;
        var _local4:Vector.<int> = new Vector.<int>(_local3, true);
        var _local5:int;
        while (_local5 < _local3) {
            _local4[_local5] = int(_local2[_local5]);
            _local5++;
        }
        ;
        return (_local4);
    }


}
}//package _1q1

