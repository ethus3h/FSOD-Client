// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._11U

package _X4 {
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

import com.company.assembleegameclient.util.ConditionEffect;

public class _11U extends _0YI {

    public function _11U() {
        this._0MY = new GeneralProjectileComparison();
        super();
    }
    private var _0MY:GeneralProjectileComparison;
    private var condition:XMLList;
    private var _1z:XMLList;

    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var tagStr:String;
        var duration:Number;
        var conditionEffect:ConditionEffect;
        var itemXML:XML = _arg1;
        var curItemXML:XML = _arg2;
        this.condition = itemXML.Projectile.ConditionEffect.(((((text() == "Slowed")) || ((text() == "Paralyzed")))) || ((text() == "Dazed")));
        this._1z = curItemXML.Projectile.ConditionEffect.(((((text() == "Slowed")) || ((text() == "Paralyzed")))) || ((text() == "Dazed")));
        this._0MY._VG(itemXML, curItemXML);
        _0ak = this._0MY._0ak;
        for (tagStr in this._0MY._14) {
            _14[tagStr] = true;
        }
        ;
        if ((((this.condition.length() == 1)) && ((this._1z.length() == 1)))) {
            duration = Number(this.condition[0].@duration);
            conditionEffect = ConditionEffect._1Pl(this.condition.text());
            _0ak.pushParams(_TG._0hd, {effect: ""});
            _0ak.pushParams(_TG._QZ, {
                effect: new _5R().setParams(conditionEffect._1WQ),
                duration: duration
            }, _ix._yk(_05D), _ix._0yJ());
            _14[this.condition[0].toXMLString()] = true;
        }
        ;
    }


}
}//package _X4

