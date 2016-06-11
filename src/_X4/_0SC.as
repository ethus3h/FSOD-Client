// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._0SC

package _X4 {
import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

public class _0SC extends _0YI {


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var nova:XMLList;
        var otherNova:XMLList;
        var tag:XML;
        var range:Number;
        var otherRange:Number;
        var amount:Number;
        var otherAmount:Number;
        var wavg:Number;
        var otherWavg:Number;
        var innerStringBuilder:_5R;
        var itemXML:XML = _arg1;
        var curItemXML:XML = _arg2;
        nova = itemXML.Activate.(text() == "HealNova");
        otherNova = curItemXML.Activate.(text() == "HealNova");
        _0ak = new AppendingLineBuilder();
        if ((((nova.length() == 1)) && ((otherNova.length() == 1)))) {
            range = Number(nova.@range);
            otherRange = Number(otherNova.@range);
            amount = Number(nova.@amount);
            otherAmount = Number(otherNova.@amount);
            wavg = ((0.5 * range) + (0.5 * amount));
            otherWavg = ((0.5 * otherRange) + (0.5 * otherAmount));
            innerStringBuilder = new _5R().setParams(_TG._1o4, {
                amount: amount.toString(),
                range: range.toString()
            }).setPrefix(_ix._yk(_BZ((wavg - otherWavg)))).setPostfix(_ix._0yJ());
            _0ak.pushParams(_TG._0dt, {effect: innerStringBuilder});
            _14[nova.toXMLString()] = true;
        }
        ;
        if (itemXML.@id == "Tome of Purification") {
            tag = itemXML.Activate.(text() == "RemoveNegativeConditions")[0];
            _0ak.pushParams(_TG._1c, {}, _ix._yk(_1D9), _ix._0yJ());
            _14[tag.toXMLString()] = true;
        } else {
            if (itemXML.@id == "Tome of Holy Protection") {
                tag = itemXML.Activate.(text() == "ConditionEffectSelf")[0];
                _0ak.pushParams(_TG._1LN, {effect: ""});
                _0ak.pushParams(_TG._QZ, {
                    effect: _TG._1hr(_TG._1pe),
                    duration: tag.@duration
                }, _ix._yk(_1D9), _ix._0yJ());
                _14[tag.toXMLString()] = true;
            }
            ;
        }
        ;
    }


}
}//package _X4

