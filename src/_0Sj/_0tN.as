// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0tN

package _0Sj {
import _08Y._sC;

import _0Mr._5R;

import _0y9._06T;

import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.ui._1jP;

import flash.display.Bitmap;

public class _0tN extends Panel {

    private const _17E:_06T = _sC._1h(0xFFFFFF, 16, true);

    public function _0tN(_arg1:GameSprite, _arg2:int) {
        super(_arg1);
        this.objectType = _arg2;
        this._17E.setStringBuilder(new _5R().setParams(this.title));
        this._17E.x = 48;
        this._17E.y = 28;
        addChild(this._17E);
        this._uD = new _1jP(16, this._0SZ);
        this._uD.textChanged.addOnce(this._zx);
        addChild(this._uD);
        this._20a = new _1jP(16, this._0z2);
        this._20a.textChanged.addOnce(this._zx);
        addChild(this._20a);
    }
    var _20a:_1jP;
    var _uD:_1jP;
    private var icon:Bitmap;
    private var title:String = "Pets.petInteractionPanelTitle";
    private var _0SZ:String = "Pets.petInteractionPanelFusePetButton";
    private var _0z2:String = "Pets.petInteractionPanelFeedPetButton";
    private var objectType:int;

    public function init():void {
        this.icon = _sC._1eh(this.objectType);
        this.icon.x = -4;
        this.icon.y = -8;
        addChild(this.icon);
    }

    private function _zx():void {
        this._uD.x = (((WIDTH / 4) * 3) - (this._uD.width / 2));
        this._uD.y = ((HEIGHT - this._uD.height) - 4);
        this._20a.x = (((WIDTH / 4) * 1) - (this._20a.width / 2));
        this._20a.y = ((HEIGHT - this._20a.height) - 4);
    }


}
}//package _0Sj

