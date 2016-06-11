// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._1MH

package _X4 {
import _0Mr.AppendingLineBuilder;

import _6u._TG;

import _Z0._ix;

import _gl.*;

public class _1MH extends _0YI {


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var _local3:XML;
        var _local4:XML;
        var _local5:Number;
        var _local6:Number;
        _local3 = this._0om(_arg1);
        _local4 = this._0om(_arg2);
        _0ak = new AppendingLineBuilder();
        if (((!((_local3 == null))) && (!((_local4 == null))))) {
            _local5 = Number(_local3.@duration);
            _local6 = Number(_local4.@duration);
            this._1Qw(_local5, _local6);
            _14[_local3.toXMLString()] = true;
        }
        ;
        this._0G4(_arg1);
    }

    private function _0G4(_arg1:XML):void {
        var teleportTag:XML;
        var itemXML:XML = _arg1;
        if (itemXML.@id == "Cloak of the Planewalker") {
            _0ak.pushParams(_TG._1bn, {}, _ix._yk(_1D9), _ix._0yJ());
            teleportTag = XML(itemXML.Activate.(text() == _1X.TELEPORT))[0];
            _14[teleportTag.toXMLString()] = true;
        }
        ;
    }

    private function _0om(_arg1:XML):XML {
        var matches:XMLList;
        var conditionTag:XML;
        var xml:XML = _arg1;
        matches = xml.Activate.(text() == _1X._ps);
        for each (conditionTag in matches) {
            if (conditionTag.(@effect == "Invisible")) {
                return (conditionTag);
            }
            ;
        }
        ;
        return (null);
    }

    private function _1Qw(_arg1:Number, _arg2:Number):void {
        var _local3:uint = _BZ((_arg1 - _arg2));
        _0ak.pushParams(_TG._1LN, {effect: ""});
        _0ak.pushParams(_TG._QZ, {
            effect: _TG._1hr(_TG._1FY),
            duration: _arg1.toString()
        }, _ix._yk(_local3), _ix._0yJ());
    }


}
}//package _X4

