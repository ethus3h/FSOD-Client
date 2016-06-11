// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no.FortuneGroundPanel

package _0no {
import _04g._GE;

import _04j._1Wz;

import _0CT._8w;

import _0EN._0u4;

import _0Mr._5R;

import _0cA._0bz;

import _0y9._06T;

import _1PE.Account;

import _1Sm._sy;

import _1f4.Panel;

import _6u._TG;

import _E4._AQ;

import _OP._PV;

import _QC._0Ew;

import __Nj._M4;

import _n._0m8;
import _n._19y;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.SellableObject;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui._1jP;
import com.company.assembleegameclient.util.Currency;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class FortuneGroundPanel extends Panel {

    private const _0Xe:int = 17;
    private static var _3V:Boolean;

    public function FortuneGroundPanel(_arg1:GameSprite, _arg2:uint) {
        this._0SS = new _sy(SellableObject);
        var _local3:_0bz = _8w._1Sz();
        var _local4:_PV = _local3.getInstance(_PV);
        _local4.start();
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
        var _local5 = "FortuneGroundPanel.play";
        var _local6 = "MysteryBoxPanel.checkBackLater";
        var _local7 = "FortuneGroundPanel.alchemist";
        var _local8:_0Ew = _local3.getInstance(_0Ew);
        var _local9:Account = _local3.getInstance(Account);
        if (((_0Ew._05m) && (_local9._vD()))) {
            this._1xv = new _1jP(16, _local5);
            addChild(this._1xv);
        } else {
            this._1xv = new _1jP(16, _local6);
            addChild(this._1xv);
        }
        ;
        this.nameText_.setStringBuilder(new _5R().setParams(_local7));
        this.bitmap_.bitmapData = _AQ._1W8(_arg2).bitmapData;
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        if (!_1Wz._so) {
            this._1xv.addEventListener(MouseEvent.CLICK, this._8G);
            WebMain._0b2.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        } else {
            _1Wz.closed.add(this._1eV);
        }
        ;
    }
    public var _0SS:_sy;
    private var _9g:SellableObject;
    private var nameText_:_06T;
    private var _my:_19y;
    private var _1xv:_1jP;
    private var _0nd:Sprite;
    private var bitmap_:Bitmap;
    private var _0MS:Sprite;

    override public function draw():void {
        this.nameText_.y = (((this.nameText_.height) > 30) ? 0 : 12);
        this._1xv.x = ((WIDTH / 2) - (this._1xv.width / 2));
        this._1xv.y = ((HEIGHT - (this._1xv.height / 2)) - this._0Xe);
        if (!contains(this._1xv)) {
            addChild(this._1xv);
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

    private function _1eV():void {
        this._1xv.addEventListener(MouseEvent.CLICK, this._8G);
        WebMain._0b2.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        _1Wz.closed.remove(this._1eV);
    }

    private function _1ZE():void {
        if (_1Wz._so) {
            return;
        }
        ;
        var _local1:_0bz = _8w._1Sz();
        var _local2:_0Ew = _local1.getInstance(_0Ew);
        var _local3:Account = _local1.getInstance(Account);
        var _local4:_M4 = _local1.getInstance(_M4);
        if (((_local2._0C()) && (_local3._vD()))) {
            _local4.dispatch(new _1Wz());
            stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
            this._1xv.removeEventListener(MouseEvent.CLICK, this._8G);
            _1Wz.closed.add(this._1eV);
        } else {
            if (!_local3._vD()) {
                _local4.dispatch(new _GE("SellableObjectPanelMediator.text", {type: Currency._1sg(Currency._1mE)}));
            }
            ;
        }
        ;
    }

    private function _0kA(_arg1:MouseEvent):void {
        var _local2:_0u4;
        if (this._0MS == null) {
            _local2 = _8w._1Sz().getInstance(_0Ew).getFortune();
            this._0MS = _0m8.make(_local2._71);
            this._0MS.x = (this._0MS.x - (this._0MS.width + 10));
            this._0MS.y = (this._0MS.y - (this._0MS.height - this.height));
            if (this._0MS != null) {
                addChild(this._0MS);
            }
            ;
        }
        ;
    }

    private function _1XV(_arg1:MouseEvent):void {
        if (((!((this._0MS == null))) && (this._0MS.parent))) {
            removeChild(this._0MS);
            this._0MS = null;
        }
        ;
    }

    private function onAddedToStage(_arg1:Event):void {
        this._0nd.x = -4;
        this._0nd.y = -8;
        this.nameText_.x = 44;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        this._1xv.removeEventListener(MouseEvent.CLICK, this._8G);
        _1Wz.closed.remove(this._1eV);
    }

    private function _8G(_arg1:MouseEvent):void {
        this._1ZE();
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null)))) {
            this._1ZE();
        }
        ;
    }


}
}//package _0no

