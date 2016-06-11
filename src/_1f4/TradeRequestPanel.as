// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4.TradeRequestPanel

package _1f4 {
import _07g._2v;

import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.ui._1jP;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.utils.Timer;

public class TradeRequestPanel extends Panel {

    public function TradeRequestPanel(_arg1:_0p2, _arg2:String) {
        super(_arg1);
        this.name_ = _arg2;
        this._ZE = new _06T().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH);
        this._ZE.setStringBuilder(new _5R().setParams(_TG._pR, {name: _arg2}));
        this._ZE.setBold(true);
        this._ZE.setWordWrap(true).setMultiLine(true);
        this._ZE.setAutoSize(TextFieldAutoSize.CENTER);
        this._ZE.filters = [new DropShadowFilter(0, 0, 0)];
        this._ZE.y = 0;
        addChild(this._ZE);
        this._1IB = new _1jP(16, _TG._0Lt);
        this._1IB.addEventListener(MouseEvent.CLICK, this._Rx);
        addChild(this._1IB);
        this._0js = new _1jP(16, _TG._0ig);
        this._0js.addEventListener(MouseEvent.CLICK, this._105);
        addChild(this._0js);
        this._0Va = new Timer((20 * 1000), 1);
        this._0Va.start();
        this._0Va.addEventListener(TimerEvent.TIMER, this._5N);
        var _local3:_2v = new _2v();
        _local3.pushArgs(this._1IB.textChanged, this._0js.textChanged);
        _local3.complete.addOnce(this.onComplete);
    }
    public var name_:String;
    private var _ZE:_06T;
    private var _1IB:_1jP;
    private var _0js:_1jP;
    private var _0Va:Timer;

    private function onComplete():void {
        this._1IB.x = ((WIDTH / 4) - (this._1IB.width / 2));
        this._0js.x = (((3 * WIDTH) / 4) - (this._0js.width / 2));
        this._1IB.y = ((HEIGHT - this._1IB.height) - 4);
        this._0js.y = ((HEIGHT - this._0js.height) - 4);
    }

    private function _5N(_arg1:TimerEvent):void {
        dispatchEvent(new Event(Event.COMPLETE));
    }

    private function _Rx(_arg1:MouseEvent):void {
        dispatchEvent(new Event(Event.COMPLETE));
    }

    private function _105(_arg1:MouseEvent):void {
        gs_.gsc_.requestTrade(this.name_);
        dispatchEvent(new Event(Event.COMPLETE));
    }


}
}//package _1f4

