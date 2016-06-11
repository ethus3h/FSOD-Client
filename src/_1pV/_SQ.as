// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1pV._SQ

package _1pV {
import _10a._FU;

import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import com.company.util.ConversionUtil;

import kabam.rotmg.assets.services._1Ns;

public class _SQ {

    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _PI:_1Z;
    [Inject]
    public var factory:_1Ns;
    private var _0na:String;
    private var legends:Vector.<_nD>;


    public function _1Lp(_arg1:XML):Vector.<_nD> {
        this._0na = this._qP._1rI();
        this.legends = new <_nD>[];
        this._0tz(_arg1.FameListElem, false);
        this._0tz(_arg1.MyFameListElem, true);
        return (this.legends);
    }

    public function _1Rn(_arg1:XML):_nD {
        var _local2:int = _arg1.ObjectType;
        var _local3:int = _arg1.Texture;
        var _local4:_E0 = this._PI._Sb(_local2);
        var _local5:_1GP = _local4._0fJ._1PW(_local3);
        var _local6:int = ((_arg1.hasOwnProperty("Tex1")) ? _arg1.Tex1 : 0);
        var _local7:int = ((_arg1.hasOwnProperty("Tex2")) ? _arg1.Tex2 : 0);
        var _local8:_nD = new _nD();
        _local8.accountId = _arg1.@accountId;
        _local8.charId = _arg1.@charId;
        _local8.name = _arg1.Name;
        _local8._0UL = _arg1.TotalFame;
        _local8.character = this.factory.makeIcon(_local5._164, 100, _local6, _local7);
        _local8._0Wj = _local4._16;
        _local8._0Jj = ConversionUtil._0mJ(_arg1.Equipment);
        return (_local8);
    }

    private function _0tz(_arg1:XMLList, _arg2:Boolean):void {
        var _local3:XML;
        var _local4:_nD;
        for each (_local3 in _arg1) {
            if (!this._0J(_local3)) {
                _local4 = this._1Rn(_local3);
                _local4._ih = (_local3.@accountId == this._0na);
                _local4._0yx = _arg2;
                this.legends.push(_local4);
            }
            ;
        }
        ;
    }

    private function _0J(_arg1:XML):Boolean {
        var _local2:_nD;
        for each (_local2 in this.legends) {
            if ((((_local2.accountId == _arg1.@accountId)) && ((_local2.charId == _arg1.@charId)))) {
                return (true);
            }
            ;
        }
        ;
        return (false);
    }


}
}//package _1pV

