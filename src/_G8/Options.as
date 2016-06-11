// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_G8.Options

package _G8 {
import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _1TG._0W6;
import _1TG._1Y;

import _6u._TG;

import _U1._1O0;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui.StatusBar;
import com.company.rotmg.graphics.ScreenGraphic;
import com.company.util._1N;

import flash.display.Sprite;
import flash.display.StageDisplayState;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import flash.net.navigateToURL;
import flash.system.Capabilities;
import flash.text.TextFieldAutoSize;

public class Options extends Sprite {

    private static const _Ih:Vector.<String> = new <String>[_TG._1e5, _TG._0RZ, _TG._Qa, _TG._0bj, _TG._lL, _TG._1RQ];
    public static const _0H8:int = 550;
    public static const _1Xa:String = "chatCommand";
    public static const _0pp:String = "chat";
    public static const _0Wp:String = "tell";
    public static const _0mb:String = "guildChat";
    public static const _0mE:String = "scrollChatUp";
    public static const _0pk:String = "scrollChatDown";

    private static function _1uq():_066 {
        return (new _066("contextualPotionBuy", _So(), [true, false], _TG._1dH, _TG._Iy, null));
    }

    private static function _So():Vector.<_1vN> {
        return (new <_1vN>[_f6(_TG._0ka), _f6(_TG._q7)]);
    }

    private static function _1GV():Vector.<_1vN> {
        return (new <_1vN>[new _1M("Off"), new _1M("1"), new _1M("2"), new _1M("3"), new _1M("5"), new _1M("10")]);
    }

    private static function _f6(_arg1:String):_5R {
        return (new _5R().setParams(_arg1));
    }

    private static function _19s():_066 {
        return (new _066("clickForGold", _So(), [true, false], _TG._0RR, _TG._1I1, null));
    }

    private static function _0QI():void {
        StatusBar._a7.dispatch(Parameters.data_.toggleBarText);
    }

    private static function _1pc():Vector.<_1vN> {
        return (new <_1vN>[new _1M("45°"), new _1M("0°")]);
    }

    private static function _1Vv():void {
        Parameters.data_.cameraAngle = Parameters.data_.defaultCameraAngle;
        Parameters.save();
    }

    public function Options(_arg1:GameSprite) {
        var _local3:int;
        var _local5:_0EU;
        this._1Et = new Vector.<_0EU>();
        this._oo = new Vector.<Sprite>();
        super();
        this.gs_ = _arg1;
        graphics.clear();
        graphics.beginFill(0x2B2B2B, 0.8);
        graphics.drawRect(0, 0, 800, 600);
        graphics.endFill();
        graphics.lineStyle(1, 0x5E5E5E);
        graphics.moveTo(0, 100);
        graphics.lineTo(800, 100);
        graphics.lineStyle();
        var _local2:_06T = new _06T().setSize(36).setColor(0xFFFFFF);
        _local2.setBold(true);
        _local2.setStringBuilder(new _5R().setParams(_TG._fJ));
        _local2.setAutoSize(TextFieldAutoSize.CENTER);
        _local2.filters = [new DropShadowFilter(0, 0, 0)];
        _local2.x = ((800 / 2) - (_local2.width / 2));
        _local2.y = 8;
        addChild(_local2);
        addChild(new ScreenGraphic());
        this._0vM = new _1O0(_TG._0BY, 36, false);
        this._0vM.setVerticalAlign(_06T.MIDDLE);
        this._0vM.setAutoSize(TextFieldAutoSize.CENTER);
        this._0vM.addEventListener(MouseEvent.CLICK, this._0YN);
        addChild(this._0vM);
        this._0xf = new _1O0(_TG._sM, 22, false);
        this._0xf.setVerticalAlign(_06T.MIDDLE);
        this._0xf.setAutoSize(TextFieldAutoSize.LEFT);
        this._0xf.addEventListener(MouseEvent.CLICK, this._15e);
        addChild(this._0xf);
        this._0gH = new _1O0(_TG._Na, 22, false);
        this._0gH.setVerticalAlign(_06T.MIDDLE);
        this._0gH.setAutoSize(TextFieldAutoSize.RIGHT);
        this._0gH.addEventListener(MouseEvent.CLICK, this._2Y);
        addChild(this._0gH);
        _local3 = 14;
        var _local4:int;
        while (_local4 < _Ih.length) {
            _local5 = new _0EU(_Ih[_local4]);
            _local5.x = _local3;
            _local5.y = 70;
            addChild(_local5);
            _local5.addEventListener(MouseEvent.CLICK, this._1li);
            this._1Et.push(_local5);
            _local3 = (_local3 + 108);
            _local4++;
        }
        ;
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var gs_:GameSprite;
    private var _0vM:_1O0;
    private var _0xf:_1O0;
    private var _0gH:_1O0;
    private var _1Et:Vector.<_0EU>;
    private var selected_:_0EU = null;
    private var _oo:Vector.<Sprite>;

    public function _jI():Boolean {
        return ((Capabilities.playerType == "Desktop"));
    }

    public function _04w():void {
        var _local1:String = (((Capabilities.os.split(" ")[0] == "Mac")) ? "Command" : "Ctrl");
        var _local2:_066 = new _066("inventorySwap", _So(), [true, false], _TG._0G, "", null);
        _local2._0rB(new _5R().setParams(_TG._1rz, {key: _local1}));
        this._0Me(_local2);
    }

    public function _0ZX():void {
        var _local2:_17M;
        var _local1:int = 1;
        while (_local1 <= 8) {
            _local2 = new _17M(("useInvSlot" + _local1), "", "");
            _local2._0X7(new _5R().setParams(_TG._oj, {n: _local1}));
            _local2._0rB(new _5R().setParams(_TG._case, {n: _local1}));
            this._0Me(_local2);
            _local1++;
        }
        ;
    }

    private function setSelected(_arg1:_0EU):void {
        if (_arg1 == this.selected_) {
            return;
        }
        ;
        if (this.selected_ != null) {
            this.selected_.setSelected(false);
        }
        ;
        this.selected_ = _arg1;
        this.selected_.setSelected(true);
        this._0IT();
        switch (this.selected_.text_) {
            case _TG._1e5:
                this._1gp();
                return;
            case _TG._0RZ:
                this._0Wk();
                return;
            case _TG._Qa:
                this._18Y();
                return;
            case _TG._0bj:
                this._0Oi();
                return;
            case _TG._lL:
                this._p0();
                return;
            case _TG._1RQ:
                this._6();
                return;
        }
        ;
    }

    private function close():void {
        stage.focus = null;
        parent.removeChild(this);
    }

    private function _0IT():void {
        var _local1:Sprite;
        for each (_local1 in this._oo) {
            removeChild(_local1);
        }
        ;
        this._oo.length = 0;
    }

    private function _1gp():void {
        this._0Me(new _17M("moveUp", _TG._1MX, _TG._13T));
        this._0Me(new _17M("moveLeft", _TG._15r, _TG._each));
        this._0Me(new _17M("moveDown", _TG._T0, _TG._0CG));
        this._0Me(new _17M("moveRight", _TG._0mU, _TG._1KO));
        this._0Me(this._QQ());
        this._0Me(new _17M("rotateLeft", _TG._12D, _TG._0Xx, !(Parameters.data_.allowRotation)));
        this._0Me(new _17M("rotateRight", _TG._1dk, _TG._0Tb, !(Parameters.data_.allowRotation)));
        this._0Me(new _17M("useSpecial", _TG._20D, _TG._1H8));
        this._0Me(new _17M("autofireToggle", _TG._1Aw, _TG._yq));
        this._0Me(new _17M("resetToDefaultCameraAngle", _TG._1YB, _TG._13t));
        this._0Me(new _17M("togglePerformanceStats", _TG._11u, _TG._1hA));
        this._0Me(new _17M("toggleCentering", _TG._0Z8, _TG._07d));
        this._0Me(new _17M("interact", _TG._0Ox, _TG._1RP));
        this._0Me(_19s());
        this._0Me(_1uq());
    }

    private function _QQ():_066 {
        return (new _066("allowRotation", _So(), [true, false], _TG._1JQ, _TG._1UG, this._0s));
    }

    private function _0s():void {
        var _local2:_17M;
        var _local1:int;
        while (_local1 < this._oo.length) {
            _local2 = (this._oo[_local1] as _17M);
            if (_local2 == null) {
            } else {
                if ((((_local2._07j == "rotateLeft")) || ((_local2._07j == "rotateRight")))) {
                    _local2._0KW(!(Parameters.data_.allowRotation));
                }
                ;
            }
            ;
            _local1++;
        }
        ;
    }

    private function _0Wk():void {
        this._0Me(new _17M("useHealthPotion", _TG._0j7, _TG._1tp));
        this._0Me(new _17M("useMagicPotion", _TG._03I, _TG._0W7));
        this._0ZX();
        this._0Me(new _17M("miniMapZoomIn", _TG._Jq, _TG._17n));
        this._0Me(new _17M("miniMapZoomOut", _TG._0VY, _TG._0Nc));
        this._0Me(new _17M("escapeToNexus", _TG._vq, _TG._01J));
        this._0Me(new _17M("options", _TG._mT, _TG._1rw));
        this._0Me(new _17M("switchTabs", _TG._0bh, _TG._0Xk));
        this._0Me(new _17M("GPURenderToggle", _TG._12h, _TG._0g));
        this._04w();
        if (this._jI()) {
            this._0Me(new _17M("toggleFullscreen", _TG._0re, _TG._1I0));
        }
        ;
    }

    private function _18Y():void {
        this._0Me(new _17M(_0pp, _TG._02w, _TG._1be));
        this._0Me(new _17M(_1Xa, _TG._0mX, _TG._10F));
        this._0Me(new _17M(_0Wp, _TG._1ef, _TG._1bf));
        this._0Me(new _17M(_0mb, _TG._3J, _TG._09K));
        this._0Me(new _066("filterLanguage", _So(), [true, false], _TG._1hO, _TG._21J, null));
        this._0Me(new _17M(_0mE, _TG._1Jp, _TG._0ZB));
        this._0Me(new _17M(_0pk, _TG._1Q7, _TG._1ZI));
        this._0Me(new _066("forceChatQuality", _So(), [true, false], _TG._0MB, _TG._Is, null));
        this._0Me(new _066("hidePlayerChat", _So(), [true, false], _TG._0OI, _TG._1ks, null));
        this._0Me(new _066("chatStarRequirement", _1GV(), [0, 1, 2, 3, 5, 10], _TG._Pe, _TG._08B, null));
        this._0Me(new _066("chatAll", _So(), [true, false], _TG._vd, _TG._0T9, this._1Op));
        this._0Me(new _066("chatWhisper", _So(), [true, false], _TG._SD, _TG._1Kg, this._0di));
        this._0Me(new _066("chatGuild", _So(), [true, false], _TG._0qO, _TG._0L8, this._0di));
        this._0Me(new _066("chatTrade", _So(), [true, false], _TG._oi, _TG._0b5, null));
    }

    private function _0di():void {
        var _local2:_066;
        Parameters.data_.chatAll = false;
        var _local1:int;
        while (_local1 < this._oo.length) {
            _local2 = (this._oo[_local1] as _066);
            if (_local2 == null) {
            } else {
                switch (_local2._07j) {
                    case "chatAll":
                        _local2._Zk();
                        break;
                }
                ;
            }
            ;
            _local1++;
        }
        ;
    }

    private function _1Op():void {
        var _local2:_066;
        Parameters.data_.hidePlayerChat = false;
        Parameters.data_.chatWhisper = true;
        Parameters.data_.chatGuild = true;
        var _local1:int;
        while (_local1 < this._oo.length) {
            _local2 = (this._oo[_local1] as _066);
            if (_local2 == null) {
            } else {
                switch (_local2._07j) {
                    case "hidePlayerChat":
                    case "chatWhisper":
                    case "chatGuild":
                        _local2._Zk();
                        break;
                }
                ;
            }
            ;
            _local1++;
        }
        ;
    }

    private function _0Oi():void {
        var _local1:String;
        var _local2:Number;
        this._0Me(new _066("defaultCameraAngle", _1pc(), [((7 * Math.PI) / 4), 0], _TG._1tz, _TG._pW, _1Vv));
        this._0Me(new _066("centerOnPlayer", _So(), [true, false], _TG._0Fq, _TG._0Uy, null));
        this._0Me(new _066("showQuestPortraits", _So(), [true, false], _TG._1GK, _TG._1tE, this._1dq));
        this._0Me(new _066("showProtips", _So(), [true, false], _TG._090, _TG._0As, null));
        this._0Me(new _066("drawShadows", _So(), [true, false], _TG._0BQ, _TG._Xq, null));
        this._0Me(new _066("textBubbles", _So(), [true, false], _TG._0zi, _TG._1g8, null));
        this._0Me(new _066("showTradePopup", _So(), [true, false], _TG._1u, _TG._XH, null));
        this._0Me(new _066("showGuildInvitePopup", _So(), [true, false], _TG._1hk, _TG._0Ig, null));
        if (!Parameters._YE) {
            _local1 = _TG._1tf;
            _local2 = 0xFFFFFF;
        } else {
            _local1 = _TG._tG;
            _local2 = 16724787;
        }
        ;
        this._0Me(new _066("GPURender", _So(), [true, false], _TG._0LF, _local1, null, _local2));
        if (Capabilities.playerType == "Desktop") {
            this._0Me(new _066("fullscreenMode", _So(), [true, false], _TG._0SA, _TG._1H, this._1Dl));
        }
        ;
        this._0Me(new _066("toggleBarText", _So(), [true, false], _TG._1CR, _TG._09x, _0QI));
    }

    private function _1dq():void {
        if (((((((!((this.gs_ == null))) && (!((this.gs_.map == null))))) && (!((this.gs_.map.partyOverlay_ == null))))) && (!((this.gs_.map.partyOverlay_.questArrow_ == null))))) {
            this.gs_.map.partyOverlay_.questArrow_.refreshToolTip();
        }
        ;
    }

    private function _1Dl():void {
        stage.displayState = ((Parameters.data_.fullscreenMode) ? "fullScreenInteractive" : StageDisplayState.NORMAL);
    }

    private function _p0():void {
        this._0Me(new _066("playMusic", _So(), [true, false], _TG._0eX, _TG._0yG, this._1Y6));
        this._0Me(new _CV());
        this._0Me(new _066("playSFX", _So(), [true, false], _TG._1ib, _TG._16, this._148));
        this._0Me(new _CV());
        this._0Me(new _066("playPewPew", _So(), [true, false], _TG._8O, _TG._tO, null));
    }

    private function _6():void {
        this._0Me(new _066("showProtips", new <_1vN>[_f6(_TG._0tQ), _f6(_TG._0tQ)], [Parameters.data_.showProtips, Parameters.data_.showProtips], _TG._1TX, _TG._0F7, this._0c9));
        this._0Me(new _CV());
        this._0Me(new _066("showProtips", new <_1vN>[_f6(_TG._0tQ), _f6(_TG._0tQ)], [Parameters.data_.showProtips, Parameters.data_.showProtips], _TG._1wX, _TG._1c, this._case));
        this._0Me(new _CV());
    }

    private function _1Y6():void {
        _0W6._16i(Parameters.data_.playMusic);
    }

    private function _148():void {
        _1Y._dI(Parameters.data_.playSFX);
    }

    private function _0c9():void {
        var _local1:URLRequest = new URLRequest();
        _local1.url = Parameters._0WZ;
        _local1.method = URLRequestMethod.GET;
        navigateToURL(_local1, "_blank");
    }

    private function _case():void {
        var _local1:URLRequest = new URLRequest();
        _local1.url = Parameters._FJ;
        _local1.method = URLRequestMethod.GET;
        navigateToURL(_local1, "_blank");
    }

    private function _0Me(_arg1:_true):void {
        var positionOption:Function;
        var option:_true = _arg1;
        positionOption = function ():void {
            option.x = ((((_oo.length % 2) == 0)) ? 20 : 415);
            option.y = ((int((_oo.length / 2)) * 44) + 122);
        };
        option.textChanged.addOnce(positionOption);
        this._iL(option);
    }

    private function _iL(_arg1:_true):void {
        addChild(_arg1);
        _arg1.addEventListener(Event.CHANGE, this._1PA);
        this._oo.push(_arg1);
    }

    private function refresh():void {
        var _local2:_1of;
        var _local1:int;
        while (_local1 < this._oo.length) {
            _local2 = (this._oo[_local1] as _1of);
            if (_local2 == null) {
            } else {
                _local2.refresh();
            }
            ;
            _local1++;
        }
        ;
    }

    private function _0YN(_arg1:MouseEvent):void {
        this.close();
    }

    private function _15e(_arg1:MouseEvent):void {
        var _local3:_1of;
        var _local2:int;
        while (_local2 < this._oo.length) {
            _local3 = (this._oo[_local2] as _1of);
            if (_local3 == null) {
            } else {
                delete Parameters.data_[_local3._07j];
            }
            ;
            _local2++;
        }
        ;
        Parameters._1k3();
        Parameters.save();
        this.refresh();
    }

    private function _2Y(_arg1:MouseEvent):void {
        this.close();
        this.gs_.closed.dispatch();
    }

    private function _1li(_arg1:MouseEvent):void {
        var _local2:_0EU = (_arg1.currentTarget as _0EU);
        this.setSelected(_local2);
    }

    private function onAddedToStage(_arg1:Event):void {
        this._0vM.x = (stage.stageWidth / 2);
        this._0vM.y = _0H8;
        this._0xf.x = 20;
        this._0xf.y = _0H8;
        this._0gH.x = (stage.stageWidth - 20);
        this._0gH.y = _0H8;
        if (Capabilities.playerType == "Desktop") {
            Parameters.data_.fullscreenMode = (stage.displayState == "fullScreenInteractive");
            Parameters.save();
        }
        ;
        this.setSelected(this._1Et[0]);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y, false, 1);
        stage.addEventListener(KeyboardEvent.KEY_UP, this._1Gn, false, 1);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y, false);
        stage.removeEventListener(KeyboardEvent.KEY_UP, this._1Gn, false);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((Capabilities.playerType == "Desktop")) && ((_arg1.keyCode == _1N.ESCAPE)))) {
            Parameters.data_.fullscreenMode = false;
            Parameters.save();
            this.refresh();
        }
        ;
        if (_arg1.keyCode == Parameters.data_.options) {
            this.close();
        }
        ;
        _arg1.stopImmediatePropagation();
    }

    private function _1Gn(_arg1:KeyboardEvent):void {
        _arg1.stopImmediatePropagation();
    }

    private function _1PA(_arg1:Event):void {
        this.refresh();
    }


}
}//package _G8

