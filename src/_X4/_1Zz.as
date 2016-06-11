// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._1Zz

package _X4 {
import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

public class _1Zz extends _0YI {


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var _local3:XML;
        var _local4:XML;
        var _local5:int;
        var _local6:int;
        var _local7:uint;
        _local3 = this._1q2(_arg1);
        _local4 = this._1q2(_arg2);
        _0ak = new AppendingLineBuilder();
        if (((!((_local3 == null))) && (!((_local4 == null))))) {
            _local5 = int(_local3.@duration);
            _local6 = int(_local4.@duration);
            _local7 = _BZ((_local5 - _local6));
            _0ak.pushParams(_TG._1d4, {stasis: new _5R().setParams(_TG._0AU, {duration: _local5}).setPrefix(_ix._yk(_local7)).setPostfix(_ix._0yJ())});
            _14[_local3.toXMLString()] = true;
            this._0G4(_arg1);
        }
        ;
    }

    private function _1q2(_arg1:XML):XML {
        var matches:XMLList;
        var orbXML:XML = _arg1;
        matches = orbXML.Activate.(text() == "StasisBlast");
        return ((((matches.length()) == 1) ? matches[0] : null));
    }

    private function _0G4(_arg1:XML):void {
        var selfTags:XMLList;
        var speedy:XML;
        var damaging:XML;
        var itemXML:XML = _arg1;
        if (itemXML.@id == "Orb of Conflict") {
            selfTags = itemXML.Activate.(text() == "ConditionEffectSelf");
            speedy = selfTags.(@effect == "Speedy")[0];
            damaging = selfTags.(@effect == "Damaging")[0];
            _0ak.pushParams(_TG._1LN, {effect: ""});
            _0ak.pushParams(_TG._QZ, {
                effect: _TG._1hr(_TG._jt),
                duration: speedy.@duration
            }, _ix._yk(_1D9), _ix._0yJ());
            _0ak.pushParams(_TG._1LN, {effect: ""});
            _0ak.pushParams(_TG._QZ, {
                effect: _TG._1hr(_TG._0fX),
                duration: damaging.@duration
            }, _ix._yk(_1D9), _ix._0yJ());
            _14[speedy.toXMLString()] = true;
            _14[damaging.toXMLString()] = true;
        }
        ;
    }


}
}//package _X4

