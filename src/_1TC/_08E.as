// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TC._08E

package _1TC {
import _0oL.Server;

import _1Sm._sy;

import _Qu._en;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects.Projectile;

import flash.utils.ByteArray;

public class _08E {

    public static const FAILURE:int = 0;
    public static const CREATE_SUCCESS:int = 33;
    public static const CREATE:int = 78;
    public static const PLAYERSHOOT:int = 13;
    public static const MOVE:int = 87;
    public static const PLAYERTEXT:int = 39;
    public static const TEXT:int = 67;
    public static const _161:int = 84;
    public static const DAMAGE:int = 51;
    public static const UPDATE:int = 7;
    public static const _8q:int = 45;
    public static const NOTIFICATION:int = 53;
    public static const _01B:int = 80;
    public static const INVSWAP:int = 34;
    public static const USEITEM:int = 48;
    public static const _Nq:int = 28;
    public static const HELLO:int = 35;
    public static const GOTO:int = 3;
    public static const INVDROP:int = 90;
    public static const INVRESULT:int = 58;
    public static const RECONNECT:int = 21;
    public static const PING:int = 46;
    public static const PONG:int = 52;
    public static const MAPINFO:int = 65;
    public static const LOAD:int = 8;
    public static const PIC:int = 60;
    public static const SETCONDITION:int = 91;
    public static const TELEPORT:int = 40;
    public static const USEPORTAL:int = 9;
    public static const DEATH:int = 63;
    public static const BUY:int = 75;
    public static const BUYRESULT:int = 10;
    public static const AOE:int = 69;
    public static const GROUNDDAMAGE:int = 59;
    public static const PLAYERHIT:int = 17;
    public static const ENEMYHIT:int = 42;
    public static const AOEACK:int = 95;
    public static const SHOOTACK:int = 36;
    public static const OTHERHIT:int = 14;
    public static const SQUAREHIT:int = 86;
    public static const GOTOACK:int = 12;
    public static const EDITACCOUNTLIST:int = 93;
    public static const ACCOUNTLIST:int = 20;
    public static const QUESTOBJID:int = 77;
    public static const CHOOSENAME:int = 82;
    public static const NAMERESULT:int = 62;
    public static const CREATEGUILD:int = 44;
    public static const _15f:int = 4;
    public static const GUILDREMOVE:int = 24;
    public static const GUILDINVITE:int = 23;
    public static const ALLYSHOOT:int = 92;
    public static const _1QK:int = 96;
    public static const REQUESTTRADE:int = 41;
    public static const TRADEREQUESTED:int = 94;
    public static const TRADESTART:int = 64;
    public static const CHANGETRADE:int = 1;
    public static const TRADECHANGED:int = 56;
    public static const ACCEPTTRADE:int = 6;
    public static const CANCELTRADE:int = 5;
    public static const TRADEDONE:int = 25;
    public static const TRADEACCEPTED:int = 22;
    public static const CLIENTSTAT:int = 66;
    public static const CHECKCREDITS:int = 19;
    public static const ESCAPE:int = 47;
    public static const _0Wd:int = 88;
    public static const INVITEDTOGUILD:int = 79;
    public static const JOINGUILD:int = 61;
    public static const CHANGEGUILDRANK:int = 89;
    public static const PLAYSOUND:int = 50;
    public static const GLOBAL_NOTIFICATION:int = 30;
    public static const RESKIN:int = 68;
    public static const _1AX:int = 85;
    public static const _1Rz:int = 57;
    public static const _1CD:int = 83;
    public static const _1Ut:int = 97;
    public static const _11d:int = 55;
    public static const _0sS:int = 76;
    public static const _2H:int = 26;
    public static const _11m:int = 81;
    public static const ENTER_ARENA:int = 27;
    public static const _override:int = 31;
    public static const _204:int = 15;
    public static const _0bT:int = 49;
    public static const _0Cv:int = 98;
    public static const _1AE:int = 11;
    public static const _0hS:int = 74;
    public static const _JY:int = 16;
    public static const _sR:int = 38;
    public static const _g9:int = 37;
    public static const _56:int = 18;

    public static var _a9:_08E;

    public var _ob:_sy;
    public var gs_:_0p2;
    public var server_:Server;
    public var gameId_:int;
    public var _1HQ:Boolean;
    public var charId_:int;
    public var keyTime_:int;
    public var key_:ByteArray;
    public var _0K1:String;
    public var isFromArena_:Boolean = false;
    public var lastTickId_:int = -1;
    public var jitterWatcher_:JitterWatcher;
    public var _1K3:_en;
    public var outstandingBuy_:_1no = null;


    public function chooseName(_arg1:String):void {
    }

    public function createGuild(_arg1:String):void {
    }

    public function connect():void {
    }

    public function disconnect():void {
    }

    public function checkCredits():void {
    }

    public function escape():void {
    }

    public function useItem(_arg1:int, _arg2:int, _arg3:int, _arg4:int, _arg5:Number, _arg6:Number, _arg7:int):void {
    }

    public function useItem_new(_arg1:GameObject, _arg2:int):Boolean {
        return (false);
    }

    public function enableJitterWatcher():void {
    }

    public function disableJitterWatcher():void {
    }

    public function editAccountList(_arg1:int, _arg2:Boolean, _arg3:int):void {
    }

    public function guildRemove(_arg1:String):void {
    }

    public function guildInvite(_arg1:String):void {
    }

    public function requestTrade(_arg1:String):void {
    }

    public function changeTrade(_arg1:Vector.<Boolean>):void {
    }

    public function acceptTrade(_arg1:Vector.<Boolean>, _arg2:Vector.<Boolean>):void {
    }

    public function cancelTrade():void {
    }

    public function joinGuild(_arg1:String):void {
    }

    public function changeGuildRank(_arg1:String, _arg2:int):void {
    }

    public function isConnected():Boolean {
        return (false);
    }

    public function teleport(_arg1:int):void {
    }

    public function usePortal(_arg1:int):void {
    }

    public function getNextDamage(_arg1:uint, _arg2:uint):uint {
        return (0);
    }

    public function groundDamage(_arg1:int, _arg2:Number, _arg3:Number):void {
    }

    public function playerShoot(_arg1:int, _arg2:Projectile):void {
    }

    public function playerHit(_arg1:int, _arg2:int):void {
    }

    public function enemyHit(_arg1:int, _arg2:int, _arg3:int, _arg4:Boolean):void {
    }

    public function otherHit(_arg1:int, _arg2:int, _arg3:int, _arg4:int):void {
    }

    public function squareHit(_arg1:int, _arg2:int, _arg3:int):void {
    }

    public function playerText(_arg1:String):void {
    }

    public function invSwap(_arg1:Player, _arg2:GameObject, _arg3:int, _arg4:int, _arg5:GameObject, _arg6:int, _arg7:int):Boolean {
        return (false);
    }

    public function invSwapPotion(_arg1:Player, _arg2:GameObject, _arg3:int, _arg4:int, _arg5:GameObject, _arg6:int, _arg7:int):Boolean {
        return (false);
    }

    public function invDrop(_arg1:GameObject, _arg2:int, _arg3:int):void {
    }

    public function setCondition(_arg1:uint, _arg2:Number):void {
    }

    public function buy(_arg1:int):void {
    }

    public function questFetch():void {
    }

    public function questRedeem(_arg1:int, _arg2:int, _arg3:int):void {
    }


}
}//package _1TC

