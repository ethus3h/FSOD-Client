// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_2-t.GuildPlayerList

package _2t {
import _0CT._8w;

import _0Mr._5R;

import _0tf._0yo;

import _0y9._06T;

import _1PE.Account;

import _6u._TG;

import com.company.assembleegameclient.ui._1Db;
import com.company.assembleegameclient.util.GuildUtil;
import com.company.ui._V2;
import com.company.util._0CM;

import flash.display.Bitmap;
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class GuildPlayerList extends Sprite {

    public function GuildPlayerList(_arg1:int, _arg2:int, _arg3:String = "", _arg4:int = 0) {
        this._0Ay = _arg1;
        this._1Sy = _arg2;
        this._0c3 = _arg3;
        this._0dB = _arg4;
        this._0Nr = new _06T().setSize(22).setColor(0xB3B3B3);
        this._0Nr.setBold(true);
        this._0Nr.setStringBuilder(new _5R().setParams(_TG._1UX));
        this._0Nr.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._0Nr.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        this._0Nr.x = (800 / 2);
        this._0Nr.y = 550;
        addChild(this._0Nr);
        var _local5:Account = _8w._1Sz().getInstance(Account);
        var _local6:Object = {
            num: _arg1,
            offset: _arg2
        };
        _0CM._0lh(_local6, _local5._1iT());
        this._02D = _8w._1Sz().getInstance(_0yo);
        this._02D._1Vb(2);
        this._02D.complete.addOnce(this.onComplete);
        this._02D.sendRequest("/guild/listMembers", _local6);
    }
    private var _0Ay:int;
    private var _1Sy:int;
    private var _0c3:String;
    private var _0dB:int;
    private var _02D:_0yo;
    private var _0Nr:_06T;
    private var _zj:_V2;
    private var _1Uo:_V2;
    private var _0gM:Bitmap;
    private var _0R8:Shape;
    private var _1qT:Sprite;
    private var _1id:Sprite;
    private var _q:_06T;
    private var _mI:_1Db;

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._03s(_arg2);
        } else {
            this._0VA(_arg2);
        }
        ;
    }

    private function _03s(_arg1:String):void {
        this.build(XML(_arg1));
    }

    private function _0VA(_arg1:String):void {
    }

    private function build(_arg1:XML):void {
        var _local2:Graphics;
        var _local5:XML;
        var _local6:int;
        var _local7:Boolean;
        var _local8:int;
        var _local9:_1Hu;
        removeChild(this._0Nr);
        this._zj = new _V2(32, 0xB3B3B3, false, 0, 0);
        this._zj.setBold(true);
        this._zj.text = _arg1.@name;
        this._zj._fm();
        this._zj.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._zj.y = 24;
        this._zj.x = ((stage.stageWidth / 2) - (this._zj.width / 2));
        addChild(this._zj);
        this._1Uo = new _V2(22, 0xFFFFFF, false, 0, 0);
        this._1Uo.text = _arg1.CurrentFame;
        this._1Uo._fm();
        this._1Uo.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._1Uo.x = (0x0300 - this._1Uo.width);
        this._1Uo.y = ((32 / 2) - (this._1Uo.height / 2));
        addChild(this._1Uo);
        this._0gM = new Bitmap(GuildUtil._Ln(40));
        this._0gM.x = 760;
        this._0gM.y = ((32 / 2) - (this._0gM.height / 2));
        addChild(this._0gM);
        this._0R8 = new Shape();
        _local2 = this._0R8.graphics;
        _local2.clear();
        _local2.lineStyle(2, 0x545454);
        _local2.moveTo(0, 100);
        _local2.lineTo(stage.stageWidth, 100);
        _local2.lineStyle();
        addChild(this._0R8);
        this._1qT = new Sprite();
        this._1qT.x = 10;
        this._1qT.y = 110;
        var _local3:Shape = new Shape();
        _local2 = _local3.graphics;
        _local2.beginFill(0);
        _local2.drawRect(0, 0, _1Hu.WIDTH, 430);
        _local2.endFill();
        this._1qT.addChild(_local3);
        this._1qT.mask = _local3;
        addChild(this._1qT);
        this._1id = new Sprite();
        var _local4:int;
        for each (_local5 in _arg1.Member) {
            _local7 = (this._0c3 == _local5.Name);
            _local8 = _local5.Rank;
            _local9 = new _1Hu(((this._1Sy + _local4) + 1), _local5.Name, _local5.Rank, _local5.Fame, _local7, this._0dB);
            _local9.y = (_local4 * _1Hu.HEIGHT);
            this._1id.addChild(_local9);
            _local4++;
        }
        ;
        _local6 = (GuildUtil._0Vb - (this._1Sy + _local4));
        this._q = new _06T().setSize(22).setColor(0xB3B3B3);
        this._q.setStringBuilder(new _5R().setParams(_TG._17H, {openSlots: _local6}));
        this._q.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._q.setAutoSize(TextFieldAutoSize.CENTER);
        this._q.x = (_1Hu.WIDTH / 2);
        this._q.y = (_local4 * _1Hu.HEIGHT);
        this._1id.addChild(this._q);
        this._1qT.addChild(this._1id);
        if (this._1id.height > 400) {
            this._mI = new _1Db(16, 400);
            this._mI.x = ((800 - this._mI.width) - 4);
            this._mI.y = 104;
            this._mI._cf(400, this._1id.height);
            this._mI.addEventListener(Event.CHANGE, this._bI);
            addChild(this._mI);
        }
        ;
    }

    private function _bI(_arg1:Event):void {
        this._1id.y = (-(this._mI._0LY()) * (this._1id.height - 400));
    }


}
}//package _2-t

