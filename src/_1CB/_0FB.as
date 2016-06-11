// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._0FB

package _1CB {
import _07g._10L;

import _1Fr._1IN;

import _1qi._ry;

import com.company.assembleegameclient.objects.Player;

import flash.display.Sprite;

public class _0FB extends Sprite {

    public function _0FB(_arg1:Player) {
        this._1p1 = new Sprite();
        this._1Fa = new _10L();
        super();
        this.init(_arg1);
        this._1dN();
        this._UC();
    }
    private var _1p1:Sprite;
    private var _KO:_ry;
    private var _1Fa:_10L;

    private function init(_arg1:Player):void {
        this._KO = new _ry(_arg1, _arg1, 4);
        this._1p1.name = _1IN._hY;
    }

    private function _1dN():void {
        this._1p1.addChild(this._KO);
        this._1p1.addChild(this._1Fa);
        addChild(this._1p1);
    }

    private function _UC():void {
        this._1p1.x = 7;
        this._1p1.y = 7;
        this._1Fa.y = (this._KO.height + 4);
    }


}
}//package _1CB

