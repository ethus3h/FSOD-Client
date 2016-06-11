// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.parameters.Parameters

package com.company.assembleegameclient.parameters {
import com.company.assembleegameclient.map.Map;
import com.company.util._1N;
import com.company.util._FF;

import flash.display.DisplayObject;
import flash.events.Event;
import flash.net.SharedObject;
import flash.system.Capabilities;
import flash.utils.Dictionary;

public class Parameters {

    public static const _1Q2:String = "27.3";
    public static const _0te:String = "2";
    public static const _0ok:Boolean = true;
    public static const _oE:int = 2050;
    public static const _1cW:Boolean = false;
    public static const _B2:uint = 10944349;
    public static const _0e4:uint = 0xFCDF00;
    public static const _0P9:Number = 0.003;
    public static const _Vq:int = 20;
    public static const _1o9:String = "";
    public static const _11L:String = "*Client*";
    public static const _0c:String = "*Error*";
    public static const _0Cn:String = "*Help*";
    public static const _1Ke:String = "*Guild*";
    public static const _1EJ:Number = 1.1;
    public static const _2B:int = 1000;
    public static const _1W9:int = 1000;
    public static const _J9:int = -1;
    public static const _Cf:int = -2;
    public static const _0Gx:int = -3;
    public static const _0uy:int = -6;
    public static const _Hw:Number = 18;
    public static const _FJ:String = "https://www.kabam.com/corporate/terms-of-service";
    public static const _0WZ:String = "https://www.kabam.com/corporate/privacy-policy";
    public static const RANDOM1:String = "311f80691451c71b09a13a2a6e";
    public static const RANDOM2:String = "72c5583cafb6818995cbd74b80";
    public static const _1BU:String = ((((("-----BEGIN PUBLIC KEY-----\n" + "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbqweYUxzW0IiCwuBAzx6Htskr") + "hWW+B0iX4LMu2xqRh4gh52HUVu9nNiXso7utTKCv/HNK19v5xoWp3Cne23sicp2o") + "VGgKMFSowBFbtr+fhsq0yHv+JxixkL3WLnXcY3xREz7LOzVMoybUCmJzzhnzIsLP") + "iIPdpI1PxFDcnFbdRQIDAQAB\n") + "-----END PUBLIC KEY-----");

    public static var root:DisplayObject;
    public static var data_:Object = null;
    public static var _YE:Boolean = false;
    public static var _wq:int = 1;
    public static var _1la:int = 0;
    public static var _IH:Boolean = true;
    public static var _20Z:Boolean = false;
    public static var _0gP:Boolean = false;
    public static var _1o6:Boolean = true;
    private static var _1L6:SharedObject = null;
    private static var _WN:Dictionary = new Dictionary();


    public static function load():void {
        try {
            _1L6 = SharedObject.getLocal("AssembleeGameClientOptions", "/");
            data_ = _1L6.data;
        } catch (error:Error) {
            data_ = new Object();
        }
        ;
        _1k3();
        save();
    }

    public static function save():void {
        try {
            if (_1L6 != null) {
                _1L6.flush();
            }
            ;
        } catch (error:Error) {
        }
        ;
    }

    public static function setKey(_arg1:String, _arg2:uint):void {
        var _local3:String;
        for (_local3 in _WN) {
            if (data_[_local3] == _arg2) {
                data_[_local3] = _1N._ex;
            }
            ;
        }
        ;
        data_[_arg1] = _arg2;
    }

    public static function _0g5():Boolean {
        return (((((!(_YE)) && (data_.GPURender))) && (!(Map._1N8))));
    }

    public static function _rM():void {
        _YE = true;
    }

    public static function _1k3():void {
        _0cJ("moveLeft", _1N.A);
        _0cJ("moveRight", _1N.D);
        _0cJ("moveUp", _1N.W);
        _0cJ("moveDown", _1N.S);
        _0cJ("rotateLeft", _1N.Q);
        _0cJ("rotateRight", _1N.E);
        _0cJ("useSpecial", _1N.SPACE);
        _0cJ("interact", _1N.NUMBER_0);
        _0cJ("useInvSlot1", _1N.NUMBER_1);
        _0cJ("useInvSlot2", _1N.NUMBER_2);
        _0cJ("useInvSlot3", _1N.NUMBER_3);
        _0cJ("useInvSlot4", _1N.NUMBER_4);
        _0cJ("useInvSlot5", _1N.NUMBER_5);
        _0cJ("useInvSlot6", _1N.NUMBER_6);
        _0cJ("useInvSlot7", _1N.NUMBER_7);
        _0cJ("useInvSlot8", _1N.NUMBER_8);
        _0cJ("escapeToNexus2", _1N.F5);
        _0cJ("escapeToNexus", _1N.R);
        _0cJ("autofireToggle", _1N.I);
        _0cJ("scrollChatUp", _1N._15P);
        _0cJ("scrollChatDown", _1N._1cS);
        _0cJ("miniMapZoomOut", _1N._00s);
        _0cJ("miniMapZoomIn", _1N._14M);
        _0cJ("resetToDefaultCameraAngle", _1N.Z);
        _0cJ("togglePerformanceStats", _1N._ex);
        _0cJ("options", _1N.O);
        _0cJ("toggleCentering", _1N._ex);
        _0cJ("chat", _1N.ENTER);
        _0cJ("chatCommand", _1N._z9);
        _0cJ("tell", _1N.TAB);
        _0cJ("guildChat", _1N.G);
        _0cJ("testOne", _1N.J);
        _0cJ("testTwo", _1N.K);
        _0cJ("toggleFullscreen", _1N._ex);
        _0cJ("useHealthPotion", _1N.F);
        _0cJ("GPURenderToggle", _1N._ex);
        _0cJ("useMagicPotion", _1N.V);
        _0cJ("switchTabs", _1N.B);
        _HJ("playerObjectType", 782);
        _HJ("playMusic", true);
        _HJ("playSFX", true);
        _HJ("playPewPew", true);
        _HJ("centerOnPlayer", true);
        _HJ("preferredServer", null);
        _HJ("needsTutorial", true);
        _HJ("needsRandomRealm", true);
        _HJ("cameraAngle", ((7 * Math.PI) / 4));
        _HJ("defaultCameraAngle", ((7 * Math.PI) / 4));
        _HJ("showQuestPortraits", true);
        _HJ("fullscreenMode", false);
        _HJ("showProtips", true);
        _HJ("protipIndex", 0);
        _HJ("joinDate", _FF._2());
        _HJ("lastDailyAnalytics", null);
        _HJ("allowRotation", false);
        _HJ("charIdUseMap", {});
        _HJ("drawShadows", true);
        _HJ("textBubbles", true);
        _HJ("showTradePopup", true);
        _HJ("paymentMethod", null);
        _HJ("filterLanguage", true);
        _HJ("showGuildInvitePopup", true);
        _HJ("showBeginnersOffer", false);
        _HJ("beginnersOfferTimeLeft", 0);
        _HJ("beginnersOfferShowNow", false);
        _HJ("beginnersOfferShowNowTime", 0);
        _HJ("watchForTutorialExit", false);
        _HJ("clickForGold", false);
        _HJ("contextualPotionBuy", true);
        _HJ("inventorySwap", true);
        if (Capabilities.playerType == "Desktop") {
            _HJ("GPURender", false);
        } else {
            _HJ("GPURender", false);
        }
        ;
        _HJ("forceChatQuality", false);
        _HJ("hidePlayerChat", false);
        _HJ("chatStarRequirement", 1);
        _HJ("chatAll", true);
        _HJ("chatWhisper", true);
        _HJ("chatGuild", true);
        _HJ("chatTrade", true);
        _HJ("toggleBarText", false);
        if (!data_.hasOwnProperty("needsSurvey")) {
            data_.needsSurvey = data_.needsTutorial;
            switch (int((Math.random() * 5))) {
                case 0:
                    data_.surveyDate = 0;
                    data_.playTimeLeftTillSurvey = (5 * 60);
                    data_.surveyGroup = "5MinPlaytime";
                    return;
                case 1:
                    data_.surveyDate = 0;
                    data_.playTimeLeftTillSurvey = (10 * 60);
                    data_.surveyGroup = "10MinPlaytime";
                    return;
                case 2:
                    data_.surveyDate = 0;
                    data_.playTimeLeftTillSurvey = (30 * 60);
                    data_.surveyGroup = "30MinPlaytime";
                    return;
                case 3:
                    data_.surveyDate = (new Date().time + ((((1000 * 60) * 60) * 24) * 7));
                    data_.playTimeLeftTillSurvey = (2 * 60);
                    data_.surveyGroup = "1WeekRealtime";
                    return;
                case 4:
                    data_.surveyDate = (new Date().time + ((((1000 * 60) * 60) * 24) * 14));
                    data_.playTimeLeftTillSurvey = (2 * 60);
                    data_.surveyGroup = "2WeekRealtime";
                    return;
            }
            ;
        }
        ;
    }

    private static function _0cJ(_arg1:String, _arg2:uint):void {
        if (!data_.hasOwnProperty(_arg1)) {
            data_[_arg1] = _arg2;
        }
        ;
        _WN[_arg1] = true;
    }

    private static function _HJ(_arg1:String, _arg2):void {
        if (!data_.hasOwnProperty(_arg1)) {
            data_[_arg1] = _arg2;
        }
        ;
    }

    public static function _yD(_arg1:Event):void {
        _rM();
    }


}
}//package com.company.assembleegameclient.parameters

