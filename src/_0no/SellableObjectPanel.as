// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no.SellableObjectPanel

package _0no {
import _0CT._8w;

import _0Mr._5R;

import _0y9._06T;

import _1PE.Account;

import _1Sm._sy;

import _1f4.Panel;

import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import _6u._TG;

import _n._19y;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects.SellableObject;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui.ConfirmBuyModal;
import com.company.assembleegameclient.ui.RankText;
import com.company.assembleegameclient.util.Currency;
import com.company.assembleegameclient.util.GuildUtil;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class SellableObjectPanel extends Panel implements _1q5 {

    private const _0Xe:int = 17;

    private static function _0p7(_arg1:int):Sprite {
        var requiredText:_06T;
        var rankText:Sprite;
        var rankReq:int = _arg1;
        var rankReqText:Sprite = new Sprite();
        requiredText = new _06T().setSize(16).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
        requiredText.filters = [new DropShadowFilter(0, 0, 0)];
        rankReqText.addChild(requiredText);
        rankText = new RankText(rankReq, false, false);
        rankReqText.addChild(rankText);
        requiredText.textChanged.addOnce(function ():void {
            rankText.x = ((requiredText.width * 0.5) + 4);
            rankText.y = (-(rankText.height) / 2);
        });
        requiredText.setStringBuilder(new _5R().setParams(_TG._J0));
        return (rankReqText);
    }

    private static function _1TH(_arg1:int):_06T {
        var _local2:_06T;
        _local2 = new _06T().setSize(16).setColor(0xFF0000).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
        var _local3:String = GuildUtil._1Be(_arg1);
        _local2.setStringBuilder(new _5R().setParams(_TG._0mr, {amount: _local3}));
        _local2.filters = [new DropShadowFilter(0, 0, 0)];
        return (_local2);
    }

    public function SellableObjectPanel(_arg1:GameSprite, _arg2:SellableObject) {
        this._8c = new _1Ud();
        this._0SS = new _sy(SellableObject);
        super(_arg1);
        this.nameText_ = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth((WIDTH - 44));
        this.nameText_.setBold(true);
        this.nameText_.setStringBuilder(new _5R().setParams(_TG._p9));
        this.nameText_.setWordWrap(true);
        this.nameText_.setMultiLine(true);
        this.nameText_.setAutoSize(TextFieldAutoSize.CENTER);
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.nameText_);
        this._0nd = new Sprite();
        addChild(this._0nd);
        this.bitmap_ = new Bitmap(null);
        this._0nd.addChild(this.bitmap_);
        this._my = new _19y(_TG._O9, 16, 0, Currency.INVALID);
        this._my.addEventListener(MouseEvent.CLICK, this._0OV);
        addChild(this._my);
        this._ot(_arg2);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._8c._0qm(this);
        this._8c.tooltip = _arg2.getTooltip();
    }
    public var _8c:_1Ud;
    public var _0SS:_sy;
    private var _9g:SellableObject;
    private var nameText_:_06T;
    private var _my:_19y;
    private var _1Go:Sprite;
    private var _1yT:_06T;
    private var _0nd:Sprite;
    private var bitmap_:Bitmap;
    private var _Pm:ConfirmBuyModal;

    override public function draw():void {
        var _local1:Player = gs_.map.player_;
        this.nameText_.y = (((this.nameText_.height) > 30) ? 0 : 12);
        var _local2:int = this._9g._1DL;
        if (_local1.numStars_ < _local2) {
            if (contains(this._my)) {
                removeChild(this._my);
            }
            ;
            if ((((this._1Go == null)) || (!(contains(this._1Go))))) {
                this._1Go = _0p7(_local2);
                this._1Go.x = ((WIDTH / 2) - (this._1Go.width / 2));
                this._1Go.y = ((HEIGHT - (this._1Go.height / 2)) - 20);
                addChild(this._1Go);
            }
            ;
        } else {
            if (_local1.guildRank_ < this._9g._16t) {
                if (contains(this._my)) {
                    removeChild(this._my);
                }
                ;
                if ((((this._1yT == null)) || (!(contains(this._1yT))))) {
                    this._1yT = _1TH(this._9g._16t);
                    this._1yT.x = ((WIDTH / 2) - (this._1yT.width / 2));
                    this._1yT.y = ((HEIGHT - (this._1yT.height / 2)) - 20);
                    addChild(this._1yT);
                }
                ;
            } else {
                this._my.setPrice(this._9g.price_, this._9g.currency_);
                this._my.setEnabled((gs_.gsc_.outstandingBuy_ == null));
                this._my.x = ((WIDTH / 2) - (this._my.width / 2));
                this._my.y = ((HEIGHT - (this._my.height / 2)) - this._0Xe);
                if (!contains(this._my)) {
                    addChild(this._my);
                }
                ;
                if (((!((this._1Go == null))) && (contains(this._1Go)))) {
                    removeChild(this._1Go);
                }
                ;
            }
            ;
        }
        ;
    }

    public function _ot(_arg1:SellableObject):void {
        if (_arg1 == this._9g) {
            return;
        }
        ;
        this._9g = _arg1;
        this._my.setPrice(this._9g.price_, this._9g.currency_);
        var _local2:String = this._9g.soldObjectName();
        this.nameText_.setStringBuilder(new _5R().setParams(_local2));
        this.bitmap_.bitmapData = this._9g.getIcon();
    }

    public function _1Tg(_arg1:_1PV):void {
        this._8c._1Tg(_arg1);
    }

    public function _1ml():_1PV {
        return (this._8c._1ml());
    }

    public function _Md(_arg1:_GV):void {
        this._8c._Md(_arg1);
    }

    public function _0ec():_GV {
        return (this._8c._0ec());
    }

    private function _0Jg():void {
        var _local1:Account = _8w._1Sz().getInstance(Account);
        if (((((!((parent == null))) && (_local1._vD()))) && (!((this._9g.objectType_ == 0x0505))))) {
            this._Pm = new ConfirmBuyModal(this._0SS, this._9g, this._my.width);
            parent.addChild(this._Pm);
        } else {
            this._0SS.dispatch(this._9g);
        }
        ;
    }

    private function onAddedToStage(_arg1:Event):void {
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        this._0nd.x = -4;
        this._0nd.y = -8;
        this.nameText_.x = 44;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        if (((((!((parent == null))) && (!((this._Pm == null))))) && (this._Pm.open))) {
            parent.removeChild(this._Pm);
        }
        ;
    }

    private function _0OV(_arg1:MouseEvent):void {
        if (ConfirmBuyModal._Ra) {
            this._0Jg();
        }
        ;
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null)))) && (ConfirmBuyModal._Ra))) {
            this._0Jg();
        }
        ;
    }


}
}//package _0no

