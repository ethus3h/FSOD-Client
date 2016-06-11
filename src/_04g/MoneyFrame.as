// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04g.MoneyFrame

package _04g {
import _0Mc.Frame;
import _0Mc._1vl;
import _0Mc._Qg;

import _1Sm._sy;

import _1T3._hh;

import _6u._TG;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui._1jP;
import com.company.assembleegameclient.ui._Wt;
import com.company.assembleegameclient.util._be;
import com.company.assembleegameclient.util.offer.Offer;
import com.company.assembleegameclient.util.offer.Offers;

import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;

public class MoneyFrame extends Sprite {

    private static const TITLE:String = _TG._1Qg;//"MoneyFrame.title"
    private static const _0Q:String = "/money";
    private static const _1EK:String = _TG._0kP;//"MoneyFrame.payment"
    private static const _1ig:String = _TG._z0;//"MoneyFrame.gold"
    private static const _f3:String = _TG._1eF;//"MoneyFrame.buy"
    private static const WIDTH:int = 550;

    public function MoneyFrame() {
        this.buyNow = new _sy(Offer, String);
        this.cancel = new _sy();
    }
    public var buyNow:_sy;
    public var cancel:_sy;
    public var _0DV:_1jP;
    public var _1MC:_Wt;
    private var _0eR:Offers;
    private var config:_hh;
    private var _1A0:Frame;
    private var _20S:_1vl;
    private var _1RX:_Qg;

    public function initialize(_arg1:Offers, _arg2:_hh):void {
        this._0eR = _arg1;
        this.config = _arg2;
        this._1A0 = new Frame(TITLE, "", "", _0Q, WIDTH);
        ((_arg2._1L1()) && (this._rI()));
        this._0NY();
        this._15W();
        addChild(this._1A0);
        this._084(_TG._1Ok);
        this._1MC.addEventListener(MouseEvent.CLICK, this.onCancel);
    }

    public function _rI():void {
        this._1I5();
        this._1A0._0Uo(_1EK);
        this._1A0._0M4(this._20S);
        this._1A0._1Me(14);
        this._1qM(0x7F7F7F, 536, 2, 10);
        this._1A0._1Me(6);
    }

    public function _15W():void {
        this._0DV = new _1jP(16, _f3);
        this._0DV.addEventListener(MouseEvent.CLICK, this._0YO);
        this._0DV.x = 8;
        this._0DV.y = (this._1A0.h_ - 52);
        this._1A0.addChild(this._0DV);
    }

    public function _084(_arg1:String):void {
        this._1MC = new _Wt(18, true, _arg1);
        if (_arg1 != "") {
            this._1MC.buttonMode = true;
            this._1MC.x = ((((800 / 2) + (this._1A0.w_ / 2)) - this._1MC.width) - 26);
            this._1MC.y = (((600 / 2) + (this._1A0.h_ / 2)) - 52);
            this._1MC.setAutoSize(TextFieldAutoSize.RIGHT);
            addChild(this._1MC);
        }
        ;
    }

    public function disable():void {
        this._1A0.disable();
        this._1MC._1bP(0xB3B3B3);
        this._1MC.mouseEnabled = false;
        this._1MC.mouseChildren = false;
    }

    public function _9G():void {
        this._1MC._1aa();
        this._1MC.mouseEnabled = true;
        this._1MC.mouseChildren = true;
    }

    private function _1I5():void {
        var _local1:Vector.<String> = this._1uH();
        this._20S = new _1vl(_local1);
        this._20S.setSelected(Parameters.data_.paymentMethod);
    }

    private function _1uH():Vector.<String> {
        var _local2:_be;
        var _local1:Vector.<String> = new Vector.<String>();
        for each (_local2 in _be._1WW) {
            _local1.push(_local2.label_);
        }
        ;
        return (_local1);
    }

    private function _1qM(_arg1:int, _arg2:int, _arg3:int, _arg4:int):void {
        var _local5:Shape = new Shape();
        _local5.graphics.beginFill(_arg1);
        _local5.graphics.drawRect(_arg4, 0, (_arg2 - (_arg4 * 2)), _arg3);
        _local5.graphics.endFill();
        this._1A0._1MU(_local5, 0);
    }

    private function _0NY():void {
        this._1RX = new _Qg(this._0eR, this.config);
        this._1RX._kU(this.config._kU());
        this._1A0._0Uo(_1ig);
        this._1A0._1MU(this._1RX);
    }

    protected function _0YO(_arg1:MouseEvent):void {
        this.disable();
        var _local2:Offer = this._1RX._Y6().offer;
        var _local3:String = ((this._20S) ? this._20S._0ZN() : null);
        this.buyNow.dispatch(_local2, ((_local3) || ("")));
    }

    protected function onCancel(_arg1:MouseEvent):void {
        stage.focus = stage;
        this.cancel.dispatch();
    }


}
}//package _04g

