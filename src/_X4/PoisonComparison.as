// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4.PoisonComparison

package _X4 {
import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

public class PoisonComparison extends _0YI {


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var activate:XMLList;
        var otherActivate:XMLList;
        var damage:int;
        var otherDamage:int;
        var radius:Number;
        var otherRadius:Number;
        var duration:Number;
        var otherDuration:Number;
        var avg:Number;
        var otherAvg:Number;
        var dataLineBuilder:_5R;
        var itemXML:XML = _arg1;
        var curItemXML:XML = _arg2;
        activate = itemXML.Activate.(text() == "PoisonGrenade");
        otherActivate = curItemXML.Activate.(text() == "PoisonGrenade");
        _0ak = new AppendingLineBuilder();
        if ((((activate.length() == 1)) && ((otherActivate.length() == 1)))) {
            damage = int(activate[0].@totalDamage);
            otherDamage = int(otherActivate[0].@totalDamage);
            radius = Number(activate[0].@radius);
            otherRadius = Number(otherActivate[0].@radius);
            duration = Number(activate[0].@duration);
            otherDuration = Number(otherActivate[0].@duration);
            avg = (((0.33 * damage) + (0.33 * radius)) + (0.33 * duration));
            otherAvg = (((0.33 * otherDamage) + (0.33 * otherRadius)) + (0.33 * otherDuration));
            dataLineBuilder = new _5R().setParams(_TG._vv, {
                damage: damage.toString(),
                duration: duration.toString(),
                radius: radius.toString()
            }).setPrefix(_ix._yk(_BZ((avg - otherAvg)))).setPostfix(_ix._0yJ());
            _0ak.pushParams(_TG._174, {data: dataLineBuilder});
            _14[activate[0].toXMLString()] = true;
        }
        ;
    }


}
}//package _X4

