// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4.GeneralProjectileComparison

package _X4 {
import _0Mr.AppendingLineBuilder;

import _6u._TG;

import _Z0._ix;

public class GeneralProjectileComparison extends _0YI {

    private var itemXML:XML;
    private var curItemXML:XML;
    private var _0OL:XML;
    private var _10:XML;


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        this.itemXML = _arg1;
        this.curItemXML = _arg2;
        _0ak = new AppendingLineBuilder();
        if (_arg1.hasOwnProperty("NumProjectiles")) {
            this._135();
            _14[_arg1.NumProjectiles.toXMLString()] = true;
        }
        ;
        if (_arg1.hasOwnProperty("Projectile")) {
            this._0WS();
            _14[_arg1.Projectile.toXMLString()] = true;
        }
        ;
        this._0Tw();
    }

    private function _0WS():void {
        this._0fL();
        var _local1:Number = ((Number(this._0OL.Speed) * Number(this._0OL.LifetimeMS)) / 10000);
        var _local2:Number = ((Number(this._10.Speed) * Number(this._10.LifetimeMS)) / 10000);
        var _local3:String = _ix._N8(_local1);
        _0ak.pushParams(_TG._1h4, {range: _sO(_local3, _BZ((_local1 - _local2)))});
        if (this._0OL.hasOwnProperty("MultiHit")) {
            _0ak.pushParams(_TG._1Hl, {}, _ix._yk(_05D), _ix._0yJ());
        }
        ;
        if (this._0OL.hasOwnProperty("PassesCover")) {
            _0ak.pushParams(_TG._1Xr, {}, _ix._yk(_05D), _ix._0yJ());
        }
        ;
        if (this._0OL.hasOwnProperty("ArmorPiercing")) {
            _0ak.pushParams(_TG._nr, {}, _ix._yk(_05D), _ix._0yJ());
        }
        ;
    }

    private function _135():void {
        var _local1:int = int(this.itemXML.NumProjectiles);
        var _local2:int = int(this.curItemXML.NumProjectiles);
        var _local3:uint = _BZ((_local1 - _local2));
        _0ak.pushParams(_TG._0PR, {numShots: _sO(_local1.toString(), _local3)});
    }

    private function _0fL():void {
        this._0OL = XML(this.itemXML.Projectile);
        var _local1:int = int(this._0OL.MinDamage);
        var _local2:int = int(this._0OL.MaxDamage);
        var _local3:Number = ((_local2 + _local1) / 2);
        this._10 = XML(this.curItemXML.Projectile);
        var _local4:int = int(this._10.MinDamage);
        var _local5:int = int(this._10.MaxDamage);
        var _local6:Number = ((_local5 + _local4) / 2);
        var _local7:String = (((_local1 == _local2)) ? _local1 : ((_local1 + " - ") + _local2)).toString();
        _0ak.pushParams(_TG.DAMAGE, {damage: _sO(_local7, _BZ((_local3 - _local6)))});
    }

    private function _0Tw():void {
        if ((((this.itemXML.RateOfFire.length() == 0)) || ((this.curItemXML.RateOfFire.length() == 0)))) {
            return;
        }
        ;
        var _local1:Number = Number(this.curItemXML.RateOfFire[0]);
        var _local2:Number = Number(this.itemXML.RateOfFire[0]);
        var _local3:int = int(((_local2 / _local1) * 100));
        var _local4:int = (_local3 - 100);
        if (_local4 == 0) {
            return;
        }
        ;
        var _local5:uint = _BZ(_local4);
        var _local6:String = _local4.toString();
        if (_local4 > 0) {
            _local6 = ("+" + _local6);
        }
        ;
        _local6 = _sO((_local6 + "%"), _local5);
        _0ak.pushParams(_TG._OU, {data: _local6});
        _14[this.itemXML.RateOfFire[0].toXMLString()];
    }


}
}//package _X4

