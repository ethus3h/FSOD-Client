// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game.GameSprite

package com.company.assembleegameclient.game {
import _05j.Chat;

import _07g._1QQ;

import _0AI._000;

import _0BD._0QN;

import _0CT._8w;

import _0cZ.PackageButton;

import _0fu._1oJ;

import _0gF._1OZ;

import _0nT._09;
import _0nT._0FD;

import _0no.GiftStatusDisplay;
import _0no._1J7;
import _0no._fY;

import _0oL.Server;

import _0tB_._tk;

import _0tf._0yo;

import _10a._12l;
import _10a._FU;

import _14._29;

import _1EG._0vn;
import _1EG._1fW;

import _1ES._0jA;

import _1PE.Account;

import _1Sm._sy;

import _1TC._04T;

import _1VR.PlayerMenu;

import _1Yg._1Fn;

import _1oE._069;
import _1oE._cm;

import _1xN._1TQ;

import _7T._18u;

import _gl._1bu;

import _nH._4m;

import _rB._1P7;

import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Pet;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects.Projectile;
import com.company.assembleegameclient.objects._Rk;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.tutorial.Tutorial;
import com.company.assembleegameclient.ui.RankText;
import com.company.assembleegameclient.ui._1g;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.googleanalytics.GA;
import com.company.util.MoreColorUtil;
import com.company.util.PointUtil;
import com.company.util._0CM;
import com.company.util._1V;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.external.ExternalInterface;
import flash.filters.ColorMatrixFilter;
import flash.utils.ByteArray;
import flash.utils.getTimer;

public class GameSprite extends _0p2 {

    protected static const _ak:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Bu);

    public const _1ZX:_sy = new _sy(String, int);
    public const _N3:_sy = new _sy();
    public const _0hh:_sy = new _sy(Player);

    public static function _4M(_arg1:_29):void {
        var _local2:_069 = _8w._1Sz().getInstance(_069);
        ((_local2) && (_local2.dispatch(_arg1)));
    }

    private static function _84():void {
        var _local1:_cm = _8w._1Sz().getInstance(_cm);
        ((_local1) && (_local1.dispatch()));
    }

    public function GameSprite(_arg1:Server, _arg2:int, _arg3:Boolean, _arg4:int, _arg5:int, _arg6:ByteArray, _arg7:_FU, _arg8:String, _arg9:Boolean) {
        this._7y = new _sy();
        this._mD = new Sprite();
        super();
        this.model = _arg7;
        map = new Map(this);
        addChild(map);
        gsc_ = new _04T(this, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg8, _arg9);
        mui_ = new _3v(this);
        this._1Xv = new Chat();
        this._1Xv.list.addEventListener(MouseEvent.MOUSE_DOWN, this._6h);
        this._1Xv.list.addEventListener(MouseEvent.MOUSE_UP, this._0rq);
        addChild(this._1Xv);
        this._17X = new _Jx();
    }
    public var _1Xv:Chat;
    public var isNexus_:Boolean = false;
    public var _17X:_Jx;
    public var _1Qy:RankText;
    public var _0Qb:com.company.assembleegameclient.ui._1g;
    public var _m1:_fY;
    public var _0qk:GiftStatusDisplay;
    public var _PY:_1J7;
    public var _FO:_000;
    public var _0pV:_0vn;
    public var _02m:_1fW;
    public var _aI:_12l;
    public var _1Tk:_1Fn;
    public var _0nX:_1TQ;
    public var _7y:_sy;
    public var _1m4:_1P7;
    public var _CW:PlayerMenu;
    private var focus:GameObject;
    private var _1JF:int = 0;
    private var _173:int = 0;
    private var _1ru:Boolean;
    private var _01W:uint = 4;
    private var _mD:DisplayObject;
    private var _Ku:Number;

    override public function setFocus(_arg1:GameObject):void {
        _arg1 = ((_arg1) || (map.player_));
        this.focus = _arg1;
    }

    override public function applyMapInfo(_arg1:_29):void {
        map.setProps(_arg1.width_, _arg1.height_, _arg1.name_, _arg1.background_, _arg1.allowPlayerTeleport_, _arg1.showDisplays_);
        _4M(_arg1);
    }

    override public function initialize():void {
        var _local4:_1oJ;
        map.initialize();
        this._N3.dispatch();
        if (this.evalIsNotInCombatMapArea()) {
            this._1nm();
        }
        ;
        if (map.name_ == "Arena") {
            this._ez();
            this._01Y();
        }
        ;
        if (((this._1m4._0s9()) && ((map.name_ == Map._1Bv)))) {
            if (this._1Tk._0rb()) {
                this._0nX.dispatch();
            } else {
                this._7y.dispatch();
            }
            ;
            this._1m4._1To++;
        }
        ;
        this.isNexus_ = (map.name_ == Map._1Bv);
        if (((this.isNexus_) || ((map.name_ == Map._oB)))) {
            this._m1 = new _fY(this, true, true);
        } else {
            this._m1 = new _fY(this);
        }
        ;
        this._m1.x = 594;
        this._m1.y = 0;
        addChild(this._m1);
        var _local1:_0yo = _8w._1Sz().getInstance(_0yo);
        var _local2:Account = _8w._1Sz().getInstance(Account);
        var _local3:Object = {
            game_net_user_id: _local2._0uI(),
            game_net: _local2._0iC(),
            play_platform: _local2._0X8()
        };
        _0CM._0lh(_local3, _local2._1iT());
        if (((((((!((map.name_ == "Kitchen"))) && (!((map.name_ == "Tutorial"))))) && (!((map.name_ == "Nexus Explanation"))))) && ((Parameters.data_.watchForTutorialExit == true)))) {
            Parameters.data_.watchForTutorialExit = false;
            this._mw('rotmg.Marketing.track("tutorialComplete")');
            _local3["fteStepCompleted"] = 9900;
            _local1.sendRequest("/log/logFteStep", _local3);
        }
        ;
        if (map.name_ == "Kitchen") {
            _local3["fteStepCompleted"] = 200;
            _local1.sendRequest("/log/logFteStep", _local3);
        }
        ;
        if (map.name_ == "Tutorial") {
            if (Parameters.data_.needsTutorial == true) {
                Parameters.data_.watchForTutorialExit = true;
                this._mw('rotmg.Marketing.track("install")');
                _local3["fteStepCompleted"] = 100;
                _local1.sendRequest("/log/logFteStep", _local3);
            }
            ;
            this._Af();
        } else {
            if (((((((((((((!((map.name_ == "Arena"))) && (!((map.name_ == "Kitchen"))))) && (!((map.name_ == "Nexus Explanation"))))) && (!((map.name_ == "Vault Explanation"))))) && (!((map.name_ == "Guild Explanation"))))) && (!(this.evalIsNotInCombatMapArea())))) && (Parameters.data_.showProtips))) {
                _local4 = _8w._1Sz().getInstance(_1oJ);
                ((_local4) && (_local4.dispatch()));
            }
            ;
        }
        ;
        if (map.name_ == "Daily Quest Room") {
            _4m._S2();
        }
        ;
        Parameters.save();
        _84();
    }

    override public function evalIsNotInCombatMapArea():Boolean {
        return ((((((((((((map.name_ == Map._1Bv)) || ((map.name_ == Map._ou)))) || ((map.name_ == Map._05t)))) || ((map.name_ == Map._0wt)))) || ((map.name_ == Map._kl)))) || ((map.name_ == Map._oB))));
    }

    public function _0mG(_arg1:Player, _arg2:Number, _arg3:Number, _arg4:String = null, _arg5:Boolean = false, _arg6:Boolean = false):void {
        this._fX();
        this._CW = new PlayerMenu();
        if (_arg4 == null) {
            this._CW.init(this, _arg1);
        } else {
            if (_arg6) {
                this._CW._1EX(this, _arg4, _arg5, _arg6);
            } else {
                if ((((_arg4.length > 0)) && ((((((_arg4.charAt(0) == "#")) || ((_arg4.charAt(0) == "*")))) || ((_arg4.charAt(0) == "@")))))) {
                    return;
                }
                ;
                this._CW._1EX(this, _arg4, _arg5);
            }
            ;
        }
        ;
        addChild(this._CW);
        this._CW.x = _arg2;
        this._CW.y = (_arg3 - this._CW.height);
    }

    public function _fX():void {
        if (((!((this._CW == null))) && (!((this._CW.parent == null))))) {
            removeChild(this._CW);
            this._CW = null;
        }
        ;
    }

    public function _1fy():void {
        hudView = new _1QQ();
        hudView.x = 600;
        addChild(hudView);
    }

    public function _DW():void {
        this._pO(false);
    }

    public function _UO():void {
        if (this.evalIsNotInCombatMapArea()) {
            this._OG(new _tk());
        }
        ;
    }

    public function _1GB():void {
        if (this.evalIsNotInCombatMapArea()) {
            this._OG(new PackageButton());
        }
        ;
    }

    public function connect():void {
        if (!this._1ru) {
            this._1ru = true;
            _0jA._t5 = true;
            gsc_.connect();
            this._17X.start(this);
            lastUpdate_ = getTimer();
            stage.addEventListener(_1OZ.MONEY_CHANGED, this._r0);
            stage.addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            _0FD._1iG(new _09(100, this._Ik));
        }
        ;
    }

    public function disconnect():void {
        if (this._1ru) {
            this._1ru = false;
            _0jA._t5 = false;
            this._17X.stop();
            stage.removeEventListener(_1OZ.MONEY_CHANGED, this._r0);
            stage.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            _0FD._LR();
            ((contains(map)) && (removeChild(map)));
            map.dispose();
            _1V.clear();
            TextureRedrawer.clearCache();
            Projectile.dispose();
            gsc_.disconnect();
        }
        ;
    }

    public function _1Ks(_arg1:Boolean):void {
    }

    private function _1nm():void {
        this._0tZ();
        this._02l();
        this._T9();
        this._ge();
        if (((((("production".toLowerCase() == "dev")) || (Player._1mi))) || (("production".toLowerCase() == "localhost")))) {
            this._pO();
        }
        ;
        this._1Bx();
    }

    private function _ez():void {
        this._0pV = new _0vn();
        this._0pV.y = 5;
        addChild(this._0pV);
    }

    private function _01Y():void {
        this._02m = new _1fW();
        this._02m.y = 5;
        this._02m.x = 5;
        addChild(this._02m);
    }

    private function _1Bx():void {
        this._FO = new _000();
        this._FO.x = (300 - (this._FO.width / 2));
        this._FO.y = (5 + _0QN._1F6);
        addChild(this._FO);
    }

    private function _ge():void {
        this._0qk = new GiftStatusDisplay();
        this._0qk.x = 6;
        this._0qk.y = (this._01W + 2);
        this._01W = (this._01W + _0QN._1F6);
        addChild(this._0qk);
    }

    private function _pO(_arg1:Boolean = true):void {
        var _local3:_1J7;
        var _local2:_18u = _8w._1Sz().getInstance(_18u);
        if (_local2._6K()) {
            _local3 = new _1J7();
            _local3.x = 6;
            _local3.y = 92;
            if (_arg1) {
                this._01W = (this._01W + _0QN._1F6);
            }
            ;
            if (this._PY != null) {
                removeChild(this._PY);
            }
            ;
            this._PY = _local3;
            addChild(this._PY);
        }
        ;
    }

    private function _T9():void {
        this._Ku = (this._01W + 2);
        this._01W = (this._01W + _0QN._1F6);
        this._10y();
    }

    private function _10y():void {
        this._mD.x = 6;
        this._mD.y = this._Ku;
    }

    private function _OG(_arg1:DisplayObject):void {
        this._mD = _arg1;
        addChild(this._mD);
        this._10y();
    }

    private function _02l():void {
        this._0Qb = new com.company.assembleegameclient.ui._1g("", -1);
        this._0Qb.x = 64;
        this._0Qb.y = 6;
        addChild(this._0Qb);
    }

    private function _0tZ():void {
        this._1Qy = new RankText(-1, true, false);
        this._1Qy.x = 8;
        this._1Qy.y = this._01W;
        this._01W = (this._01W + _0QN._1F6);
        addChild(this._1Qy);
    }

    private function _mw(_arg1:String):void {
        if (ExternalInterface.available == false) {
            return;
        }
        ;
        try {
            ExternalInterface.call(_arg1);
        } catch (err:Error) {
        }
        ;
    }

    private function _Af():void {
        tutorial_ = new Tutorial(this);
        addChild(tutorial_);
    }

    private function _Ik():void {
        var _local4:Number;
        var _local7:GameObject;
        var _local8:_Rk;
        if (((!(map)) || (!(map.player_)))) {
            return;
        }
        ;
        var _local1:Player = map.player_;
        var _local2:Number = _1bu._l9;
        var _local3:_Rk;
        var _local5:Number = _local1.x_;
        var _local6:Number = _local1.y_;
        for each (_local7 in map.goDict_) {
            _local8 = (_local7 as _Rk);
            if (((_local8) && (((!((_local8 is Pet))) || (this.map.isPetYard))))) {
                if ((((Math.abs((_local5 - _local7.x_)) < _1bu._l9)) || ((Math.abs((_local6 - _local7.y_)) < _1bu._l9)))) {
                    _local4 = PointUtil._1Ar(_local7.x_, _local7.y_, _local5, _local6);
                    if ((((_local4 < _1bu._l9)) && ((_local4 < _local2)))) {
                        _local2 = _local4;
                        _local3 = _local8;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        this._aI._O1 = _local3;
    }

    private function _0h4():Boolean {
        return (true);
    }

    public function _6h(_arg1:MouseEvent):void {
        if (this._CW != null) {
            this._fX();
        }
        ;
        mui_.onMouseDown(_arg1);
    }

    public function _0rq(_arg1:MouseEvent):void {
        mui_.onMouseUp(_arg1);
    }

    private function _r0(_arg1:Event):void {
        gsc_.checkCredits();
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local7:Number;
        var _local2:int = getTimer();
        var _local3:int = (_local2 - lastUpdate_);
        if (this._17X.update(_local3)) {
            closed.dispatch();
            return;
        }
        ;
        _0FD._UL(_local2);
        this._1JF = (this._1JF + _local3);
        this._173 = (this._173 + 1);
        if (this._1JF > 300000) {
            _local7 = int(Math.round(((1000 * this._173) / this._1JF)));
            GA.global().trackEvent("performance", "frameRate", map.name_, _local7);
            this._173 = 0;
            this._1JF = 0;
        }
        ;
        var _local4:int = getTimer();
        map.update(_local2, _local3);
        this._1ZX.dispatch("Map.update", (getTimer() - _local4));
        camera_.update(_local3);
        var _local5:Player = map.player_;
        if (this.focus) {
            camera_.configureCamera(this.focus, ((_local5) ? _local5._1Fh() : false));
            map.draw(camera_, _local2);
        }
        ;
        if (_local5 != null) {
            this._m1.draw(_local5.credits_, _local5._01D, _local5._58);
            this._0hh.dispatch(_local5);
            if (this.evalIsNotInCombatMapArea()) {
                this._1Qy.draw(_local5.numStars_);
                this._0Qb.draw(_local5.guildName_, _local5.guildRank_);
            }
            ;
            if (_local5.isPaused()) {
                map.filters = [_ak];
                hudView.filters = [_ak];
                map.mouseEnabled = false;
                map.mouseChildren = false;
                hudView.mouseEnabled = false;
                hudView.mouseChildren = false;
            } else {
                if (map.filters.length > 0) {
                    map.filters = [];
                    hudView.filters = [];
                    map.mouseEnabled = true;
                    map.mouseChildren = true;
                    hudView.mouseEnabled = true;
                    hudView.mouseChildren = true;
                }
                ;
            }
            ;
            moveRecords_.addRecord(_local2, _local5.x_, _local5.y_);
        }
        ;
        lastUpdate_ = _local2;
        var _local6:int = (getTimer() - _local2);
        this._1ZX.dispatch("GameSprite.loop", _local6);
    }


}
}//package com.company.assembleegameclient.game

