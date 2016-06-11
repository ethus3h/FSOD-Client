// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0P7.BattleSummaryText

package _0P7 {
import _0Mr._1M;
import _0Mr._5R;

import _0y9._1Ds;

import _6u._TG;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;

public class BattleSummaryText extends Sprite {

    public function BattleSummaryText(_arg1:String, _arg2:int, _arg3:int) {
        this._17E = this._17L();
        this._F2 = this._1jt();
        this._Rz = this._1jt();
        super();
        this._17E.setStringBuilder(new _5R().setParams(_arg1));
        this._F2.setStringBuilder(new _5R().setParams(_TG._0Li, {waveNumber: (_arg2 - 1)}));
        this._Rz.setStringBuilder(new _1M(this._4J(_arg3)));
        this.align();
    }
    private var _17E:_1Ds;
    private var _F2:_1Ds;
    private var _Rz:_1Ds;

    private function align():void {
        this._17E.x = ((width / 2) - (this._17E.width / 2));
        this._F2.y = (this._17E.height + 10);
        this._F2.x = ((width / 2) - (this._F2.width / 2));
        this._Rz.y = ((this._F2.y + this._F2.height) + 5);
        this._Rz.x = ((width / 2) - (this._Rz.width / 2));
    }

    private function _4J(_arg1:int):String {
        var _local2:int = (_arg1 / 60);
        var _local3:int = (_arg1 % 60);
        var _local4:String = (((_local2 < 10)) ? "0" : "");
        _local4 = (_local4 + (_local2 + ":"));
        _local4 = (_local4 + (((_local3 < 10)) ? "0" : ""));
        _local4 = (_local4 + _local3);
        return (_local4);
    }

    private function _17L():_1Ds {
        var _local1:_1Ds;
        _local1 = new _1Ds();
        _local1.setSize(16).setBold(true).setColor(0xFFFFFF);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        addChild(_local1);
        return (_local1);
    }

    private function _1jt():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(14).setBold(true).setColor(0xB3B3B3);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        addChild(_local1);
        return (_local1);
    }


}
}//package _0P7

