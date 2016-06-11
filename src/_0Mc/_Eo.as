// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._Eo

package _0Mc {
import _07g._2v;

import _0Mr._5R;

import _0Nb.*;

import _0y9._06T;

import _1T3._hh;

import _6u._TG;

import _n._0f4;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util.offer.Offer;
import com.company.util.AssetLibrary;
import com.company.util.BitmapUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _Eo extends Sprite implements _0nz {

    private static const _0Pm:int = 0x777777;
    private static const _0pK:int = 0x5B5B5B;
    private static const _C0:int = 0x454545;

    private const _qH:_2v = new _2v();

    public function _Eo(_arg1:Offer, _arg2:_hh) {
        this.offer = _arg1;
        this.config = _arg2;
        this._D();
        this.makeContainer();
        this._LX();
        this._BS();
        this._013();
        this._0gc();
        this._1bo();
        this._18I();
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        this._qH.complete.add(this.alignUI);
    }
    public var offer:Offer;
    private var config:_hh;
    private var background:_1zl;
    private var container:Sprite;
    private var _11l:_0f4;
    private var _103:BitmapData;
    private var _0Al:_06T;
    private var _0IR:_06T;
    private var _U0:_06T;
    private var taglineText:_06T;
    private var _tg:Boolean;
    private var _01:Boolean;

    public function getValue():String {
        return (this.offer.realmGold_.toString());
    }

    public function _1zm(_arg1:Boolean):void {
        this._01 = _arg1;
        this._1jS();
    }

    public function setSelected(_arg1:Boolean):void {
        this._tg = _arg1;
        this._11l.setSelected(_arg1);
        this._1jS();
    }

    public function showBonus(_arg1:Boolean):void {
        if (this._U0) {
            this._U0.visible = _arg1;
        }
        ;
    }

    private function _D():void {
        this.background = new _1zl();
        this.background.setSize(520, 36);
        this._1jS();
        addChild(this.background);
    }

    private function makeContainer():void {
        this.container = new Sprite();
        this.container.x = (this.container.y = 3);
        addChild(this.container);
    }

    private function _LX():void {
        this._11l = new _0f4();
        this._11l.x = 3;
        this.container.addChild(this._11l);
    }

    private function _BS():void {
        this._103 = AssetLibrary._Rb("lofiObj3", 225);
        this._103 = TextureRedrawer.redraw(this._103, 50, true, 0, false);
        this._103 = BitmapUtil._6L(this._103, 8, 8, (this._103.width - 16), (this._103.height - 16));
        var _local1:Bitmap = new Bitmap(this._103);
        _local1.x = (this._11l.x + 35);
        this.container.addChild(_local1);
    }

    private function _013():void {
        this._0Al = new _06T().setSize(18).setColor(0xFFFFFF).setBold(true);
        this._0Al.setStringBuilder(new _5R().setParams(_TG._1Oi, {amount: this.offer.realmGold_}));
        this._0Al.filters = [new DropShadowFilter(0, 0, 0)];
        this._qH.push(this._0Al.textChanged);
        this.container.addChild(this._0Al);
    }

    private function _0gc():void {
        this._0IR = new _06T().setSize(18).setColor(0xFFFFFF).setBold(true);
        this._0IR.setStringBuilder(this.config._1F(this.offer));
        this._0IR.filters = [new DropShadowFilter(0, 0, 0)];
        this._qH.push(this._0IR.textChanged);
        this.container.addChild(this._0IR);
    }

    private function _1bo():void {
        if (!this._1jf()) {
            return;
        }
        ;
        this._U0 = new _06T().setSize(18).setColor(0xFFFFFF).setBold(true);
        this._U0.setStringBuilder(new _5R().setParams(_TG._h1, {percent: this.offer.bonus}));
        this._U0.filters = [new DropShadowFilter(0, 0, 0)];
        this._qH.push(this._U0.textChanged);
        this.container.addChild(this._U0);
    }

    private function _18I():void {
        if (this._03F()) {
            this.makeTaglineText();
        }
        ;
    }

    private function makeTaglineText():void {
        this.taglineText = new _06T().setSize(18).setColor(8891485);
        this.taglineText.setStringBuilder(new _5R().setParams(this.offer.tagline));
        this.taglineText.filters = [new DropShadowFilter(0, 0, 0)];
        this._qH.push(this.taglineText.textChanged);
        this.container.addChild(this.taglineText);
    }

    private function _03F():Boolean {
        return (!((this.offer.tagline == null)));
    }

    private function _1jf():Boolean {
        return (((!((this.offer == null))) && (!((this.offer.bonus == 0)))));
    }

    private function alignUI():void {
        this._0Al.x = (this._11l.x + 70);
        this._0Al.y = ((this._103.height / 2) - (this._0Al.height / 2));
        this._0IR.x = 200;
        this._0IR.y = ((this._103.height / 2) - (this._0IR.height / 2));
        if (((this._1jf()) && (!((this._U0 == null))))) {
            this._U0.x = 280;
            this._U0.y = ((this._103.height / 2) - (this._U0.height / 2));
        }
        ;
        if (((this._03F()) && (!((this.taglineText == null))))) {
            this.taglineText.x = 400;
            this.taglineText.y = ((this._103.height / 2) - (this.taglineText.height / 2));
        }
        ;
    }

    private function _1jS():void {
        var _local1:int = ((this._tg) ? _0Pm : ((this._01) ? _0pK : _C0));
        this.background.setColor(_local1);
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._1zm(true);
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this._1zm(false);
    }


}
}//package _0Mc

