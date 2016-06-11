// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._sZ

package _X4 {
import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

import _gl.*;

public class _sZ extends _0YI {


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var result:XMLList;
        var otherResult:XMLList;
        var damage:int;
        var otherDamage:int;
        var textColor:uint;
        var targets:int;
        var otherTargets:int;
        var innerLineBuilder:_5R;
        var condition:String;
        var duration:Number;
        var compositeStr:String;
        var htmlStr:String;
        var itemXML:XML = _arg1;
        var curItemXML:XML = _arg2;
        result = itemXML.Activate.(text() == _1X._pi);
        otherResult = curItemXML.Activate.(text() == _1X._pi);
        _0ak = new AppendingLineBuilder();
        if ((((result.length() == 1)) && ((otherResult.length() == 1)))) {
            damage = int(result[0].@totalDamage);
            otherDamage = int(otherResult[0].@totalDamage);
            textColor = _BZ((damage - otherDamage));
            targets = int(result[0].@maxTargets);
            otherTargets = int(otherResult[0].@maxTargets);
            innerLineBuilder = new _5R().setParams(_TG._19Z, {
                damage: damage.toString(),
                targets: targets.toString()
            }).setPrefix(_ix._yk(_BZ((damage - otherDamage)))).setPostfix(_ix._0yJ());
            _0ak.pushParams(_TG._pi, {data: innerLineBuilder});
            _14[result[0].toXMLString()] = true;
        }
        ;
        if (String(itemXML.Activate.@condEffect)) {
            condition = itemXML.Activate.@condEffect;
            duration = itemXML.Activate.@condDuration;
            compositeStr = ((((" " + condition) + " for ") + duration) + " secs\n");
            htmlStr = ("Shot Effect:\n" + _sO(compositeStr, _05D));
            _0ak.pushParams(_TG._0hd, {effect: ""});
            _0ak.pushParams(_TG._QZ, {
                effect: condition,
                duration: duration.toString()
            }, _ix._yk(_05D), _ix._0yJ());
        }
        ;
    }


}
}//package _X4

