// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._0fZ

package _X4 {
import _0Mr.AppendingLineBuilder;
import _0Mr._1vN;

import _6u._TG;

public class _0fZ extends _0YI {

    public function _0fZ() {
        _0ak = new AppendingLineBuilder();
    }
    private var itemXML:XML;
    private var curItemXML:XML;
    private var _0OL:XML;
    private var _10:XML;

    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        this.itemXML = _arg1;
        this.curItemXML = _arg2;
        this._0OL = _arg1.Projectile[0];
        this._10 = _arg2.Projectile[0];
        this._1zc();
        this._1uh();
        _14[this._0OL.toXMLString()] = true;
    }

    private function _1zc():_1vN {
        var _local1:int = int(this._0OL.MinDamage);
        var _local2:int = int(this._0OL.MaxDamage);
        var _local3:int = int(this._10.MinDamage);
        var _local4:int = int(this._10.MaxDamage);
        var _local5:Number = ((_local1 + _local2) / 2);
        var _local6:Number = ((_local3 + _local4) / 2);
        var _local7:uint = _BZ((_local5 - _local6));
        var _local8:String = (((_local1) == _local2) ? _local2.toString() : ((_local1 + " - ") + _local2));
        return (_0ak.pushParams(_TG.DAMAGE, {damage: (((('<font color="#' + _local7.toString(16)) + '">') + _local8) + "</font>")}));
    }

    private function _1uh():_1vN {
        var _local1:Number = ((Number(this._0OL.Speed) * Number(this._0OL.LifetimeMS)) / 10000);
        var _local2:Number = ((Number(this._10.Speed) * Number(this._10.LifetimeMS)) / 10000);
        var _local3:uint = _BZ((_local1 - _local2));
        return (_0ak.pushParams(_TG._1h4, {range: (((('<font color="#' + _local3.toString(16)) + '">') + _local1) + "</font>")}));
    }


}
}//package _X4

