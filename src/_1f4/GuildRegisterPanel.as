// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4.GuildRegisterPanel

package _1f4 {
import _07g._2v;

import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import _n._19y;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui._1jP;
import com.company.assembleegameclient.util.Currency;
import com.company.assembleegameclient.util.GuildUtil;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class GuildRegisterPanel extends Panel {

    public const _Rn:_sy = new _sy();
    public const _qH:_2v = new _2v();
    public const renounce:_sy = new _sy();

    public function GuildRegisterPanel(_arg1:GameSprite) {
        var _local2:Player;
        var _local3:String;
        var _local4:_19y;
        super(_arg1);
        if ((((gs_.map == null)) || ((gs_.map.player_ == null)))) {
            return;
        }
        ;
        _local2 = gs_.map.player_;
        this._ZE = new _06T().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
        this._ZE.filters = [new DropShadowFilter(0, 0, 0)];
        if (((!((_local2.guildName_ == null))) && ((_local2.guildName_.length > 0)))) {
            _local3 = GuildUtil._1Be(_local2.guildRank_);
            this._ZE.setStringBuilder(new _5R().setParams(_TG._0PI, {
                rank: _local3,
                guildName: _local2.guildName_
            }).setPrefix('<p align="center">').setPostfix("</p>"));
            this._ZE.y = 0;
            addChild(this._ZE);
            this._d4 = new _1jP(16, _TG._0V5);
            this._d4.addEventListener(MouseEvent.CLICK, this._rP);
            this._qH.push(_1jP(this._d4).textChanged);
            addChild(this._d4);
        } else {
            this._ZE.setStringBuilder(new _5R().setParams(_TG._0oN).setPrefix('<p align="center">').setPostfix("</p>"));
            this._ZE.y = 0;
            addChild(this._ZE);
            _local4 = new _19y(_TG._4F, 16, Parameters._1W9, Currency.FAME);
            _local4.addEventListener(MouseEvent.CLICK, this._1Zs);
            this._qH.push(_local4._0CF);
            addChild(_local4);
            this._d4 = _local4;
        }
        ;
        this._qH.complete.addOnce(this.alignUI);
    }
    private var _ZE:_06T;
    private var _d4:Sprite;

    private function alignUI():void {
        this._d4.x = ((WIDTH / 2) - (this._d4.width / 2));
        this._d4.y = (((this._d4 is _19y)) ? ((HEIGHT - (this._d4.height / 2)) - 31) : ((HEIGHT - this._d4.height) - 4));
    }

    public function _1Zs(_arg1:MouseEvent):void {
        visible = false;
        this._Rn.dispatch();
    }

    private function _rP(_arg1:MouseEvent):void {
        this.renounce.dispatch();
    }


}
}//package _1f4

