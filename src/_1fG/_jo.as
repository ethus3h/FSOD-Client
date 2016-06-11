// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fG._jo

package _1fG {
import _1L3._1FO;

import _1ik._2X;
import _1ik._f0;

import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import com.company.util.ConversionUtil;

import kabam.rotmg.assets.services._1Ns;

public class _jo {

    [Inject]
    public var _PI:_1Z;
    [Inject]
    public var factory:_1Ns;
    [Inject]
    public var _0Xz:_f0;


    public function _99(_arg1:XMLList):Vector.<_2X> {
        var _local4:XML;
        var _local2:Vector.<_2X> = new Vector.<_2X>();
        var _local3:int = 1;
        for each (_local4 in _arg1) {
            _local2.push(this._n2(_local4, _local3));
            _local3++;
        }
        ;
        _local2 = this._20P(_local2);
        _local2 = this._9z(_local2);
        return (_local2);
    }

    private function _9z(_arg1:Vector.<_2X>):Vector.<_2X> {
        var _local3:Boolean;
        var _local4:Boolean;
        var _local5:_2X;
        var _local2:Vector.<_2X> = new Vector.<_2X>();
        if (this._0Xz._hk()) {
            _local3 = false;
            _local4 = false;
            for each (_local5 in _arg1) {
                if (((!(_local3)) && (this._0Xz._1ej._Ij(_local5)))) {
                    this._0Xz._1ej.rank = _local5.rank;
                    _local2.push(this._0Xz._1ej);
                    _local3 = true;
                }
                ;
                if (_local5._13C) {
                    _local4 = true;
                }
                ;
                if (_local3) {
                    _local5.rank++;
                }
                ;
                _local2.push(_local5);
            }
            ;
            if ((((((_local2.length < 20)) && (!(_local3)))) && (!(_local4)))) {
                this._0Xz._1ej.rank = (_local2.length + 1);
                _local2.push(this._0Xz._1ej);
            }
            ;
        }
        ;
        return ((((_local2.length > 0)) ? _local2 : _arg1));
    }

    private function _20P(_arg1:Vector.<_2X>):Vector.<_2X> {
        var _local3:Boolean;
        var _local4:_2X;
        var _local5:_2X;
        var _local2:int = -1;
        if (this._0Xz._hk()) {
            _local3 = false;
            _local4 = this._0Xz._1ej;
            for each (_local5 in _arg1) {
                if (((_local5._13C) && (_local4._Ij(_local5)))) {
                    _local2 = (_local5.rank - 1);
                    _local3 = true;
                } else {
                    if (_local3) {
                        _local5.rank--;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        if (_local2 != -1) {
            _arg1.splice(_local2, 1);
        }
        ;
        return (_arg1);
    }

    private function _n2(_arg1:XML, _arg2:int):_2X {
        var _local10:_1FO;
        var _local11:XML;
        var _local3:_2X = new _2X();
        _local3._13C = _arg1.hasOwnProperty("IsPersonalRecord");
        _local3._0fh = _arg1.Time;
        _local3.name = _arg1.PlayData.CharacterData.Name;
        _local3.rank = ((_arg1.hasOwnProperty("Rank")) ? _arg1.Rank : _arg2);
        var _local4:int = _arg1.PlayData.CharacterData.Texture;
        var _local5:int = _arg1.PlayData.CharacterData.Class;
        var _local6:_E0 = this._PI._Sb(_local5);
        var _local7:_1GP = _local6._0fJ._1PW(_local4);
        var _local8:int = ((_arg1.PlayData.CharacterData.hasOwnProperty("Tex1")) ? _arg1.PlayData.CharacterData.Tex1 : 0);
        var _local9:int = ((_arg1.PlayData.CharacterData.hasOwnProperty("Tex2")) ? _arg1.PlayData.CharacterData.Tex2 : 0);
        _local3._1PC = this.factory.makeIcon(_local7._164, 100, _local8, _local9);
        _local3._0Jj = ConversionUtil._0mJ(_arg1.PlayData.CharacterData.Inventory);
        _local3._16 = _local6._16;
        _local3.guildName = _arg1.PlayData.CharacterData.GuildName;
        _local3._1sn = _arg1.PlayData.CharacterData.GuildRank;
        _local3._1qz = _arg1.WaveNumber;
        if (_arg1.PlayData.hasOwnProperty("Pet")) {
            _local10 = new _1FO();
            _local11 = new XML(_arg1.PlayData.Pet);
            _local10.apply(_local11);
            _local3.pet = _local10;
        }
        ;
        return (_local3);
    }


}
}//package _1fG

