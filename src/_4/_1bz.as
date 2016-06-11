// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-._1bz

package _4 {
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;

public class _1bz extends Sprite {

    private const _hI:_06T = makeText();
    private var _0Te:Class = _16G;
    private const _4e = _1my();
    public const _0Oc:_sy = new _sy();

    public function _1bz() {
        super();
    }

    public function layout():void {
        this._hI.y = (((height / 2) - (this._hI.height / 2)) + 1);
        this._4e.x = (this._hI.x + this._hI.width);
        this._0Oc.dispatch();
    }

    private function makeText():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(16).setColor(0xB3B3B3).setBold(true);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        _local1.setStringBuilder(new _5R().setParams(_TG._1Oj));
        _local1.textChanged.addOnce(this.layout);
        addChild(_local1);
        return (_local1);
    }

    private function _1my() {
        var _local1:* = new this._0Te();
        addChild(_local1);
        return (_local1);
    }


}
}//package _4-

