// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG.ArenaQueryPanel

package _1EG {
import _07g._2v;

import _0Mr._5R;

import _0y9._06T;

import _1f4.Panel;

import _E4._AQ;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.ui._1jP;

import flash.display.Bitmap;

public class ArenaQueryPanel extends Panel {

    private const _17E:_06T = _AQ._1h(0xFFFFFF, 16, true);

    public function ArenaQueryPanel(_arg1:GameSprite, _arg2:uint) {
        this._qH = new _2v();
        this.type = _arg2;
        super(_arg1);
        this._qH.complete.addOnce(this._zx);
        this._3d();
        this._0eC();
        this._PW();
        this._4S();
    }
    var _1b:_1jP;
    var _0Nh:_1jP;
    var type:uint;
    private var icon:Bitmap;
    private var title:String = "ArenaQueryPanel.title";
    private var _0ag:String = "Pets.caretakerPanelButtonInfo";
    private var _L8:String = "ArenaQueryPanel.leaderboard";
    private var _qH:_2v;

    private function _PW():void {
        this._1b = new _1jP(16, this._0ag);
        this._qH.push(this._1b.textChanged);
        addChild(this._1b);
    }

    private function _0eC():void {
        this._17E.setStringBuilder(new _5R().setParams(this.title));
        this._17E.x = 65;
        this._17E.y = 28;
        addChild(this._17E);
    }

    private function _4S():void {
        this._0Nh = new _1jP(16, this._L8);
        this._qH.push(this._0Nh.textChanged);
        addChild(this._0Nh);
    }

    private function _3d():void {
        this.icon = _AQ._1W8(this.type);
        addChild(this.icon);
        this.icon.x = 5;
    }

    private function _zx():void {
        var _local1:int = 15;
        var _local2:int = ((this._1b.width + _local1) + this._0Nh.width);
        this._1b.x = ((WIDTH / 2) - (_local2 / 2));
        this._0Nh.x = ((this._1b.x + this._1b.width) + _local1);
        this._0Nh.y = ((HEIGHT - this._0Nh.height) - 4);
        this._1b.y = ((HEIGHT - this._1b.height) - 4);
    }


}
}//package _1EG

