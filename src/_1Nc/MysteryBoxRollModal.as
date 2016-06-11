// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Nc.MysteryBoxRollModal

package _1Nc {
import _07g._0Ek;

import _08Y._sC;

import _0CT._8w;

import _0Mr._1M;
import _0Mr._5R;

import _0Sj._05E;
import _0Sj._1l_;

import _0cA._0bz;

import _0tf._0yo;

import _0y9._06T;

import _10a._FU;

import _1E._03e;

import _1N.MysteryBoxInfo;

import _1PE.Account;

import _1kt._tA;

import _DO.GTween;

import _OP._PV;

import _Vb.Dialog;
import _Vb.NotEnoughFameDialog;

import __Nj._M4;

import _n._19y;

import _tI._a8;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.util.Currency;

import flash.display.Bitmap;
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;
import flash.utils.Timer;

import kabam.rotmg.assets._0vi;

public class MysteryBoxRollModal extends Sprite {

    public static const WIDTH:int = 415;
    public static const HEIGHT:int = 290;
    public static const _Uk:int = 20;
    private const playAgainString:String = "MysteryBoxRollModal.playAgainString";
    private const youWonString:String = "MysteryBoxRollModal.youWonString";
    private const rewardsInVaultString:String = "MysteryBoxRollModal.rewardsInVaultString";
    private const _0Fi:int = 1;
    private const _v5:int = 0;
    public static var open:Boolean;

    private static function makeModalBackground(_arg1:int, _arg2:int):_1l_ {
        var _local3:_1l_ = new _1l_();
        _local3.draw(_arg1, _arg2, _1l_._Ct);
        return (_local3);
    }

    public function MysteryBoxRollModal(_arg1:MysteryBoxInfo):void {
        this._Mt = _sC._1JY(WIDTH);
        this._0oX = new Vector.<Bitmap>();
        this._0PG = new _19y(this.playAgainString, 16, 0, Currency.INVALID);
        this._1I7 = new Vector.<_06T>();
        this.timer = new Timer(50);
        this._014 = new Timer(2000);
        this._0cR = new Vector.<int>();
        this._2m = new _0vi.EvolveBackground();
        this._kC = new _0vi.EvolveBackground();
        this._2f = new Sprite();
        super();
        this._BI = _arg1;
        this._Mt._1Fd();
        this._Mt.addEventListener(MouseEvent.CLICK, this.onCloseClick);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        if (this._BI._17I()) {
            this._0PG.setPrice(int(this._BI._0OD), int(this._BI._0BJ));
        } else {
            this._0PG.setPrice(int(this._BI._GU), int(this._BI._03c));
        }
        ;
        this._0PG.addEventListener(MouseEvent.CLICK, this._O5);
        this._0PG.x = (this._0PG.x + ((WIDTH / 2) - 100));
        this._0PG.y = (this._0PG.y + (HEIGHT - 40));
        this._0PG._1pD = 200;
        this._B = this._4D(this.rewardsInVaultString, _Uk, 220).setSize(20).setColor(0);
        this._B.filters = [];
        this._1dN();
        open = true;
        var _local2:_0bz = _8w._1Sz();
        this.client = _local2.getInstance(_0yo);
        this.account = _local2.getInstance(Account);
        var _local3:uint;
        while (_local3 < this._BI._1Ma.length) {
            this._0cR.push(0);
            _local3++;
        }
        ;
        this._1NO();
        this._0yc();
    }
    public var client:_0yo;
    public var account:Account;
    public var _1lZ:MysteryBoxSelectModal;
    private var _Mt:_05E;
    private var _BI:MysteryBoxInfo;
    private var _0oX:Vector.<Bitmap>;
    private var _0PG:_19y;
    private var _17E:_06T;
    private var _1I7:Vector.<_06T>;
    private var _B:_06T;
    private var timer:Timer;
    private var _014:Timer;
    private var _0cR:Vector.<int>;
    private var _1Lr:Number = 160;
    private var _0LP:String = "";
    private var _1Kp:Boolean = false;
    private var _a:Boolean = false;
    private var _2m:DisplayObject;
    private var _kC:DisplayObject;
    private var _2f:Sprite;
    private var state:int;
    private var _11:Boolean = false;

    public function _4D(_arg1:String, _arg2:int, _arg3:int, _arg4:Boolean = false):_06T {
        var _local5:_06T = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth((WIDTH - (_Uk * 2)));
        _local5.setBold(true);
        if (_arg4) {
            _local5.setStringBuilder(new _1M(_arg1));
        } else {
            _local5.setStringBuilder(new _5R().setParams(_arg1));
        }
        ;
        _local5.setWordWrap(true);
        _local5.setMultiLine(true);
        _local5.setAutoSize(TextFieldAutoSize.CENTER);
        _local5.setHorizontalAlign(TextFormatAlign.CENTER);
        _local5.filters = [new DropShadowFilter(0, 0, 0)];
        _local5.x = _arg2;
        _local5.y = _arg3;
        return (_local5);
    }

    private function _0yc():void {
        this.state = this._0Fi;
        if (!this._no()) {
            this.close(true);
        }
        ;
        this._Mt.visible = false;
        var _local1:Object = this.account._1iT();
        _local1.boxId = this._BI.id;
        if (this._BI._17I()) {
            _local1.price = this._BI._13;
            _local1.currency = this._BI._1UA;
        } else {
            _local1.price = this._BI._0ml;
            _local1.currency = this._BI._null;
        }
        ;
        this.client.sendRequest("/account/purchaseMysteryBox", _local1);
        this._17E = this._4D(this._BI._title, _Uk, 6, true).setSize(18);
        this._17E.setColor(0xFFDE00);
        addChild(this._17E);
        addChild(this._B);
        this._0iM();
        this._0LP = "";
        this._1Kp = false;
        this._a = false;
        this._014.addEventListener(TimerEvent.TIMER, this._0we);
        this._014.start();
        this.client.complete.addOnce(this.onComplete);
    }

    private function _0iM():void {
        var _local2:Bitmap;
        var _local1:int;
        while (_local1 < this._BI._1Ma.length) {
            _local2 = new Bitmap(ObjectLibrary.getRedrawnTextureFromType(this._BI._1Ma[_local1][this._0cR[_local1]], this._1Lr, true));
            this._0oX.push(_local2);
            _local1++;
        }
        ;
        this._1Ss(this._0oX);
        this.timer.addEventListener(TimerEvent.TIMER, this._1FL);
        this.timer.start();
    }

    private function _1Ss(_arg1:Vector.<Bitmap>):void {
        var _local2:Bitmap;
        switch (_arg1.length) {
            case 1:
                _arg1[0].x = (_arg1[0].x + ((WIDTH / 2) - 40));
                _arg1[0].y = (_arg1[0].y + ((HEIGHT / 2) - 20));
                break;
            case 2:
                _arg1[0].x = (_arg1[0].x + ((WIDTH / 2) + 20));
                _arg1[0].y = (_arg1[0].y + ((HEIGHT / 2) - 20));
                _arg1[1].x = (_arg1[1].x + ((WIDTH / 2) - 100));
                _arg1[1].y = (_arg1[1].y + ((HEIGHT / 2) - 20));
                break;
            case 3:
                _arg1[0].x = (_arg1[0].x + ((WIDTH / 2) - 140));
                _arg1[0].y = (_arg1[0].y + ((HEIGHT / 2) - 20));
                _arg1[1].x = (_arg1[1].x + ((WIDTH / 2) - 40));
                _arg1[1].y = (_arg1[1].y + ((HEIGHT / 2) - 20));
                _arg1[2].x = (_arg1[2].x + ((WIDTH / 2) + 60));
                _arg1[2].y = (_arg1[2].y + ((HEIGHT / 2) - 20));
                break;
        }
        ;
        for each (_local2 in _arg1) {
            addChild(_local2);
        }
        ;
    }

    private function _no():Boolean {
        var _local1:int;
        var _local2:int;
        var _local7:_M4;
        var _local8:_FU;
        if (this._BI._0OD != "") {
            _local1 = int(this._BI._0BJ);
            _local2 = int(this._BI._0OD);
        } else {
            _local1 = int(this._BI._03c);
            _local2 = int(this._BI._GU);
        }
        ;
        var _local3:Boolean = true;
        var _local4:int;
        var _local5:int;
        var _local6:Player = _8w._1Sz().getInstance(_03e).player;
        if (_local6 != null) {
            _local5 = _local6.credits_;
            _local4 = _local6._01D;
        } else {
            _local8 = _8w._1Sz().getInstance(_FU);
            if (_local8 != null) {
                _local5 = _local8._1fB();
                _local4 = _local8._00f();
            }
            ;
        }
        ;
        if ((((_local1 == Currency._1mE)) && ((_local5 < _local2)))) {
            _local7 = _8w._1Sz().getInstance(_M4);
            _local7.dispatch(new _0Ek());
            _local3 = false;
        } else {
            if ((((_local1 == Currency.FAME)) && ((_local4 < _local2)))) {
                _local7 = _8w._1Sz().getInstance(_M4);
                _local7.dispatch(new NotEnoughFameDialog());
                _local3 = false;
            }
            ;
        }
        ;
        return (_local3);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        var _local3:XML;
        var _local4:Player;
        var _local5:_FU;
        var _local6:_M4;
        var _local7:Dialog;
        var _local8:_0bz;
        var _local9:_PV;
        this._1Kp = true;
        if (_arg1) {
            _local3 = new XML(_arg2);
            this._0LP = _local3.Awards;
            if (this._a) {
                this._1Oe(_local3.Awards);
            }
            ;
            _local4 = _8w._1Sz().getInstance(_03e).player;
            if (_local4 != null) {
                if (_local3.hasOwnProperty("Gold")) {
                    _local4._Oi(int(_local3.Gold));
                } else {
                    if (_local3.hasOwnProperty("Fame")) {
                        _local4._01D = _local3.Fame;
                    }
                    ;
                }
                ;
            } else {
                _local5 = _8w._1Sz().getInstance(_FU);
                if (_local5 != null) {
                    if (_local3.hasOwnProperty("Gold")) {
                        _local5._Oi(int(_local3.Gold));
                    } else {
                        if (_local3.hasOwnProperty("Fame")) {
                            _local5._To(int(_local3.Fame));
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        } else {
            _local6 = _8w._1Sz().getInstance(_M4);
            _local7 = new Dialog("MysteryBoxRollModal.purchaseFailedString", "MysteryBoxRollModal.pleaseTryAgainString", "MysteryBoxRollModal.okString", null, null);
            _local7.addEventListener(Dialog.LEFT_BUTTON, this._1pY);
            _local6.dispatch(_local7);
            _local8 = _8w._1Sz();
            _local9 = _local8.getInstance(_PV);
            _local9._1OU();
            _local9.start();
            this.close(true);
        }
        ;
    }

    private function _1dN():void {
        var _local1:int = 27;
        var _local2:int = 28;
        this._kC.y = (this._2m.y = _local1);
        this._kC.x = (this._2m.x = 1);
        this._kC.width = (this._2m.width = (WIDTH - 1));
        this._kC.height = (this._2m.height = (HEIGHT - _local2));
        var _local3:_tA = new _tA();
        var _local4:_tA = new _tA();
        _local3._03i = 50;
        _local4._03i = (_local3._03i * 1.5);
        var _local5:Number = 0.7;
        _local4.width = (_local3.width * _local5);
        _local4.height = (_local3.height * _local5);
        _local4.alpha = (_local3.alpha = 0.7);
        this._2f.addChild(_local3);
        this._2f.addChild(_local4);
        this._2f.mask = this._kC;
        this._2f.x = (WIDTH / 2);
        this._2f.y = (((HEIGHT - 30) / 2) + 30);
        addChild(this._2m);
        addChild(this._kC);
        this._2f.alpha = 0;
        addChild(this._2f);
        addChild(makeModalBackground(WIDTH, HEIGHT));
        addChild(this._Mt);
    }

    private function close(_arg1:Boolean = false):void {
        var _local2:_M4;
        if (this.state == this._0Fi) {
            return;
        }
        ;
        if (!_arg1) {
            _local2 = _8w._1Sz().getInstance(_M4);
            if (this._1lZ != null) {
                _local2.dispatch(this._1lZ);
            } else {
                _local2.dispatch(new MysteryBoxSelectModal());
            }
            ;
        }
        ;
        open = false;
    }

    private function _1Oe(_arg1:String):void {
        var _local4:String;
        var _local5:uint;
        var _local6:_06T;
        this.timer.removeEventListener(TimerEvent.TIMER, this._1FL);
        this.timer.stop();
        this.state = this._v5;
        this._Mt.visible = true;
        var _local2:Array = _arg1.split(",");
        removeChild(this._B);
        this._17E.setStringBuilder(new _5R().setParams(this.youWonString));
        this._17E.setColor(0xFFDE00);
        var _local3:int = 40;
        for each (_local4 in _local2) {
            _local6 = this._4D(ObjectLibrary._1w3[_local4], _Uk, _local3).setSize(16).setColor(0);
            _local6.filters = [];
            _local6.setSize(18);
            _local6.alpha = 0;
            addChild(_local6);
            this._1I7.push(_local6);
            this._1h7(_local6, {
                alpha: 0,
                x: 100
            }, {
                alpha: 1,
                x: 20
            });
            _local3 = (_local3 + 25);
        }
        ;
        this._0PG.alpha = 0;
        addChild(this._0PG);
        _local5 = 0;
        while (_local5 < _local2.length) {
            if (_local5 < this._0oX.length) {
                this._0oX[_local5].bitmapData = new Bitmap(ObjectLibrary.getRedrawnTextureFromType(int(_local2[_local5]), this._1Lr, true)).bitmapData;
            }
            ;
            _local5++;
        }
        ;
        _local5 = 0;
        while (_local5 < this._0oX.length) {
            this._1h7(this._0oX[_local5], {
                scaleX: 1.25,
                scaleY: 1.25
            }, {
                scaleX: 1,
                scaleY: 1
            });
            _local5++;
        }
        ;
        this._1h7(this._2f, {alpha: 0}, {alpha: 1});
        this._1h7(this._0PG, {alpha: 0}, {alpha: 1});
        this._11 = true;
    }

    private function _1h7(_arg1:DisplayObject, _arg2:Object = null, _arg3:Object = null):void {
        var _local4:GTween = new GTween(_arg1, (0.5 * 1), _arg2, {ease: _a8._0RY});
        _local4._1QN = new GTween(_arg1, (0.5 * 1), _arg3, {ease: _a8._19O});
        _local4._1QN.paused = true;
    }

    private function _8():void {
        var _local1:_06T;
        var _local2:Bitmap;
        this._2f.alpha = 0;
        removeChild(this._17E);
        for each (_local1 in this._1I7) {
            removeChild(_local1);
        }
        ;
        while (this._1I7.length > 0) {
            this._1I7.pop();
        }
        ;
        removeChild(this._0PG);
        for each (_local2 in this._0oX) {
            removeChild(_local2);
        }
        ;
        while (this._0oX.length > 0) {
            this._0oX.pop();
        }
        ;
    }

    private function _1NO():void {
        x = ((WebMain._0b2.stageWidth / 2) - (WIDTH / 2));
        y = ((WebMain._0b2.stageHeight / 2) - (HEIGHT / 2));
    }

    public function onCloseClick(_arg1:MouseEvent):void {
        this.close();
    }

    private function _0we(_arg1:TimerEvent):void {
        this._014.stop();
        this._a = true;
        if (this._1Kp) {
            this._1Oe(this._0LP);
        }
        ;
        this._014.removeEventListener(TimerEvent.TIMER, this._0we);
    }

    private function _1FL(_arg1:TimerEvent):void {
        this.timer.stop();
        var _local2:uint;
        while (_local2 < this._0cR.length) {
            if (this._0cR[_local2] < (this._BI._1Ma[_local2].length - 1)) {
                var _local3 = this._0cR;
                var _local4 = _local2;
                var _local5 = (_local3[_local4] + 1);
                _local3[_local4] = _local5;
            } else {
                this._0cR[_local2] = 0;
            }
            ;
            this._0oX[_local2].bitmapData = new Bitmap(ObjectLibrary.getRedrawnTextureFromType(this._BI._1Ma[_local2][this._0cR[_local2]], this._1Lr, true)).bitmapData;
            _local2++;
        }
        ;
        this.timer.start();
    }

    private function _1pY(_arg1:Event):void {
        var _local2:_M4;
        _local2 = _8w._1Sz().getInstance(_M4);
        _local2.dispatch(new MysteryBoxSelectModal());
    }

    private function onRemovedFromStage(_arg1:Event):void {
        open = false;
    }

    private function _O5(_arg1:MouseEvent):void {
        this._8();
        this._0yc();
    }


}
}//package _1Nc

