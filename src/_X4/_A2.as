// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._A2

package _X4 {
import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

import _gl.*;

public class _A2 extends _0YI {


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var _local3:XML;
        var _local4:XML;
        var _local5:Number;
        var _local6:Number;
        var _local7:int;
        var _local8:int;
        var _local9:Number;
        var _local10:Number;
        _local3 = this._jH(_arg1);
        _local4 = this._jH(_arg2);
        _0ak = new AppendingLineBuilder();
        if (((!((_local3 == null))) && (!((_local4 == null))))) {
            _local5 = Number(_local3.@radius);
            _local6 = Number(_local4.@radius);
            _local7 = int(_local3.@totalDamage);
            _local8 = int(_local4.@totalDamage);
            _local9 = ((0.5 * _local5) + (0.5 * _local7));
            _local10 = ((0.5 * _local6) + (0.5 * _local8));
            _0ak.pushParams(_TG._0Pw, {
                effect: new _5R().setParams(_TG._1o4, {
                    amount: _local7,
                    range: _local5
                }).setPrefix(_ix._yk(_BZ((_local9 - _local10)))).setPostfix(_ix._0yJ())
            });
            _14[_local3.toXMLString()] = true;
        }
        ;
    }

    private function _jH(_arg1:XML):XML {
        var matches:XMLList;
        var xml:XML = _arg1;
        matches = xml.Activate.(text() == _1X._MC);
        return ((((matches.length()) >= 1) ? matches[0] : null));
    }


}
}//package _X4

