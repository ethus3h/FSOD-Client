// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._1Lg

package _X4 {
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

public class _1Lg extends _0YI {

    public function _1Lg() {
        this._0MY = new GeneralProjectileComparison();
        super();
    }
    private var _0MY:GeneralProjectileComparison;

    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var _local3:String;
        this._0MY._VG(_arg1, _arg2);
        _0ak = this._0MY._0ak;
        for (_local3 in this._0MY._14) {
            _14[_local3] = this._0MY._14[_local3];
        }
        ;
        this._DC(_arg1);
    }

    private function _DC(_arg1:XML):void {
        var tag:XML;
        var innerLineBuilder:_5R;
        var itemXML:XML = _arg1;
        if (itemXML.@id == "Shield of Ogmur") {
            tag = itemXML.ConditionEffect.(text() == "Armor Broken")[0];
            innerLineBuilder = new _5R().setParams(_TG._QZ, {
                effect: _TG._1hr(_TG._1Z0),
                duration: tag.@duration
            }).setPrefix(_ix._yk(_1D9)).setPostfix(_ix._0yJ());
            _0ak.pushParams(_TG._1Rr, {effect: innerLineBuilder});
            _14[tag.toXMLString()] = true;
        }
        ;
    }


}
}//package _X4

