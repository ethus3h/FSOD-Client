// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.ConfirmBuyModal

package com.company.assembleegameclient.ui {
import _08Y._sC;

import _0Mr._5R;

import _0Ql._ZQ;

import _0Sj._05E;
import _0Sj._1l_;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import _n._19y;

import com.company.assembleegameclient.objects.SellableObject;
import com.company.assembleegameclient.util.Currency;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;

public class ConfirmBuyModal extends Sprite {

    public static const WIDTH:int = 280;
    public static const HEIGHT:int = 185;
    public static const _Uk:int = 20;
    private const _Mt:_05E = _sC._1JY(ConfirmBuyModal.WIDTH);
    private const buyButton:_19y = new _19y(_TG._O9, 16, 0, Currency.INVALID);
    public static var _Ra:Boolean = true;

    private static function makeModalBackground(_arg1:int, _arg2:int):_1l_ {
        var _local3:_1l_ = new _1l_();
        _local3.draw(_arg1, _arg2);
        _local3._0ho(_1l_.HORIZONTAL_DIVISION, 30);
        return (_local3);
    }

    public function ConfirmBuyModal(_arg1:_sy, _arg2:SellableObject, _arg3:Number):void {
        ConfirmBuyModal._Ra = false;
        this._0SS = _arg1;
        this._9g = _arg2;
        this._Ha = _arg3;
        this.events();
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._18F();
        this._1dN();
        this.buyButton.setPrice(this._9g.price_, this._9g.currency_);
        var _local4:String = this._9g.soldObjectName();
        addChild(this._4D(_TG._037, _Uk, 5));
        addChild(this._4D(_TG._7m, _Uk, 40));
        addChild(this._4D(_local4, _Uk, 100));
        this.open = true;
    }
    public var _0SS:_sy;
    public var open:Boolean;
    public var _Ha:int;
    private var _gO:_ZQ;
    private var _9g:SellableObject;

    public function _4D(_arg1:String, _arg2:int, _arg3:int):_06T {
        var _local4:_06T = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth((WIDTH - (_Uk * 2)));
        _local4.setBold(true);
        _local4.setStringBuilder(new _5R().setParams(_arg1));
        _local4.setWordWrap(true);
        _local4.setMultiLine(true);
        _local4.setAutoSize(TextFieldAutoSize.CENTER);
        _local4.setHorizontalAlign(TextFormatAlign.CENTER);
        _local4.filters = [new DropShadowFilter(0, 0, 0)];
        _local4.x = _arg2;
        _local4.y = _arg3;
        return (_local4);
    }

    public function onCloseClick():void {
        this.close();
    }

    private function _18F():void {
        var _local1 = -300;
        var _local2 = -200;
        this.x = (_local1 + ((-1 * ConfirmBuyModal.WIDTH) * 0.5));
        this.y = (_local2 + ((-1 * ConfirmBuyModal.HEIGHT) * 0.5));
        this.buyButton.x = (this.buyButton.x + 35);
        this.buyButton.y = (this.buyButton.y + 142);
        this.buyButton.x = ((WIDTH / 2) - (this._Ha / 2));
    }

    private function events():void {
        this._Mt.clicked.add(this.onCloseClick);
        this._gO = new _ZQ(this.buyButton, MouseEvent.CLICK, MouseEvent);
        this._gO.add(this._0cd);
    }

    private function _1dN():void {
        addChild(makeModalBackground(ConfirmBuyModal.WIDTH, ConfirmBuyModal.HEIGHT));
        addChild(this._Mt);
        addChild(this.buyButton);
    }

    private function close():void {
        parent.removeChild(this);
        ConfirmBuyModal._Ra = true;
        this.open = false;
    }

    public function _0cd(_arg1:MouseEvent):void {
        this._0SS.dispatch(this._9g);
        this.close();
    }

    private function onRemovedFromStage(_arg1:Event):void {
        ConfirmBuyModal._Ra = true;
        this.open = false;
    }


}
}//package com.company.assembleegameclient.ui

