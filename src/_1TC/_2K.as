// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TC._2K

package _1TC {
import _11j.StatData;

import _1L3._1FO;
import _1L3._1Xt;
import _1L3._IG;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.Pet;
import com.company.assembleegameclient.util.ConditionEffect;

public class _2K {

    [Inject]
    public var _e2:_IG;
    [Inject]
    public var _1P:_0p2;


    public function _1mf(_arg1:Pet, _arg2:Vector.<StatData>):void {
        var _local4:StatData;
        var _local5:_1Xt;
        var _local6:*;
        var _local3:_1FO = ((_arg1._1HM) || (this._0bs(_arg1, _arg2)));
        if (_local3 == null) {
            return;
        }
        ;
        for each (_local4 in _arg2) {
            _local6 = _local4._mt;
            if (_local4._1Jh == StatData._0JB) {
                _local3._0J7(_local6);
            }
            ;
            switch (_local4._1Jh) {
                case StatData._1fb:
                    _local3.setID(_local6);
                    break;
                case StatData._0MA:
                    _local3.setName(_local4._P9);
                    break;
                case StatData._bf:
                    _local3.setType(_local6);
                    break;
                case StatData._18s:
                    _local3._0eM(_local6);
                    break;
                case StatData._1F:
                    _local3._0px(_local6);
                    break;
                case StatData._16A:
                    break;
                case StatData._0up:
                    _local5 = _local3._1mo[0];
                    _local5.points = _local6;
                    break;
                case StatData._0Yf:
                    _local5 = _local3._1mo[1];
                    _local5.points = _local6;
                    break;
                case StatData._1C0:
                    _local5 = _local3._1mo[2];
                    _local5.points = _local6;
                    break;
                case StatData._jJ:
                    _local5 = _local3._1mo[0];
                    _local5.level = _local6;
                    break;
                case StatData._02A:
                    _local5 = _local3._1mo[1];
                    _local5.level = _local6;
                    break;
                case StatData._0xt:
                    _local5 = _local3._1mo[2];
                    _local5.level = _local6;
                    break;
                case StatData._1ZW:
                    _local5 = _local3._1mo[0];
                    _local5.type = _local6;
                    break;
                case StatData._09k:
                    _local5 = _local3._1mo[1];
                    _local5.type = _local6;
                    break;
                case StatData._0HE:
                    _local5 = _local3._1mo[2];
                    _local5.type = _local6;
                    break;
            }
            ;
            if (_local5) {
                _local5._1an.dispatch(_local5);
            }
            ;
        }
        ;
    }

    public function _1ca(_arg1:Pet, _arg2:Vector.<StatData>):void {
        var _local3:StatData;
        var _local4:*;
        for each (_local3 in _arg2) {
            _local4 = _local3._mt;
            if (_local3._1Jh == StatData._0JB) {
                _arg1._0J7(_local4);
            }
            ;
            if (_local3._1Jh == StatData._yy) {
                _arg1.size_ = _local4;
            }
            ;
            if (_local3._1Jh == StatData._oR) {
                _arg1.condition_[ConditionEffect._11S] = _local4;
            }
            ;
        }
        ;
    }

    private function _0bs(_arg1:Pet, _arg2:Vector.<StatData>):_1FO {
        var _local3:StatData;
        var _local4:_1FO;
        for each (_local3 in _arg2) {
            if (_local3._1Jh == StatData._1fb) {
                _local4 = this._e2._0S4(_local3._mt);
                _arg1._1HM = ((_local4) ? _local4 : ((this._1P.map.isPetYard) ? this._e2.getPetVO(_local3._mt) : new _1FO(_local3._mt)));
                return (_arg1._1HM);
            }
            ;
        }
        ;
        return (null);
    }


}
}//package _1TC

