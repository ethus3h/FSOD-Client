// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tB._tk

package _0tB_ {
import _0BD._0QN;

import _0Mr._1M;

import _0Ql._0q;

import _0cZ._0E7;

import _0y9._06T;

import _1Sm._sy;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _tk extends _0E7 {

    private static const _Pi:int = 16;

    public function _tk() {
        this._0KK = _0QN._1x3();
        this.clicked = new _0q(this, MouseEvent.CLICK);
        tabChildren = false;
        tabEnabled = false;
        this._0ZZ();
    }
    public var clicked:_sy;
    private var _hp:_06T;
    private var _ho:DisplayObject;
    private var _zs:int = -1;
    private var _0KK:Sprite;

    public function _fx(_arg1:int):void {
        if (this._zs != _arg1) {
            this._zs = _arg1;
            this._0EH();
        }
        ;
    }

    public function destroy():void {
        parent.removeChild(this);
    }

    private function _0ZZ():void {
        addChild(this._0KK);
        this._ho = makeIcon();
        addChild(this._ho);
        this._1LB();
        this._fx(0);
    }

    private function _1LB():void {
        this._hp = new _06T().setSize(_Pi).setColor(0xFFFFFF);
        this._hp.filters = [new DropShadowFilter(0, 0, 0)];
        this._0EH();
        addChild(this._hp);
    }

    private function _0EH():void {
        this._hp.textChanged.addOnce(this.onTextChanged);
        this._hp.setStringBuilder(new _1M(((this._zs.toString() + " day") + (((this._zs) > 1) ? "s" : ""))));
    }

    private function onTextChanged():void {
        positionText(this._ho, this._hp);
    }


}
}//package _0tB

