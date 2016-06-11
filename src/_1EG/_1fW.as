// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._1fW

package _1EG {
import _0Mr._5R;

import _0y9._1Ds;

import _6u._TG;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;

public class _1fW extends Sprite {

    private const _F2:_1Ds = _sY();
    private const _NI:_5R = new _5R();

    public function _sF(_arg1:int):void {
        this._F2.setStringBuilder(this._NI.setParams(_TG._lA, {waveNumber: _arg1}));
    }

    private function _sY():_1Ds {
        var _local1:_1Ds = new _1Ds();
        _local1.setSize(24).setBold(true).setColor(0xFFFFFF);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        addChild(_local1);
        return (_local1);
    }


}
}//package _1EG

