// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Hk._1Q

package __Hk {
import _04g.*;

import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _1Q extends Sprite implements _13e {

    private static const _Pi:int = 18;

    public function _1Q() {
        this._Kg();
    }
    private var _ap:_06T;
    private var userName:String = "";
    private var _vD:Boolean;

    public function _0Pf(_arg1:String, _arg2:Boolean):void {
        this.userName = _arg1;
        this._vD = _arg2;
        this._ap.setStringBuilder(new _5R().setParams(_TG._c6, {userName: _arg1}));
    }

    private function _Kg():void {
        this._ap = new _06T().setSize(_Pi).setColor(0xB3B3B3);
        this._ap.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        this._ap.setAutoSize(TextFieldAutoSize.RIGHT);
        addChild(this._ap);
    }


}
}//package _Hk

