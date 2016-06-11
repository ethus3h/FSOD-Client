// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0P

package _0Sj {
import _08Y._sC;

import _0Mr._5R;

import _0y9._06T;

import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.ui._1jP;

import flash.display.Bitmap;

//import _08Y._sC;

public class _0P extends Panel {

    private const _17E:_06T = _sC._1h(0xFFFFFF, 16, true);

    public function _0P(_arg1:GameSprite, _arg2:uint) {
        this.type = _arg2;
        super(_arg1);
    }
    public var _1b:_1jP;
    public var _1wZ:_1jP;
    private var icon:Bitmap;
    private var title:String = "Pets.caretakerPanelTitle";
    private var _0ag:String = "Pets.caretakerPanelButtonInfo";
    private var _L8:String = "Pets.caretakerPanelButtonUpgrade";
    private var type:uint;

    public function init(_arg1:Boolean):void {
        this._3d();
        this._0eC();
        this._PW();
        if (_arg1) {
            this._uE();
        }
        ;
    }

    private function _PW():void {
        this._1b = new _1jP(16, this._0ag);
        this._1b.textChanged.addOnce(this._zx);
        addChild(this._1b);
    }

    private function _0eC():void {
        this.icon.x = -25;
        this.icon.y = -36;
        this._17E.setStringBuilder(new _5R().setParams(this.title));
        this._17E.x = 48;
        this._17E.y = 28;
        addChild(this._17E);
    }

    private function _uE():void {
        this._1wZ = new _1jP(16, this._L8);
        this._1wZ.textChanged.addOnce(this._zx);
        addChild(this._1wZ);
    }

    private function _3d():void {
        this.icon = _sC._024(this.type);
        addChild(this.icon);
        this.icon.x = 5;
    }

    private function _zx():void {
        if (((this._1wZ) && (contains(this._1wZ)))) {
            this._1wZ.x = (((WIDTH / 4) * 3) - (this._1wZ.width / 2));
            this._1wZ.y = ((HEIGHT - this._1wZ.height) - 4);
            this._1b.x = (((WIDTH / 4) * 1) - (this._1b.width / 2));
            this._1b.y = ((HEIGHT - this._1b.height) - 4);
        } else {
            this._1b.x = ((WIDTH - this._1b.width) / 2);
            this._1b.y = ((HEIGHT - this._1b.height) - 4);
        }
        ;
    }


}
}//package _0Sj

