// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4._iG

package _1f4 {
import _07g._2v;

import _0Mr._1M;
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

public class _iG extends Panel {

    private const _qH:_2v = new _2v();

    public function _iG(_arg1:_0p2, _arg2:String, _arg3:String) {
        super(_arg1);
        this.name_ = _arg2;
        this.guildName_ = _arg3;
        this._ZE = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth(WIDTH).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
        this._ZE.setStringBuilder(new _5R().setParams(_TG._1ko, {playerName: _arg2}).setPrefix('<p align="center">').setPostfix("</p>"));
        this._ZE.filters = [new DropShadowFilter(0, 0, 0)];
        this._ZE.y = 0;
        addChild(this._ZE);
        this._O8 = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
        this._O8.setStringBuilder(new _1M((('<p align="center">' + this.guildName_) + "</p>")));
        this._O8.filters = [new DropShadowFilter(0, 0, 0)];
        this._O8.y = 20;
        addChild(this._O8);
        this._1IB = new _1jP(16, _TG._17R);
        this._1IB.addEventListener(MouseEvent.CLICK, this._Rx);
        this._qH.push(this._1IB.textChanged);
        addChild(this._1IB);
        this._0js = new _1jP(16, _TG._08C);
        this._0js.addEventListener(MouseEvent.CLICK, this._105);
        this._qH.push(this._0js.textChanged);
        addChild(this._0js);
        this._0Va = new Timer((20 * 1000), 1);
        this._0Va.start();
        this._0Va.addEventListener(TimerEvent.TIMER, this._5N);
        this._qH.complete.addOnce(this.alignUI);
    }
    public var name_:String;
    private var _ZE:_06T;
    private var guildName_:String;
    private var _O8:_06T;
    private var _1IB:_1jP;
    private var _0js:_1jP;
    private var _0Va:Timer;

    private function alignUI():void {
        this._1IB.x = ((WIDTH / 4) - (this._1IB.width / 2));
        this._1IB.y = ((HEIGHT - this._1IB.height) - 4);
        this._0js.x = (((3 * WIDTH) / 4) - (this._0js.width / 2));
        this._0js.y = ((HEIGHT - this._0js.height) - 4);
    }

    private function _5N(_arg1:TimerEvent):void {
        dispatchEvent(new Event(Event.COMPLETE));
    }

    private function _Rx(_arg1:MouseEvent):void {
        dispatchEvent(new Event(Event.COMPLETE));
    }

    private function _105(_arg1:MouseEvent):void {
        gs_.gsc_.joinGuild(this.guildName_);
        dispatchEvent(new Event(Event.COMPLETE));
    }


}
}//package _1f4

