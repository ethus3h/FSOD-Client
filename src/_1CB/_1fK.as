// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._1fK

package _1CB {
import _07g._10L;

import _1Fr._1IN;

import _1qi._ry;

import _gl._1bu;

import com.company.assembleegameclient.objects.Player;

import flash.display.Sprite;

public class _1fK extends Sprite {

    public function _1fK(_arg1:Player) {
        this._128 = new Sprite();
        this._1Gj = new _10L();
        super();
        this.init(_arg1);
        this._1dN();
        this._UC();
    }
    private var _128:Sprite;
    private var _0k8:_ry;
    private var _1Gj:_10L;

    private function init(_arg1:Player):void {
        this._128.name = _1IN._0Cj;
        this._0k8 = new _ry(_arg1, _arg1, (_1bu._0RT + _1bu._0KV), true);
    }

    private function _UC():void {
        this._128.x = 7;
        this._128.y = 7;
        this._1Gj.y = (this._0k8.height + 4);
    }

    private function _1dN():void {
        this._128.addChild(this._0k8);
        this._128.addChild(this._1Gj);
        addChild(this._128);
    }


}
}//package _1CB

