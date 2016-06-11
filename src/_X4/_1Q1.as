// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._1Q1

package _X4 {
import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

public class _1Q1 extends _0YI {


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var trap:XML;
        var otherTrap:XML;
        var tag:XML;
        var radius:Number;
        var otherRadius:Number;
        var damage:int;
        var otherDamage:int;
        var duration:int;
        var otherDuration:int;
        var avg:Number;
        var otherAvg:Number;
        var textColor:uint;
        var itemXML:XML = _arg1;
        var curItemXML:XML = _arg2;
        trap = this._Hr(itemXML);
        otherTrap = this._Hr(curItemXML);
        _0ak = new AppendingLineBuilder();
        if (((!((trap == null))) && (!((otherTrap == null))))) {
            if (itemXML.@id == "Coral Venom Trap") {
                tag = itemXML.Activate.(text() == "Trap")[0];
                _0ak.pushParams(_TG._pA, {
                    data: new _5R().setParams(_TG._1o4, {
                        amount: tag.@totalDamage,
                        range: tag.@radius
                    }).setPrefix(_ix._yk(_1D9)).setPostfix(_ix._0yJ())
                });
                _0ak.pushParams(_TG._QZ, {
                    effect: new _5R().setParams(_TG._0ts),
                    duration: tag.@condDuration
                }, _ix._yk(_1D9), _ix._0yJ());
                _14[tag.toXMLString()] = true;
            } else {
                radius = Number(trap.@radius);
                otherRadius = Number(otherTrap.@radius);
                damage = int(trap.@totalDamage);
                otherDamage = int(otherTrap.@totalDamage);
                duration = int(trap.@condDuration);
                otherDuration = int(otherTrap.@condDuration);
                avg = (((0.33 * radius) + (0.33 * damage)) + (0.33 * duration));
                otherAvg = (((0.33 * otherRadius) + (0.33 * otherDamage)) + (0.33 * otherDuration));
                textColor = _BZ((avg - otherAvg));
                _0ak.pushParams(_TG._pA, {
                    data: new _5R().setParams(_TG._1o4, {
                        amount: trap.@totalDamage,
                        range: trap.@radius
                    }).setPrefix(_ix._yk(textColor)).setPostfix(_ix._0yJ())
                });
                _0ak.pushParams(_TG._QZ, {
                    effect: new _5R().setParams(_TG._1vQ),
                    duration: trap.@condDuration
                }, _ix._yk(textColor), _ix._0yJ());
                _14[trap.toXMLString()] = true;
            }
            ;
        }
        ;
    }

    private function _Hr(_arg1:XML):XML {
        var matches:XMLList;
        var xml:XML = _arg1;
        matches = xml.Activate.(text() == "Trap");
        if (matches.length() >= 1) {
            return (matches[0]);
        }
        ;
        return (null);
    }


}
}//package _X4

