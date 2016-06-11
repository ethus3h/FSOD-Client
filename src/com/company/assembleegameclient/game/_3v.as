// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game._3v

package com.company.assembleegameclient.game {
import _0CT._8w;

import _0am._fs;

import _0cA._0bz;

import _0cy._0Ij;

import _1CB._0wl;

import _1E._0rN;
import _1E._1ne;

import _1Fr._1IN;

import _1JR.Stats;

import _1TC._08E;

import _1d9._0nV;
import _1d9._0z0;
import _1d9._1k4;
import _1d9._HW;
import _1d9._pF;

import _4p._1ae;

import _G8.Options;

import _gl._1bu;
import _gl._qV;

import _md._1ty;

import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.tutorial.Tutorial;
import com.company.assembleegameclient.tutorial.doneAction;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util._1N;

import flash.display.Stage;
import flash.display.StageDisplayState;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.system.Capabilities;

public class _3v {

    private static const _0w6:uint = 175;

    private static var _0Lc:Stats = new Stats();
    private static var _0YY:Boolean = false;

    public function _3v(_arg1:GameSprite) {
        this.gs_ = _arg1;
        this.gs_.addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        this.gs_.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        var _local2:_0bz = _8w._1Sz();
        this._1X4 = _local2.getInstance(_1k4);
        this._1u7 = _local2.getInstance(_0z0);
        this._b8 = _local2.getInstance(_0nV);
        this._10J = _local2.getInstance(_fs);
        this._au = _local2.getInstance(_HW);
        this._0eE = _local2.getInstance(_1ne);
        this._Hn = _local2.getInstance(_1IN);
        this._p7 = _local2.getInstance(_0Ij);
        this._0Pi = _local2.getInstance(_0wl);
        this._1dh = _local2.getInstance(_pF);
        var _local3:_1ae = _local2.getInstance(_1ae);
        this._gE = _local3._0X5();
        this.gs_.map.signalRenderSwitch.add(this._09P);
    }
    public var gs_:GameSprite;
    private var _mx:Boolean = false;
    private var _0Mg:Boolean = false;
    private var _r3:Boolean = false;
    private var _ki:Boolean = false;
    private var _13S:Boolean = false;
    private var _1w7:Boolean = false;
    private var _1YJ:Boolean = false;
    private var _8U:Boolean = false;
    private var _fM:Boolean = false;
    private var _Xo:Boolean = true;
    private var _1X4:_1k4;
    private var _1u7:_0z0;
    private var _b8:_0nV;
    private var _0Pi:_0wl;
    private var _10J:_fs;
    private var _au:_HW;
    private var _0eE:_1ne;
    private var _Hn:_1IN;
    private var _p7:_0Ij;
    private var _1dh:_pF;
    private var _gE:Boolean;

    public function _09P(_arg1:Boolean):void {
        if (_arg1) {
            this.gs_.stage.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.gs_.stage.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            this.gs_.map.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.gs_.map.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        } else {
            this.gs_.map.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.gs_.map.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
            this.gs_.stage.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.gs_.stage.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }
        ;
    }

    public function clearInput():void {
        this._mx = false;
        this._0Mg = false;
        this._r3 = false;
        this._ki = false;
        this._13S = false;
        this._1w7 = false;
        this._1YJ = false;
        this._8U = false;
        this._wJ();
    }

    public function setEnablePlayerInput(_arg1:Boolean):void {
        if (this._Xo != _arg1) {
            this._Xo = _arg1;
            this.clearInput();
        }
        ;
    }

    private function _wJ():void {
        var _local1:Player = this.gs_.map.player_;
        if (_local1 != null) {
            if (this._Xo) {
                _local1._1Dq((((this._1w7) ? 1 : 0) - ((this._13S) ? 1 : 0)), (((this._0Mg) ? 1 : 0) - ((this._mx) ? 1 : 0)), (((this._ki) ? 1 : 0) - ((this._r3) ? 1 : 0)));
            } else {
                _local1._1Dq(0, 0, 0);
            }
            ;
        }
        ;
    }

    private function useItem(_arg1:int):void {
        if (this._Hn._1C6 == _1IN._0Cj) {
            _arg1 = (_arg1 + _1bu._0KV);
        }
        ;
        _08E._a9.useItem_new(this.gs_.map.player_, _arg1);
    }

    private function togglePerformanceStats():void {
        if (this.gs_.contains(_0Lc)) {
            this.gs_.removeChild(_0Lc);
            this.gs_.removeChild(this.gs_.gsc_.jitterWatcher_);
            this.gs_.gsc_.disableJitterWatcher();
        } else {
            this.gs_.addChild(_0Lc);
            this.gs_.gsc_.enableJitterWatcher();
            this.gs_.gsc_.jitterWatcher_.y = _0Lc.height;
            this.gs_.addChild(this.gs_.gsc_.jitterWatcher_);
        }
        ;
    }

    private function _08h():void {
        Parameters._20Z = !(Parameters._20Z);
        if (Parameters._20Z) {
            this.gs_.hudView.visible = false;
            this._b8.dispatch(false);
        } else {
            this.gs_.hudView.visible = true;
            this._b8.dispatch(true);
        }
        ;
    }

    public function _2N(_arg1:MouseEvent):void {
    }

    public function onMouseDown(_arg1:MouseEvent):void {
        var _local3:Number;
        var _local4:int;
        var _local5:XML;
        var _local6:Number;
        var _local7:Number;
        var _local2:Player = this.gs_.map.player_;
        if (_local2 == null) {
            return;
        }
        ;
        if (!this._Xo) {
            return;
        }
        ;
        if (_arg1.shiftKey) {
            _local4 = _local2._0Z[1];
            if (_local4 == -1) {
                return;
            }
            ;
            _local5 = ObjectLibrary._18H[_local4];
            if ((((_local5 == null)) || (_local5.hasOwnProperty("EndMpCost")))) {
                return;
            }
            ;
            if (_local2.isUnstable()) {
                _local6 = ((Math.random() * 600) - 300);
                _local7 = ((Math.random() * 600) - 325);
            } else {
                _local6 = this.gs_.map.mouseX;
                _local7 = this.gs_.map.mouseY;
            }
            ;
            if (Parameters._0g5()) {
                if ((((((_arg1.currentTarget == _arg1.target)) || ((_arg1.target == this.gs_.map)))) || ((_arg1.target == this.gs_)))) {
                    _local2.useAltWeapon(_local6, _local7, _qV._016);
                }
                ;
            } else {
                _local2.useAltWeapon(_local6, _local7, _qV._016);
            }
            ;
            return;
        }
        ;
        if (Parameters._0g5()) {
            if ((((((((_arg1.currentTarget == _arg1.target)) || ((_arg1.target == this.gs_.map)))) || ((_arg1.target == this.gs_)))) || ((_arg1.currentTarget == this.gs_._1Xv.list)))) {
                _local3 = Math.atan2(this.gs_.map.mouseY, this.gs_.map.mouseX);
            } else {
                return;
            }
            ;
        } else {
            _local3 = Math.atan2(this.gs_.map.mouseY, this.gs_.map.mouseX);
        }
        ;
        doneAction(this.gs_, Tutorial._0pQ);
        if (_local2.isUnstable()) {
            _local2._Sn((Math.random() * 360));
        } else {
            _local2._Sn(_local3);
        }
        ;
        this._1YJ = true;
    }

    public function onMouseUp(_arg1:MouseEvent):void {
        this._1YJ = false;
        var _local2:Player = this.gs_.map.player_;
        if (_local2 == null) {
            return;
        }
        ;
        _local2.isShooting = false;
    }

    private function onAddedToStage(_arg1:Event):void {
        var _local2:Stage = this.gs_.stage;
        _local2.addEventListener(Event.ACTIVATE, this._7S);
        _local2.addEventListener(Event.DEACTIVATE, this._I3);
        _local2.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        _local2.addEventListener(KeyboardEvent.KEY_UP, this._1Gn);
        _local2.addEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
        if (Parameters._0g5()) {
            _local2.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            _local2.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        } else {
            this.gs_.map.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.gs_.map.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }
        ;
        _local2.addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        _local2.addEventListener(MouseEvent.RIGHT_CLICK, this._2N);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        var _local2:Stage = this.gs_.stage;
        _local2.removeEventListener(Event.ACTIVATE, this._7S);
        _local2.removeEventListener(Event.DEACTIVATE, this._I3);
        _local2.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        _local2.removeEventListener(KeyboardEvent.KEY_UP, this._1Gn);
        _local2.removeEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
        if (Parameters._0g5()) {
            _local2.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            _local2.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        } else {
            this.gs_.map.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
            this.gs_.map.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        }
        ;
        _local2.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        _local2.removeEventListener(MouseEvent.RIGHT_CLICK, this._2N);
    }

    private function _7S(_arg1:Event):void {
    }

    private function _I3(_arg1:Event):void {
        this.clearInput();
    }

    private function _0YS(_arg1:MouseEvent):void {
        if (_arg1.delta > 0) {
            this._10J.dispatch(_fs.IN);
        } else {
            this._10J.dispatch(_fs.OUT);
        }
        ;
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local2:Player;
        var _local3:Number;
        doneAction(this.gs_, Tutorial._FL);
        if (((this._Xo) && (((this._1YJ) || (this._8U))))) {
            _local2 = this.gs_.map.player_;
            if (_local2 != null) {
                if (_local2.isUnstable()) {
                    _local2._Sn((Math.random() * 360));
                } else {
                    _local3 = Math.atan2(this.gs_.map.mouseY, this.gs_.map.mouseX);
                    _local2._Sn(_local3);
                }
                ;
            }
            ;
        }
        ;
    }

    private function _13y(_arg1:KeyboardEvent):void {
        var _local4:GameObject;
        var _local5:Number;
        var _local6:Number;
        var _local7:Boolean;
        var _local8:Square;
        var _local2:Stage = this.gs_.stage;
        switch (_arg1.keyCode) {
            case _1N.F1:
            case _1N.F2:
            case _1N.F3:
            case _1N.F4:
            case _1N.F5:
            case _1N.F6:
            case _1N.F7:
            case _1N.F8:
            case _1N.F9:
            case _1N.F10:
            case _1N.F11:
            case _1N.F12:
            case _1N._1QP:
            case _1N._1S7:
                break;
            default:
                if (_local2.focus != null) {
                    return;
                }
                ;
        }
        ;
        var _local3:Player = this.gs_.map.player_;
        switch (_arg1.keyCode) {
            case Parameters.data_.moveUp:
                doneAction(this.gs_, Tutorial._06P);
                this._r3 = true;
                break;
            case Parameters.data_.moveDown:
                doneAction(this.gs_, Tutorial._1Bk);
                this._ki = true;
                break;
            case Parameters.data_.moveLeft:
                doneAction(this.gs_, Tutorial._1K4);
                this._mx = true;
                break;
            case Parameters.data_.moveRight:
                doneAction(this.gs_, Tutorial._0dm);
                this._0Mg = true;
                break;
            case Parameters.data_.rotateLeft:
                if (!Parameters.data_.allowRotation) break;
                doneAction(this.gs_, Tutorial._0RV);
                this._13S = true;
                break;
            case Parameters.data_.rotateRight:
                if (!Parameters.data_.allowRotation) {
                    break;
                }
                ;
                doneAction(this.gs_, Tutorial._Ty);
                this._1w7 = true;
                break;
            case Parameters.data_.resetToDefaultCameraAngle:
                Parameters.data_.cameraAngle = Parameters.data_.defaultCameraAngle;
                Parameters.save();
                break;
            case Parameters.data_.useSpecial:
                _local4 = this.gs_.map.player_;
                if (_local4 == null) break;
                if (!this._fM) {
                    if (_local3.isUnstable()) {
                        _local5 = ((Math.random() * 600) - 300);
                        _local6 = ((Math.random() * 600) - 325);
                    } else {
                        _local5 = this.gs_.map.mouseX;
                        _local6 = this.gs_.map.mouseY;
                    }
                    ;
                    _local7 = _local3.useAltWeapon(_local5, _local6, _qV._016);
                    if (_local7) {
                        this._fM = true;
                    }
                    ;
                }
                ;
                break;
            case Parameters.data_.autofireToggle:
                this.gs_.map.player_.isShooting = (this._8U = !(this._8U));
                break;
            case Parameters.data_.useInvSlot1:
                this.useItem(4);
                break;
            case Parameters.data_.useInvSlot2:
                this.useItem(5);
                break;
            case Parameters.data_.useInvSlot3:
                this.useItem(6);
                break;
            case Parameters.data_.useInvSlot4:
                this.useItem(7);
                break;
            case Parameters.data_.useInvSlot5:
                this.useItem(8);
                break;
            case Parameters.data_.useInvSlot6:
                this.useItem(9);
                break;
            case Parameters.data_.useInvSlot7:
                this.useItem(10);
                break;
            case Parameters.data_.useInvSlot8:
                this.useItem(11);
                break;
            case Parameters.data_.useHealthPotion:
                if (this._0eE._9s(_1ne._0ip).available) {
                    this._au.dispatch(new _0rN(_1ne._0ip, _0rN._1vp));
                }
                ;
                break;
            case Parameters.data_.GPURenderToggle:
                Parameters.data_.GPURender = !(Parameters.data_.GPURender);
                break;
            case Parameters.data_.useMagicPotion:
                if (this._0eE._9s(_1ne._0Kh).available) {
                    this._au.dispatch(new _0rN(_1ne._0Kh, _0rN._1vp));
                }
                ;
                break;
            case Parameters.data_.miniMapZoomOut:
                this._10J.dispatch(_fs.OUT);
                break;
            case Parameters.data_.miniMapZoomIn:
                this._10J.dispatch(_fs.IN);
                break;
            case Parameters.data_.togglePerformanceStats:
                this.togglePerformanceStats();
                break;
            case Parameters.data_.escapeToNexus:
            case Parameters.data_.escapeToNexus2:
                this._1dh.dispatch();
                this.gs_.gsc_.escape();
                Parameters.data_.needsRandomRealm = false;
                Parameters.save();
                break;
            case Parameters.data_.options:
                this.clearInput();
                this._p7._157.addChild(new Options(this.gs_));
                break;
            case Parameters.data_.toggleCentering:
                Parameters.data_.centerOnPlayer = !(Parameters.data_.centerOnPlayer);
                Parameters.save();
                break;
            case Parameters.data_.toggleFullscreen:
                if (Capabilities.playerType == "Desktop") {
                    Parameters.data_.fullscreenMode = !(Parameters.data_.fullscreenMode);
                    Parameters.save();
                    _local2.displayState = ((Parameters.data_.fullscreenMode) ? "fullScreenInteractive" : StageDisplayState.NORMAL);
                }
                ;
                break;
            case Parameters.data_.switchTabs:
                this._0Pi.dispatch();
                break;
            case Parameters.data_.testOne:
                break;
            case Parameters.data_.testTwo:
                break;
        }
        ;
        if (Parameters._1cW) {
            switch (_arg1.keyCode) {
                case _1N.F2:
                    this._08h();
                    break;
                case _1N.F3:
                    Parameters._0gP = !(Parameters._0gP);
                    break;
                case _1N.F4:
                    this.gs_.map.mapOverlay_.visible = !(this.gs_.map.mapOverlay_.visible);
                    this.gs_.map.partyOverlay_.visible = !(this.gs_.map.partyOverlay_.visible);
                    break;
            }
            ;
        }
        ;
        if (this._gE) {
            switch (_arg1.keyCode) {
                case _1N.F6:
                    TextureRedrawer.clearCache();
                    Parameters._1la = ((Parameters._1la + 1) % 7);
                    this._1u7.dispatch(_1ty.make(Parameters._0c, ("Projectile Color Type: " + Parameters._1la)));
                    break;
                case _1N.F7:
                    for each (_local8 in this.gs_.map.squares_) {
                        if (_local8 == null) {
                        } else {
                            _local8.faces_.length = 0;
                        }
                        ;
                    }
                    ;
                    Parameters._wq = ((Parameters._wq + 1) % 2);
                    this._1u7.dispatch(_1ty.make(Parameters._11L, ("Blend type: " + Parameters._wq)));
                    break;
                case _1N.F8:
                    Parameters.data_.surveyDate = 0;
                    Parameters.data_.needsSurvey = true;
                    Parameters.data_.playTimeLeftTillSurvey = 5;
                    Parameters.data_.surveyGroup = "testing";
                    break;
                case _1N.F9:
                    Parameters._IH = !(Parameters._IH);
                    break;
            }
            ;
        }
        ;
        this._wJ();
    }

    private function _1Gn(_arg1:KeyboardEvent):void {
        var _local2:Number;
        var _local3:Number;
        switch (_arg1.keyCode) {
            case Parameters.data_.moveUp:
                this._r3 = false;
                break;
            case Parameters.data_.moveDown:
                this._ki = false;
                break;
            case Parameters.data_.moveLeft:
                this._mx = false;
                break;
            case Parameters.data_.moveRight:
                this._0Mg = false;
                break;
            case Parameters.data_.rotateLeft:
                this._13S = false;
                break;
            case Parameters.data_.rotateRight:
                this._1w7 = false;
                break;
            case Parameters.data_.useSpecial:
                if (this._fM) {
                    this._fM = false;
                    if (this.gs_.map.player_.isUnstable()) {
                        _local2 = ((Math.random() * 600) - 300);
                        _local3 = ((Math.random() * 600) - 325);
                    } else {
                        _local2 = this.gs_.map.mouseX;
                        _local3 = this.gs_.map.mouseY;
                    }
                    ;
                    this.gs_.map.player_.useAltWeapon(this.gs_.map.mouseX, this.gs_.map.mouseY, _qV._073);
                }
                ;
                break;
        }
        ;
        this._wJ();
    }


}
}//package com.company.assembleegameclient.game

