// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04j._1Wz

package _04j {
import _04g._AJ;

import _07g._0Ek;

import _0CT._8w;

import _0EN._0u4;

import _0Sj._05E;

import _0cA._0bz;

import _0no._fY;

import _0tf._0yo;

import _11j._1ST;

import _1E._03e;

import _1Kr._1xb;

import _1PE.Account;

import _1Sm._sy;

import _DO.GTween;

import _GI._08I;
import _GI._69;

import _QC._0Ew;

import _Vb.Dialog;
import _Vb._Hx;

import __Nj._0ay;
import __Nj._M4;

import _n._0m8;
import _n._0se;
import _n._1e;

import _tI._a8;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.map._1wN;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.util.Currency;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.filters.GlowFilter;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;
import flash.utils.Timer;
import flash.utils.getTimer;

public class _1Wz extends _AJ {

    public static const _1CS:int = 800;
    public static const _1aw:int = 600;
    public static const STATE_ROUND_1:int = 1;
    public static const STATE_ROUND_2:int = 2;
    public static const _1fs:Number = 200;
    private static const _1gO:int = 120;
    public static const closed:_sy = new _sy();
    private const _0ad:Number = 1200;
    private const _HE:Number = 100;
    private const _0FA:int = 0;
        private const _DH:int = 1;//800
        private const _1v2:int = 120;//600
    private const _1xd:Number = 1.3;
    private const _IU:Number = 6;
    private const _ly:Number = 2.75;
        private const DISPLAY_PRIZE_TIME_1:Number = 3.75;//280
    private const DISPLAY_PRIZE_TIME_2:Number = 5;
    private const _qJ:Number = 0.12;
    private const _0ib:Number = 10;
    public static var _Go:Class = _fC;
    public static var _1Jd:Class = _0IU;
    public static var fortunePlatformEmbed2:Class = FortuneModal_fortunePlatformEmbed2;
public static var _0JX:int = _1CS;
public static var _ZZ:int = _1aw;
    public static var _1jd:int;
    public static var _Wa:int;
public static var _2V:int = ((_1aw / 2) - 20);
    public static var _so:Boolean = false;
    private static var _GO:Vector.<TextField>;

    public static function _1ET(_arg1:DisplayObject, _arg2:Object = null, _arg3:Object = null, _arg4:Function = null):void {
        var _local5:GTween = new GTween(_arg1, (0.5 * 1), _arg2, {ease: _a8._0RY});
        _local5._1QN = new GTween(_arg1, (0.5 * 1), _arg3, {ease: _a8._19O});
        _local5._1QN.paused = true;
        _local5._1QN.end();
        _local5._1QN.onComplete = _arg4;
    }

    public function _1Wz(_arg1:GameSprite = null) {
        this._0F4 = new _i3();
        this._0Kq = Vector.<_1zO>([new _1zO(), new _1zO(), new _1zO()]);
        this._19Y = new _0se("Play for ", 0, Currency.INVALID);
        this._0rX = new _0se("Play for ", 0, Currency.INVALID);
        this._1sv = new _0se("Return", 0, Currency.INVALID);
        this._0r7 = new Timer(this._0ad);
        _0JX = _1CS;
        _ZZ = _1aw;
        super(_0JX, _ZZ);
        _so = true;
        this._0Tu();
        this._1ur = _1wN._1SG;
        this._10b = new _1wN();
        addChild(this._10b);
        this._0ys = new _05E(1);
        addChild(this._0ys);
        this._0ys.y = 4;
        this._0ys.x = ((_0JX - this._0ys.width) - 5);
        var _local2:_0bz = _8w._1Sz();
        this.client = _local2.getInstance(_0yo);
        this.account = _local2.getInstance(Account);
        this.model = _local2.getInstance(_0Ew);
        this._03t = this.model.getFortune();
        if (this._03t == null) {
            return;
        }
        ;
        this._0F4.setXPos((_0JX / 2));
        this._0F4.setYPos(_2V);
        this._0jZ();
        addChild(this._0F4);
        this.lastUpdate_ = getTimer();
        this._e6 = new _1e();
        this._e6._a.add(this._1rl);
        addChild(this._e6);
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        addEventListener(Event.REMOVED_FROM_STAGE, this._14F);
        this._m1 = new _fY(null, false, true);
        this._m1.x = 734;
        this._m1.y = 0;
        addChild(this._m1);
        var _local3:Player = _8w._1Sz().getInstance(_03e).player;
        if (_local3 != null) {
            this._m1.draw(_local3.credits_, 0, _local3._58);
        }
        ;
        if (_arg1 != null) {
            this.gs_ = _arg1;
            this.gs_._m1.visible = false;
        }
        ;
        var _local4:BitmapData = AssetLibrary._Rb("lofiObj3", 1172);
        _local4 = TextureRedrawer.redraw(_local4, 75, true, 0);
        this._0F4.addEventListener(MouseEvent.ROLL_OVER, this._0S7);
        this._0F4.addEventListener(MouseEvent.ROLL_OUT, this._0zw);
        this._0MS = _0m8.make(this._03t._71);
        this._0MS.x = (_0JX - (this._0MS.width + 10));
        this._0MS.y = 10;
        this._l();
        this._0By();
        this.setString(0);
        this._iX();
        addChild(this._0MS);
        this._0MS.addEventListener(MouseEvent.ROLL_OVER, this._0zw);
        this._0MS.visible = false;
    }
    public var _0F4:_i3;
    public var _0Kq:Vector.<_1zO>;
    public var _ok:_1zO = null;
    public var client:_0yo;
    public var account:Account;
    public var model:_0Ew;
    public var _03t:_0u4;
    public var state:int = 1;
    public var _0ph:Vector.<_1SO>;
    public var _0lp:_1xb;
    public var _m1:_fY;
    private var _19Y:_0se;
    private var _0rX:_0se;
    private var _1sv:_0se;
    private var _0ys:_05E;
    private var _0oy:int = -1;
    private var _e6:_1e;
    private var _10b:_1wN;
    private var _0r7:Timer;
    private var _TP:int = -1;
    private var _0m3:int = 0;
    private var lastUpdate_:int;
    private var _1ur:Number;
    private var _0X3:int = 0;
    private var _0kV:Boolean = false;
    private var radius:int = 200;
    private var _1eJ:Number = 0;
    private var _1qF:int = 4;
    private var _1E5:int = 0;
    private var _1RE:Sprite;
    private var _1ng:Sprite;
    private var _0MS:Sprite;
    private var _1tr:int = -1;
    private var _0lA:int = -1;
    private var _1r7:int = -1;
    private var gs_:GameSprite = null;
    private var _0kK:Boolean = false;
    private var _0k7:Array;

    override protected function makeModalBackground():Sprite {
        var _local1:Sprite = new Sprite();
        var _local2:DisplayObject = new _Go();
        _local2.width = _0JX;
        _local2.height = _ZZ;
        _local2.alpha = 0.7;
        _local1.addChild(_local2);
        return (_local1);
    }

    public function _y3():void {
        this._0r7.stop();
    }

    public function _0cV():void {
        this._0r7.start();
        this._B0();
    }

    public function _l():void {
        this._0r7.delay = this._0ad;
        this._0r7.addEventListener(TimerEvent.TIMER, this._B0);
        this._0cV();
    }

    public function _HP():void {
        var _local3:Number;
        var _local1:int = ((200 * Math.abs(((int((getTimer() / 2)) % 1000) - 500))) / 1000);
        if (this._1E5 < this._1v2) {
            this._1E5 = (this._1E5 + 4);
        }
        ;
        var _local2:int;
        while (_local2 < 3) {
            _local3 = ((((((_local2 + 1) * (120 + this._1E5)) - 60) - getTimer()) * Math.PI) / 180);
            this._0Kq[_local2].setXPos((this._0F4.getCenterX() + (this.radius * Math.sin(_local3))));
            this._0Kq[_local2].setYPos((this._0F4.getCenterY() + (this.radius * Math.cos(_local3))));
            _local2++;
        }
        ;
        if (this.radius == _1fs) {
            this._1qF = (this._1qF * -1);
        }
        ;
        if (this.radius < 0) {
            this.radius = 0;
        } else {
            if (this._1E5 == this._1v2) {
                this.radius = (this.radius - ((this._1qF * 2.85) / this._ly));
            }
            ;
        }
        ;
    }

    public function _0Sc(_arg1:DisplayObject, _arg2:Number):void {
        if (_arg2 < 0) {
            _arg2 = (_arg2 * -1);
            _arg1.rotation = (Math.abs(((_arg1.rotation - _arg2) + 360)) % 360);
        } else {
            _arg1.rotation = ((_arg1.rotation + _arg2) % 360);
        }
        ;
    }

    public function draw(_arg1:int, _arg2:int):void {
        this._0F4._Qc(_arg1, _arg2);
        this._10b.update(_arg1, _arg2);
        this._10b.draw(null, _arg1);
        this.lastUpdate_ = _arg1;
    }

    protected function _0Tu():void {
        var _local1:_0vf;
        this._1RE = new Sprite();
        _local1 = new _0vf(new fortunePlatformEmbed2(), 500, 500);
        _local1.x = (-(_local1.width) / 2);
        _local1.y = (-(_local1.height) / 2);
        this._1RE.addChild(_local1);
        this._1RE.x = (_0JX / 2);
        this._1RE.y = _2V;
        this._1RE.alpha = 0.25;
        addChild(this._1RE);
        this._1ng = new Sprite();
        _local1 = new _0vf(new _1Jd(), 700, 700);
        _local1.x = (-(_local1.width) / 2);
        _local1.y = (-(_local1.height) / 2);
        this._1ng.addChild(_local1);
        this._1ng.x = (_0JX / 2);
        this._1ng.y = _2V;
        this._1ng.alpha = 0.15;
        addChild(this._1ng);
    }

    private function _iX():void {
        this._1tr = int(this._03t._0rt);
        this._1r7 = int(this._03t._xe);
        this._0lA = int(this._03t._0ot);
        this._19Y.setPrice(this._1tr, Currency._1mE);
        this._19Y.setEnabled(true);
        this._19Y.x = (((_0JX / 2) - 100) - this._19Y.width);
        this._19Y.y = (((_ZZ * 70) / 75) - (this._19Y.height / 2));
        addChild(this._19Y);
        this._19Y.addEventListener(MouseEvent.CLICK, this._1DR);
        this._0rX.setPrice(this._1r7, Currency._0mN);
        this._0rX.setEnabled(true);
        this._1sv.visible = false;
        addChild(this._1sv);
        this._1sv._1Nq("Return");
        addChild(this._0rX);
        this._0rX.x = ((_0JX / 2) + 100);
        this._0rX.y = (((_ZZ * 70) / 75) - (this._0rX.height / 2));
        this._1sv.x = ((_0JX / 2) + 100);
        this._1sv.y = (((_ZZ * 70) / 75) - (this._0rX.height / 2));
        this._0rX.addEventListener(MouseEvent.CLICK, this._0EE);
    }

    private function _0By():void {
        var _local4:TextField;
        _GO = new Vector.<TextField>();
        var _local1:Vector.<String> = Vector.<String>(["HOW WILL YOU PLAY?", "THE FIVE MASTERS OF GOZOR WILL DETERMINE YOUR PRIZE!", "HERE'S WHAT YOU CAN WIN!", "Shuffling!", "PICK ONE TO WIN A PRIZE!", "YOU WON! ITEMS WILL BE PLACED IN YOUR GIFT CHEST", "TWO ITEMS LEFT! TAKE ANOTHER SHOT!", "PICK A SECOND PRIZE!", "PLAY AGAIN?", "Choose now or I will choose for you!", "Determining Prizes!", "Sorting Loot!", "What can you win?", "Big Prizes! Big Orbs! I love it!", "Wooah! Awesome lewt!", "Processing hadoop data..."]);
        var _local2:TextFormat = new TextFormat();
        _local2.size = 24;
        _local2.font = "Myriad Pro";
        _local2.bold = false;
        _local2.align = TextFormatAlign.LEFT;
        _local2.leftMargin = 0;
        _local2.indent = 0;
        _local2.leading = 0;
        var _local3:uint;
        while (_local3 < _local1.length) {
            _local4 = new TextField();
            _local4.text = _local1[_local3];
            _local4.textColor = 0xFFFF00;
            _local4.autoSize = TextFieldAutoSize.CENTER;
            _local4.selectable = false;
            _local4.defaultTextFormat = _local2;
            _local4.setTextFormat(_local2);
            _local4.filters = [new GlowFilter(0xFFFFFF, 1, 2, 2, 1.5, 1)];
            _GO.push(_local4);
            _local3++;
        }
        ;
    }

    private function setString(_arg1:int):void {
        if (this.parent == null) {
            return;
        }
        ;
        if ((((this._0oy >= 0)) && (!((_GO[this._0oy].parent == null))))) {
            removeChild(_GO[this._0oy]);
        }
        ;
        if (_arg1 < 0) {
            return;
        }
        ;
        this._0oy = _arg1;
        var _local2:TextField = _GO[this._0oy];
        _local2.x = ((_0JX / 2) - (_local2.width / 2));
        _local2.y = (((_ZZ * 66) / 75) - (_local2.height / 2));
        addChild(_GO[this._0oy]);
    }

    private function _1rV(_arg1:GTween):void {
        if (_arg1.target.parent != null) {
            _arg1.target.parent.removeChild(_arg1.target);
        }
        ;
    }

    private function _aO():void {
        this._0r7.removeEventListener(TimerEvent.TIMER, this._B0);
        var _local1:int;
        while (_local1 < 2) {
            if (((!((this._0ph[_local1] == null))) && (!((this._0ph[_local1].parent == null))))) {
                this._0ph[_local1].alpha = 0;
                this._0ph[_local1].onMouseOut.removeAll();
                this._0ph[_local1].onMouseOver.removeAll();
                this._0ph[_local1].parent.removeChild(this._0ph[_local1]);
            }
            ;
            _local1++;
        }
        ;
        this._y3();
    }

    private function _wv():Boolean {
        return (_0Ew._05m);
    }

    private function _1h7(_arg1:DisplayObject, _arg2:Object = null, _arg3:Function = null):void {
        var _local4:GTween = new GTween(_arg1, 0.5, _arg2, {
            ease: _a8._0RY,
            onComplete: _arg3
        });
    }

    private function _1rl():void {
        var _local2:int;
        var _local1:_1zO;
        do {
            _local2 = int((Math.random() * 3));
            if ((((this.state == STATE_ROUND_1)) || (!((this._0Kq[_local2] == this._ok))))) {
                _local1 = this._0Kq[_local2];
            }
            ;
        } while (_local1 == null);
        this._1Yt(_local1);
    }

    private function _1az(_arg1:int):void {
        var _local4:_M4;
        if (!this._wv()) {
            this._ds();
        }
        ;
        var _local2:Player = _8w._1Sz().getInstance(_03e).player;
        if (_local2 != null) {
            if ((((((_arg1 == Currency._1mE)) && ((this.state == STATE_ROUND_2)))) && (((_local2.credits_ - this._0lA) < 0)))) {
                _local4 = _8w._1Sz().getInstance(_M4);
                _local4.dispatch(new _0Ek());
                return;
            }
            ;
            if ((((_arg1 == Currency._1mE)) && (((_local2.credits_ - this._1tr) < 0)))) {
                _local4 = _8w._1Sz().getInstance(_M4);
                _local4.dispatch(new _0Ek());
                return;
            }
            ;
            if ((((_arg1 == Currency._0mN)) && (((_local2._58 - this._1r7) < 0)))) {
                return;
            }
            ;
        }
        ;
        this._0r7.delay = this._HE;
        this._0F4._1rU(_i3._M2);
        var _local3:Object = this._0z9();
        if (_arg1 == Currency._0mN) {
            _local3.currency = 2;
        } else {
            if (_arg1 == Currency._1mE) {
                _local3.currency = 0;
            } else {
                return;
            }
            ;
        }
        ;
        if (this.state == STATE_ROUND_1) {
            _local3.status = 0;
            this._0F4.removeEventListener(MouseEvent.ROLL_OVER, this._0S7);
        }
        ;
        if ((((this.state == STATE_ROUND_1)) && (!(this.client._7e())))) {
            this._1yY();
            this._0kV = (_arg1 == Currency._1mE);
            if (_local2 != null) {
                if (this._0kV) {
                    _local2.credits_ = (_local2.credits_ - this._1tr);
                    this._m1.draw(_local2.credits_, 0, _local2._58);
                } else {
                    if ((_local2._58 - this._1r7) < 0) {
                        return;
                    }
                    ;
                    _local2._58 = (_local2._58 - this._1r7);
                    this._m1.draw(_local2.credits_, 0, _local2._58);
                }
                ;
            }
            ;
            this.client.sendRequest("/account/playFortuneGame", _local3);
            this.setString((10 + int((Math.random() * 6))));
            this.client.complete.addOnce(this._1zs);
            this._19Y.visible = false;
            this._0rX.visible = false;
        } else {
            if (this.state == STATE_ROUND_2) {
                this._1yY();
                this._20v();
                _local2 = _8w._1Sz().getInstance(_03e).player;
                if (_local2 != null) {
                    _local2.credits_ = (_local2.credits_ - this._0lA);
                    this._m1.draw(_local2.credits_, 0, _local2._58);
                }
                ;
                this._19Y.visible = false;
                this._1sv.visible = false;
                return;
            }
            ;
        }
        ;
    }

    private function _1zs(_arg1:Boolean, _arg2):void {
        var _local3:XML;
        var _local4:Player;
        var _local5:Vector.<int>;
        var _local6:int;
        var _local7:Boolean;
        var _local8:Number;
        var _local9:Number;
        var _local10:Number;
        var _local11:Number;
        var _local12:int;
        var _local13:Number;
        var _local14:Number;
        var _local15:Number;
        var _local16:Number;
        var _local17:String;
        if (_arg1) {
            _local3 = new XML(_arg2);
            this._0k7 = _local3.Candidates.split(",");
            _local4 = _8w._1Sz().getInstance(_03e).player;
            if (_local4 != null) {
                if (_local3.hasOwnProperty("Gold")) {
                    _local4.credits_ = int(_local3.Gold);
                    this._m1.draw(_local4.credits_, 0, _local4._58);
                } else {
                    if (_local3.hasOwnProperty("FortuneToken")) {
                        _local4._58 = int(_local3.FortuneToken);
                        this._m1.draw(_local4.credits_, 0, _local4._58);
                    }
                    ;
                }
                ;
            }
            ;
            _local5 = Vector.<int>([0, 2, 1]);
            _local6 = Math.floor((Math.random() * 3));
            _local7 = (Math.random() > 0.5);
            _local8 = this._0F4.getCenterX();
            _local9 = this._0F4.getCenterY();
            _local10 = this._0Kq[_local5[_local6]].getCenterX();
            _local11 = this._0Kq[_local5[_local6]].getCenterY();
            _local12 = 0;
            _local13 = _local8;
            _local14 = _local9;
            _local15 = 0.25;
            _local16 = 1.2;
            this._aO();
            for each (_local17 in this._0k7) {
                if (_local12 == 0) {
                    new _1g7(_local15, this._0Rj, _local8, _local9, _local10, _local11);
                    new _1g7((_local15 + 0.1), this._0Kq[_local5[_local6]].doItemShow, int(_local17));
                } else {
                    _local10 = this._0Kq[_local5[_local6]].getCenterX();
                    _local11 = this._0Kq[_local5[_local6]].getCenterY();
                    new _1g7(_local15, this._0Rj, _local13, _local14, _local10, _local11);
                    new _1g7((_local15 + 0.1), this._0Kq[_local5[_local6]].doItemShow, int(_local17));
                }
                ;
                _local13 = _local10;
                _local14 = _local11;
                _local15 = (_local15 + _local16);
                _local12++;
                if (_local7) {
                    _local6 = ((_local6 + 1) % 3);
                } else {
                    --_local6;
                    _local6 = (((_local6) < 0) ? 2 : _local6);
                }
                ;
            }
            ;
            new _1g7(this._IU, this._20v);
        } else {
            this._11F();
        }
        ;
    }

    private function _20v():void {
        if ((((this.state == STATE_ROUND_2)) && (!((this._ok == null))))) {
            this._kf();
        }
        ;
        var _local1:int;
        while (_local1 < 3) {
            this._0Kq[_local1].removeItemReveal();
            this._0Kq[_local1].saveReturnPotion();
            this._0Kq[_local1].setAnimation(6, 7);
            this._0Kq[_local1].setAnimationDuration(50);
            _local1++;
        }
        ;
        this._51(this._DH);
        this._0F4._1rU(_i3._1U2);
        new _1g7(this._ly, this._0h);
        this.setString(3);
    }

    private function _0h():void {
        this._51(this._0FA);
        if (this.state == STATE_ROUND_2) {
            this.setString(7);
        } else {
            this.setString(4);
        }
        ;
        this._aV(this._ok);
        this._0F4._1rU(_i3._0nk);
        this._07Y(this._0F4.getCenterX(), this._0F4.getCenterY(), 10, 0xFFFF);
        var _local1:int;
        while (_local1 < 3) {
            if (!(((this.state == STATE_ROUND_2)) && ((this._0Kq[_local1] == this._ok)))) {
                this._0Kq[_local1].setActive2();
                this._0Kq[_local1].doItemReturn();
                new _1g7(this._qJ, this._07Y, int(this._0Kq[_local1].returnCenterX()), int(this._0Kq[_local1].returnCenterY()), 5, 0xFFFF);
                new _1g7(this._qJ, this._0Kq[_local1].setAnimationPulse);
            }
            ;
            _local1++;
        }
        ;
        if (this._e6 == null) {
            return;
        }
        ;
        new _1g7(this._qJ, this._0F4._1rU, _i3._Ou);
        this._e6.start(this._0ib);
        this._e6.setXPos(this._0F4.getCenterX());
        this._e6.setYPos(this._0F4.getCenterY());
        new _1g7(7, this._133);
        this._0kK = true;
    }

    private function _133():void {
        if (((!((this._e6 == null))) && (this._e6._1IC()))) {
            this.setString(9);
        }
        ;
    }

    private function _11F():void {
        var _local1:_M4;
        _local1 = _8w._1Sz().getInstance(_M4);
        var _local2:Dialog = new Dialog("MysteryBoxRollModal.purchaseFailedString", "MysteryBoxRollModal.pleaseTryAgainString", "MysteryBoxRollModal.okString", null, null);
        _local2.addEventListener(Dialog.LEFT_BUTTON, this._1pY, false, 0, true);
        _local1.dispatch(_local2);
    }

    private function _ds():void {
        var _local1:_M4;
        _local1 = _8w._1Sz().getInstance(_M4);
        _local1.dispatch(new _Hx("The Alchemist has left the Nexus.Please check back later.", "Oh no!"));
    }

    private function _0z9():Object {
        var _local1:Object = this.account._1iT();
        _local1.gameId = this._03t.id;
        return (_local1);
    }

    private function _1Yt(_arg1:Object):void {
        var _local2:int;
        var _local3:int;
        while (_local3 < 3) {
            if (this._0Kq[_local3] == _arg1) {
                this._0o3(_local3, _local2);
                this._0Kq[_local3].setAnimationClicked();
            }
            ;
            if (this._0Kq[_local3] != this._ok) {
                _local2++;
            }
            ;
            this._0Kq[_local3].setGlowState(_1zO._xd);
            _local3++;
        }
        ;
        this._0kK = false;
    }

    private function _0o3(_arg1:int, _arg2:int):void {
        var _local3:Object = this._0z9();
        _local3.choice = _arg2;
        _local3.status = this.state;
        _local3.currency = 0;
        if (!this.client._7e()) {
            this._e6.remove();
            this._1AW();
            this._ok = this._0Kq[_arg1];
            this.client.sendRequest("/account/playFortuneGame", _local3);
            this.client.complete.addOnce(this._VF);
        }
        ;
    }

    private function _VF(_arg1:Boolean, _arg2):void {
        var _local3:XML;
        var _local4:_M4;
        if (_arg1) {
            _local3 = new XML(_arg2);
            if (this.state == STATE_ROUND_2) {
                new _1g7(0.25, this._07Y, this._ok.getCenterX(), this._ok.getCenterY(), 6, 0xFFFF);
                new _1g7(0.25, this._ok._1bN, _local3.Awards);
                new _1g7(this.DISPLAY_PRIZE_TIME_2, this._1Tp);
            } else {
                if (this.state == STATE_ROUND_1) {
                    this.state = STATE_ROUND_2;
                    new _1g7(this.DISPLAY_PRIZE_TIME_1, this._0rx, _local3.Awards);
                    new _1g7(0.25, this._07Y, this._ok.getCenterX(), this._ok.getCenterY(), 6, 0xFFFF);
                    new _1g7(0.25, this._ok._1bN, _local3.Awards);
                }
                ;
            }
            ;
            new _1g7(0.5, this.setString, 5);
        } else {
            this._aV(null);
            _local4 = _8w._1Sz().getInstance(_M4);
            if (this.state == STATE_ROUND_1) {
                _local4.dispatch(new _Hx("You have run out of time to choose, but an item has been chosen for you.", "Oh no!"));
            } else {
                _local4.dispatch(new _Hx("You have run out of time to choose.", "Oh no!"));
            }
            ;
        }
        ;
    }

    private function _0rx(_arg1:int):void {
        var _local2:int;
        this._03Y();
        this._0Ml();
        this._19Y.setPrice(this._0lA, Currency._1mE);
        this._19Y.visible = true;
        this._1sv.visible = true;
        this._1sv.addEventListener(MouseEvent.CLICK, this._20F);
        _local2 = 0;
        while (_local2 < this._0k7.length) {
            if (int(this._0k7[_local2]) == _arg1) {
                this._0k7[_local2] = this._0k7[(this._0k7.length - 1)];
            }
            ;
            _local2++;
        }
        ;
        this._0k7.pop();
        _local2 = 0;
        while (_local2 < this._0Kq.length) {
            if (this._0Kq[_local2] != this._ok) {
                this._0Kq[_local2].doItemShow(int(this._0k7.pop()));
            }
            ;
            _local2++;
        }
        ;
        this.setString(6);
    }

    private function _1Tp():void {
        this.state = STATE_ROUND_1;
        this._1AW();
        this._0Ml();
        this._19Y.setPrice(this._1tr, Currency._1mE);
        this._19Y.visible = true;
        this._0rX.visible = true;
        this._1sv.visible = false;
        this._l();
        this.setString(0);
        this._03Y();
        this._0kV = false;
        this._0F4.addEventListener(MouseEvent.ROLL_OVER, this._0S7);
        this._0F4.reset();
        var _local1:int;
        while (_local1 < 3) {
            this._0Kq[_local1].resetVars();
            _local1++;
        }
        ;
        this._0jZ();
    }

    private function _03Y():void {
        this.radius = _1fs;
        this._1eJ = 0;
        this._1qF = 8;
        this._1E5 = 0;
    }

    private function _1yY():void {
        this._19Y.removeEventListener(MouseEvent.CLICK, this._1DR);
        this._0rX.removeEventListener(MouseEvent.CLICK, this._0EE);
    }

    private function _0Ml():void {
        if (this.state == STATE_ROUND_1) {
            this._0rX.addEventListener(MouseEvent.CLICK, this._0EE);
        }
        ;
        this._19Y.addEventListener(MouseEvent.CLICK, this._1DR);
    }

    private function _1AW():void {
        var _local1:int;
        while (_local1 < 3) {
            this._0Kq[_local1].removeEventListener(MouseEvent.CLICK, this._Xe);
            _local1++;
        }
        ;
    }

    private function _aV(_arg1:_1zO = null):void {
        var _local2:int;
        while (_local2 < 3) {
            if (this._0Kq[_local2] == _arg1) {
                this._0Kq[_local2].removeEventListener(MouseEvent.CLICK, this._Xe);
            } else {
                this._0Kq[_local2].addEventListener(MouseEvent.CLICK, this._Xe);
                this._0Kq[_local2].setMouseTracking(true);
            }
            ;
            _local2++;
        }
        ;
    }

    private function _0jZ():void {
        var _local3:Number;
        var _local1:int = _1fs;
        var _local2:int;
        while (_local2 < 3) {
            _local3 = (((((_local2 + 1) * 120) - 60) * Math.PI) / 180);
            this._0Kq[_local2].setXPos((this._0F4.getCenterX() + (_local1 * Math.sin(_local3))));
            this._0Kq[_local2].setYPos((this._0F4.getCenterY() + (_local1 * Math.cos(_local3))));
            if (this._0Kq[_local2].parent == null) {
                addChild(this._0Kq[_local2]);
            } else {
                if (this._0Kq[_local2].visible == false) {
                    this._0Kq[_local2].visible = true;
                }
                ;
            }
            ;
            this._0Kq[_local2].removeItemReveal();
            this._0Kq[_local2].setInactive();
            this._0Kq[_local2].reset();
            _local2++;
        }
        ;
        this._ok = null;
    }

    private function _kf():void {
        var _local4:Number;
        var _local1:int;
        var _local2:int = _1fs;
        if (((!((this._ok == null))) && (this._ok.parent))) {
            this._ok.visible = false;
            this._ok.setInactive();
        }
        ;
        var _local3:int;
        while (_local3 < 3) {
            if (this._0Kq[_local3] != this._ok) {
                _local4 = ((((_local1 * 120) - 60) * Math.PI) / 180);
                this._0Kq[_local3].setXPos((this._0F4.getCenterX() + (_local2 * Math.sin(_local4))));
                this._0Kq[_local3].setYPos((this._0F4.getCenterY() + (_local2 * Math.cos(_local4))));
                _local1++;
            }
            ;
            _local3++;
        }
        ;
    }

    private function _07Y(_arg1:Number, _arg2:Number, _arg3:int = 20, _arg4:int = 12447231):void {
        var _local5:GameObject;
        var _local6:_69;
        if (this._10b != null) {
            _local5 = new GameObject(null);
            _local5.x_ = _1wN._0o8(_arg1);
            _local5.y_ = _1wN._0o8(_arg2);
            _local6 = new _69(_local5, _arg3, _arg4);
            this._10b.addObj(_local6, _local5.x_, _local5.y_);
        }
        ;
    }

    private function _0Rj(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:int = 200, _arg6:int = 12447231):void {
        if (this.parent == null) {
            return;
        }
        ;
        var _local7:GameObject = new GameObject(null);
        _local7.x_ = _1wN._0o8(_arg1);
        _local7.y_ = _1wN._0o8(_arg2);
        var _local8:_1ST = new _1ST();
        _local8.x_ = _1wN._0o8(_arg3);
        _local8.y_ = _1wN._0o8(_arg4);
        var _local9:_08I = new _08I(_local7, _local8, _arg6, _arg5);
        this._10b.addObj(_local9, _local7.x_, _local7.y_);
    }

    private function _51(_arg1:int):void {
        this._0X3 = _arg1;
    }

    public function onEnterFrame(_arg1:Event):void {
        var _local5:Number;
        var _local2:int = getTimer();
        var _local3:int = (_local2 - this.lastUpdate_);
        _1jd = mouseX;
        _Wa = mouseY;
        if (this._0X3 == this._DH) {
            this._HP();
            this._0F4.setAnimationDuration(((this._1v2 + 80) - this._1E5));
        }
        ;
        var _local4:int;
        while (_local4 < 3) {
            this._0Kq[_local4].update(_local2, _local3);
            _local4++;
        }
        ;
        this._0Sc(this._1RE, 0.1);
        this._0Sc(this._1ng, -0.15);
        if (this._0kK) {
            _local5 = Math.random();
            if (_local5 < 0.05) {
                this._0Kq[int(((_local5 * 200) % 3))].setShake(true);
            }
            ;
        }
        ;
        this.draw(_local2, _local3);
    }

    private function _0S7(_arg1:MouseEvent):void {
        this._0MS.visible = true;
    }

    private function _0zw(_arg1:MouseEvent):void {
        if (!(_arg1.relatedObject is _1SO)) {
            this._0MS.visible = false;
        }
        ;
    }

    private function _14F(_arg1:Event):void {
        this._0ys.clicked.removeAll();
        _so = false;
        closed.dispatch();
        closed.removeAll();
        this._0r7.removeEventListener(TimerEvent.TIMER, this._B0);
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        removeEventListener(Event.REMOVED_FROM_STAGE, this._14F);
        this._e6._a.removeAll();
        this._e6.end();
        this._e6 = null;
        this._1yY();
        this._1AW();
        this._0F4.removeEventListener(MouseEvent.ROLL_OVER, this._0S7);
        this._0F4.removeEventListener(MouseEvent.ROLL_OUT, this._0zw);
        this._0MS.removeEventListener(MouseEvent.ROLL_OVER, this._0zw);
        this._1sv.removeEventListener(MouseEvent.CLICK, this._20F);
        if (this.gs_ != null) {
            this.gs_._m1.visible = false;
        }
        ;
    }

    private function _B0(_arg1:TimerEvent = null):void {
        var _local5:_1SO;
        this._TP++;
        if (this._0ph == null) {
            this._0ph = Vector.<_1SO>([new _1SO(this._03t._hD[this._TP], _1gO), new _1SO(this._03t._hD[(this._TP + 1)], _1gO)]);
        }
        ;
        if (this._TP >= this._03t._hD.length) {
            this._TP = 0;
        }
        ;
        var _local2:int = (this._TP % 2);
        if (((!((this._0ph[this._0m3] == null))) && (!((this._0ph[this._0m3].parent == null))))) {
            _local5 = this._0ph[this._0m3];
            this._1h7(_local5, {alpha: 0}, this._1rV);
        }
        ;
        var _local3:_1SO = new _1SO(this._03t._hD[this._TP], _1gO, true);
        _local3.onMouseOver.add(this._y3);
        _local3.onMouseOut.add(this._0cV);
        _local3.setXPos(this._0F4.getCenterX());
        _local3.setYPos(this._0F4.getCenterY());
        this._0ph[_local2] = _local3;
        _local3.alpha = 0;
        addChild(_local3);
        this._1h7(_local3, {alpha: 1});
        this._0m3 = _local2;
        var _local4:Player = _8w._1Sz().getInstance(_03e).player;
        if (((!((this._m1 == null))) && (!((_local4 == null))))) {
            this._m1.draw(_local4.credits_, 0, _local4._58);
        }
        ;
    }

    private function _20F(_arg1:MouseEvent):void {
        this._1sv.removeEventListener(MouseEvent.CLICK, this._20F);
        this._1Tp();
    }

    private function _1DR(_arg1:MouseEvent):void {
        this._1az(Currency._1mE);
    }

    private function _0EE(_arg1:MouseEvent):void {
        this._1az(Currency._0mN);
    }

    private function _1pY(_arg1:Event):void {
        var _local2:_0ay;
        _local2 = _8w._1Sz().getInstance(_0ay);
        _local2.dispatch();
    }

    private function _Xe(_arg1:MouseEvent):void {
        this._1Yt(_arg1.currentTarget);
    }


}
}//package _04j

