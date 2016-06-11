// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4.ArenaPortalPanel

package _1f4 {
import _0Mr._5R;

import _0y9._06T;
import _0y9._1Ds;

import _1Sm._sy;

import _6u._TG;

import _n._19y;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.ArenaPortal;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.util.Currency;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class ArenaPortalPanel extends Panel {

    public const _dA:_sy = new _sy(int);

    public function ArenaPortalPanel(_arg1:_0p2, _arg2:ArenaPortal) {
        this._0Tj = new Sprite();
        this._1DU = new Sprite();
        super(_arg1);
        this._9g = _arg2;
        addChild(this._0Tj);
        addChild(this._1DU);
        if ((((gs_.map == null)) || ((gs_.map.player_ == null)))) {
            return;
        }
        ;
        var _local3:Player = gs_.map.player_;
        this.nameText_ = this._JX();
        this._0Tj.addChild(this.nameText_);
        this._1x0 = new _19y("", 20, 50, Currency._1mE);
        this._1x0.addEventListener(MouseEvent.CLICK, this._0mA);
        this._0Tj.addChild(this._1x0);
        this._0wx = new _19y("", 20, 500, Currency.FAME);
        if ((_local3._01D < 500)) {
            this._0wx.setEnabled(false);
        } else {
            this._0wx.addEventListener(MouseEvent.CLICK, this._Hl);
        }
        ;
        this._0Tj.addChild(this._0wx);
        this._0wx._0CF.addOnce(this.alignUI);
        this._ea = new _1Ds();
        this._ea.setSize(18).setColor(0xFF0000).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
        this._ea.setStringBuilder(new _5R().setParams(_TG._1L).setPrefix('<p align="center">').setPostfix("</p>"));
        this._ea.filters = [new DropShadowFilter(0, 0, 0)];
        this._ea.y = (HEIGHT - 45);
        this._1DU.addChild(this._ea);
        this._201 = this._JX();
        this._1DU.addChild(this._201);
    }
    private var _9g:ArenaPortal;
    private var _0Tj:Sprite;
    private var nameText_:_1Ds;
    private var _1x0:_19y;
    private var _0wx:_19y;
    private var _1DU:Sprite;
    private var _201:_06T;
    private var _ea:_1Ds;

    override public function draw():void {
        this._0Tj.visible = this._9g._0N6;
        this._1DU.visible = !(this._9g._0N6);
    }

    private function alignUI():void {
        this._1x0.x = ((WIDTH * 0.25) - (this._1x0.width / 2));
        this._1x0.y = ((HEIGHT - this._1x0.height) - 4);
        this._0wx.x = ((WIDTH * 0.75) - (this._0wx.width / 2));
        this._0wx.y = ((HEIGHT - this._0wx.height) - 4);
    }

    private function _JX():_1Ds {
        var _local1:_1Ds;
        _local1 = new _1Ds();
        _local1.setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
        _local1.setStringBuilder(new _5R().setParams(_TG._036).setPrefix('<p align="center">').setPostfix("</p>"));
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        _local1.y = 6;
        return (_local1);
    }

    private function _0mA(_arg1:MouseEvent):void {
        this._dA.dispatch(Currency._1mE);
    }

    private function _Hl(_arg1:MouseEvent):void {
        this._dA.dispatch(Currency.FAME);
    }


}
}//package _1f4

