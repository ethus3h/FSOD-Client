// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TC._04T

package _1TC {
import _04L._0AG;
import _04L._0xj;

import _07g.TitleView;
import _07g._0Ek;

import _0CT._8w;

import _0MO._0Lo;
import _0MO._1B0;
import _0MO._1nu;

import _0Mr._5R;

import _0N._0JJ;
import _0N._I7;

import _0am._Nc;
import _0am._w7;

import _0cA._0bz;

import _0gF._094;
import _0gF._0La;
import _0gF._Ww;

import _0hU._1J4;
import _0hU._1hN;

import _0oL.Server;

import _11j.StatData;
import _11j._0g1;
import _11j._2Z;
import _11j._CC;

import _14.Damage;
import _14.File;
import _14.Pic;
import _14.Update;
import _14._03P;
import _14._0Gz;
import _14._0JT;
import _14._0Mz;
import _14._0W3;
import _14._0dY;
import _14._0eW;
import _14._0gd;
import _14._0kz;
import _14._0lz;
import _14._0m1;
import _14._0n5;
import _14._0qF;
import _14._0sZ;
import _14._10d;
import _14._159;
import _14._17D;
import _14._18r;
import _14._1B2;
import _14._1Id;
import _14._1VB;
import _14._1XT;
import _14._1Xb;
import _14._1j4;
import _14._1oH;
import _14._1x7;
import _14._29;
import _14._BA;
import _14._H1;
import _14._Kv;
import _14._L2;
import _14._cy;
import _14._do;
import _14._ee;
import _14._ri;
import _14._vy;
import _14._xL;

import _1CB._mz;

import _1E._03e;
import _1E._1ne;

import _1EG.BattleSummaryDialog;
import _1EG.ContinueOrQuitDialog;

import _1Em._i9;

import _1Fr._gT;
import _1Fr._i6;

import _1L3._IG;

import _1PE.Account;

import _1PM._1YQ;

import _1TG._0Yn;

import _1cr._0VP;
import _1cr._Fv;

import _1d9._0fc;
import _1d9._0z0;
import _1d9._1k4;

import _1f4.TradeRequestPanel;
import _1f4._iG;

import _1ik._f0;

import _1oE._0Wf;
import _1oE._cm;

import _207._071;
import _207._0sk;

import _20I._0Hi;
import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import _6u._TG;

import _70._1Ax;
import _70._1iP;

import _8v._1W3;

import _GI.FlowEffect;
import _GI.StreamEffect;
import _GI.TeleportEffect;
import _GI.ThrowEffect;
import _GI._08I;
import _GI._0OC;
import _GI._0Qd;
import _GI._0n3;
import _GI._14d;
import _GI._19m;
import _GI._19t;
import _GI._1S8;
import _GI._1S9;
import _GI._1sJ;
import _GI._69;
import _GI._R9;
import _GI._Uu;
import _GI._iQ;

import _Gf._GC;

import _JD._0FP;

import _Qu._cx;
import _Qu._en;

import _Vb.Dialog;
import _Vb.NotEnoughFameDialog;

import __Nj._0ay;
import __Nj._M4;

import _fL.*;

import _gl._0An;
import _gl._1bu;

import _md._1ty;

import _vp._00R;
import _vp._06y;
import _vp._1AF;
import _vp._1Wm;
import _vp._1a0;
import _vp._VR;

import _w9._1fI;
import _w9._K0;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.map._0d7;
import com.company.assembleegameclient.map._1Px;
import com.company.assembleegameclient.objects.Container;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Merchant;
import com.company.assembleegameclient.objects.NameChanger;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.ObjectProperties;
import com.company.assembleegameclient.objects.Pet;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects.Portal;
import com.company.assembleegameclient.objects.Projectile;
import com.company.assembleegameclient.objects.SellableObject;
import com.company.assembleegameclient.objects._0HW;
import com.company.assembleegameclient.objects._NZ;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui._1nw;
import com.company.assembleegameclient.util.ConditionEffect;
import com.company.assembleegameclient.util.Currency;
import com.company.assembleegameclient.util._0CH;
import com.company.util.Random;
import com.company.util._0Ax;
import com.hurlant.crypto.Crypto;
import com.hurlant.crypto.rsa.RSAKey;
import com.hurlant.crypto.symmetric.ICipher;
import com.hurlant.util.Base64;
import com.hurlant.util.der.PEM;

import flash.display.BitmapData;
import flash.events.Event;
import flash.events.TimerEvent;
import flash.geom.Point;
import flash.net.FileReference;
import flash.utils.ByteArray;
import flash.utils.Timer;
import flash.utils.getTimer;

public class _04T extends _08E {

    private static const _jR:int = 1000;

    private static function _0NE(_arg1:int):Boolean {
        return ((((((((((((((((_arg1 == 2591)) || ((_arg1 == 2592)))) || ((_arg1 == 2593)))) || ((_arg1 == 2612)))) || ((_arg1 == 2613)))) || ((_arg1 == 2636)))) || ((_arg1 == 2793)))) || ((_arg1 == 2794))));
    }

    public function _04T(_arg1:_0p2, _arg2:Server, _arg3:int, _arg4:Boolean, _arg5:int, _arg6:int, _arg7:ByteArray, _arg8:String, _arg9:Boolean) {
        this._sk = _8w._1Sz();
        this._0yC = this._sk.getInstance(_1k4);
        this._1u7 = this._sk.getInstance(_0z0);
        this.addSpeechBalloon = this._sk.getInstance(_0fc);
        this._0eF = this._sk.getInstance(_w7);
        this._1Cj = this._sk.getInstance(_Nc);
        this._NX = this._sk.getInstance(_1AF);
        this._0YG = _8w._1Sz().getInstance(_0Lo);
        this._0PJ = this._sk.getInstance(_06y);
        this._e2 = this._sk.getInstance(_IG);
        this.closeDialogs = this._sk.getInstance(_0ay);
        _ob = this._sk.getInstance(_0Wf);
        this._nU = this._sk.getInstance(_M4);
        this._1yf = this._sk.getInstance(_1J4);
        this._1CM = this._sk.getInstance(_1hN);
        this._Vv = this._sk.getInstance(_0sk);
        this._1Mf = this._sk.getInstance(_071);
        this._1TT = this._sk.getInstance(_1YQ);
        this._3U = this._sk.getInstance(_1iP);
        this._vM = this._sk.getInstance(_1Ax);
        this._6t = this._sk.getInstance(_GC);
        this._PI = this._sk.getInstance(_1Z);
        _1K3 = this._sk.getInstance(_en);
        this._1Zi = this._sk.getInstance(_0VP);
        this.model = this._sk.getInstance(_03e);
        this._0Hk = this._sk.getInstance(_f0);
        gs_ = _arg1;
        server_ = _arg2;
        gameId_ = _arg3;
        _1HQ = _arg4;
        charId_ = _arg5;
        keyTime_ = _arg6;
        key_ = _arg7;
        _0K1 = _arg8;
        isFromArena_ = _arg9;
        this._0iu();
        _a9 = this;
    }
    private var _08:_2K;
    private var _1Zi:_0VP;
    private var _Q9:int = -1;
    private var player:Player;
    private var _0HL:Boolean = true;
    private var _1AJ:Random = null;
    private var _0yC:_1k4;
    private var death:_1Id;
    private var _0wz:Timer;
    private var _p1:int = 2;
    private var _1u7:_0z0;
    private var addSpeechBalloon:_0fc;
    private var _0eF:_w7;
    private var _1Cj:_Nc;
    private var _1TT:_1YQ;
    private var _3U:_1iP;
    private var _vM:_1Ax;
    private var _6t:_GC;
    private var _0YG:_0Lo;
    private var _NX:_1AF;
    private var closeDialogs:_0ay;
    private var _nU:_M4;
    private var _1yf:_1J4;
    private var _1CM:_1hN;
    private var _Vv:_0sk;
    private var _1Mf:_071;
    private var _0Hk:_f0;
    private var _PI:_1Z;
    private var _sk:_0bz;
    private var model:_03e;
    private var _0PJ:_06y;
    private var _e2:_IG;

    override public function disconnect():void {
        this._sn();
        this._1PT();
        _1K3.disconnect();
    }

    override public function connect():void {
        this._19J();
        this._1cI();
        var _local1:_1ty = new _1ty();
        _local1.name = Parameters._11L;
        _local1.text = _TG._17K;
        _local1.tokens = {serverName: server_.name};
        this._1u7.dispatch(_local1);
        _1K3.connect(server_.address, server_.port);
    }

    override public function getNextDamage(_arg1:uint, _arg2:uint):uint {
        return (this._1AJ._0cm(_arg1, _arg2));
    }

    override public function enableJitterWatcher():void {
        if (jitterWatcher_ == null) {
            jitterWatcher_ = new JitterWatcher();
        }
    }

    override public function disableJitterWatcher():void {
        if (jitterWatcher_ != null) {
            jitterWatcher_ = null;
        }
    }

    override public function playerShoot(_arg1:int, _arg2:Projectile):void {
        var _local3:_0f0 = (this._1Zi._1SN(PLAYERSHOOT) as _0f0);
        _local3.time_ = _arg1;
        _local3.bulletId_ = _arg2.bulletId_;
        _local3.containerType_ = _arg2.containerType_;
        _local3.startingPos_.x_ = _arg2.x_;
        _local3.startingPos_.y_ = _arg2.y_;
        _local3.angle_ = _arg2.angle_;
        _1K3.sendMessage(_local3);
    }

    override public function playerHit(_arg1:int, _arg2:int):void {
        var _local3:_0lL = (this._1Zi._1SN(PLAYERHIT) as _0lL);
        _local3.bulletId_ = _arg1;
        _local3.objectId_ = _arg2;
        _1K3.sendMessage(_local3);
    }

    override public function enemyHit(_arg1:int, _arg2:int, _arg3:int, _arg4:Boolean):void {
        var _local5:_0Si = (this._1Zi._1SN(ENEMYHIT) as _0Si);
        _local5.time_ = _arg1;
        _local5.bulletId_ = _arg2;
        _local5.targetId_ = _arg3;
        _local5.kill_ = _arg4;
        _1K3.sendMessage(_local5);
    }

    override public function otherHit(_arg1:int, _arg2:int, _arg3:int, _arg4:int):void {
        var _local5:_1gd = (this._1Zi._1SN(OTHERHIT) as _1gd);
        _local5.time_ = _arg1;
        _local5.bulletId_ = _arg2;
        _local5.objectId_ = _arg3;
        _local5.targetId_ = _arg4;
        _1K3.sendMessage(_local5);
    }

    override public function squareHit(_arg1:int, _arg2:int, _arg3:int):void {
        var _local4:_0lk = (this._1Zi._1SN(SQUAREHIT) as _0lk);
        _local4.time_ = _arg1;
        _local4.bulletId_ = _arg2;
        _local4.objectId_ = _arg3;
        _1K3.sendMessage(_local4);
    }

    override public function groundDamage(_arg1:int, _arg2:Number, _arg3:Number):void {
        var _local4:_tX = (this._1Zi._1SN(GROUNDDAMAGE) as _tX);
        _local4.time_ = _arg1;
        _local4.position_.x_ = _arg2;
        _local4.position_.y_ = _arg3;
        _1K3.sendMessage(_local4);
    }

    override public function playerText(_arg1:String):void {
        var _local2:_0RQ = (this._1Zi._1SN(PLAYERTEXT) as _0RQ);
        _local2.text_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function invSwap(_arg1:Player, _arg2:GameObject, _arg3:int, _arg4:int, _arg5:GameObject, _arg6:int, _arg7:int):Boolean {
        if (!gs_) {
            return (false);
        }

        var _local8:_1sz = (this._1Zi._1SN(INVSWAP) as _1sz);
        _local8.time_ = gs_.lastUpdate_;
        _local8.position_.x_ = _arg1.x_;
        _local8.position_.y_ = _arg1.y_;
        _local8.slotObject1_.objectId_ = _arg2.objectId_;
        _local8.slotObject1_._18N = _arg3;
        _local8.slotObject1_.objectType_ = _arg4;
        _local8.slotObject2_.objectId_ = _arg5.objectId_;
        _local8.slotObject2_._18N = _arg6;
        _local8.slotObject2_.objectType_ = _arg7;
        _1K3.sendMessage(_local8);
        var _local9:int = _arg2._0Z[_arg3];
        _arg2._0Z[_arg3] = _arg5._0Z[_arg6];
        _arg5._0Z[_arg6] = _local9;
        _0Yn.play("inventory_move_item");
        return (true);
    }

    override public function invSwapPotion(_arg1:Player, _arg2:GameObject, _arg3:int, _arg4:int, _arg5:GameObject, _arg6:int, _arg7:int):Boolean {
        if (!gs_) {
            return (false);
        }

        var _local8:_1sz = (this._1Zi._1SN(INVSWAP) as _1sz);
        _local8.time_ = gs_.lastUpdate_;
        _local8.position_.x_ = _arg1.x_;
        _local8.position_.y_ = _arg1.y_;
        _local8.slotObject1_.objectId_ = _arg2.objectId_;
        _local8.slotObject1_._18N = _arg3;
        _local8.slotObject1_.objectType_ = _arg4;
        _local8.slotObject2_.objectId_ = _arg5.objectId_;
        _local8.slotObject2_._18N = _arg6;
        _local8.slotObject2_.objectType_ = _arg7;
        _arg2._0Z[_arg3] = _0An._5v;
        if (_arg4 == _1ne._0ip) {
            _arg1._0E6++;
        } else {
            if (_arg4 == _1ne._0Kh) {
                _arg1._0or++;
            }
            ;
        }
        ;
        _1K3.sendMessage(_local8);
        _0Yn.play("inventory_move_item");
        return (true);
    }

    override public function invDrop(_arg1:GameObject, _arg2:int, _arg3:int):void {
        var _local4:_0p0 = (this._1Zi._1SN(INVDROP) as _0p0);
        _local4.slotObject_.objectId_ = _arg1.objectId_;
        _local4.slotObject_._18N = _arg2;
        _local4.slotObject_.objectType_ = _arg3;
        _1K3.sendMessage(_local4);
        if (((!((_arg2 == _1ne._08W))) && (!((_arg2 == _1ne._os))))) {
            _arg1._0Z[_arg2] = _0An._5v;
        }
        ;
    }

    override public function useItem(_arg1:int, _arg2:int, _arg3:int, _arg4:int, _arg5:Number, _arg6:Number, _arg7:int):void {
        var _local8:_1j8 = (this._1Zi._1SN(USEITEM) as _1j8);
        _local8.time_ = _arg1;
        _local8.slotObject_.objectId_ = _arg2;
        _local8.slotObject_._18N = _arg3;
        _local8.slotObject_.objectType_ = _arg4;
        _local8.itemUsePos_.x_ = _arg5;
        _local8.itemUsePos_.y_ = _arg6;
        _local8.useType_ = _arg7;
        _1K3.sendMessage(_local8);
    }

    override public function useItem_new(_arg1:GameObject, _arg2:int):Boolean {
        var _local3:int = _arg1._0Z[_arg2];
        var _local4:XML = ObjectLibrary._18H[_local3];
        if (((((_local4) && (!(_arg1.isPaused())))) && (((_local4.hasOwnProperty("Consumable")) || (_local4.hasOwnProperty("InvUse")))))) {
            if (!this._0Fj(_local3, _arg1)) {
                this._1u7.dispatch(_1ty.make("", (_local4.attribute("id") + " not consumed. Already at Max.")));
                return (false);
            }
            ;
            if (_0NE(_local3)) {
                this._1u7.dispatch(_1ty.make("", (_local4.attribute("id") + " Consumed ++")));
            }
            ;
            this._1Zp(_arg1, _arg2, _local3, _local4);
            _0Yn.play("use_potion");
            return (true);
        }
        ;
        _0Yn.play("error");
        return (false);
    }

    override public function setCondition(_arg1:uint, _arg2:Number):void {
        var _local3:_03w = (this._1Zi._1SN(SETCONDITION) as _03w);
        _local3.conditionEffect_ = _arg1;
        _local3.conditionDuration_ = _arg2;
        _1K3.sendMessage(_local3);
    }

    override public function teleport(_arg1:int):void {
        var _local2:Teleport = (this._1Zi._1SN(TELEPORT) as Teleport);
        _local2.objectId_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function usePortal(_arg1:int):void {
        var _local2:_38 = (this._1Zi._1SN(USEPORTAL) as _38);
        _local2.objectId_ = _arg1;
        _1K3.sendMessage(_local2);
        this._zE();
    }

    override public function buy(_arg1:int):void {
        if (outstandingBuy_ != null) {
            return;
        }
        ;
        var _local2:SellableObject = gs_.map.goDict_[_arg1];
        if (_local2 == null) {
            return;
        }
        ;
        var _local3:Boolean;
        if (_local2.currency_ == Currency._1mE) {
            _local3 = ((((gs_.model.getConverted()) || ((this.player.credits_ > 100)))) || ((_local2.price_ > this.player.credits_)));
        }
        ;
        outstandingBuy_ = new _1no(_local2.soldObjectInternalName(), _local2.price_, _local2.currency_, _local3);
        var _local4:Buy = (this._1Zi._1SN(BUY) as Buy);
        _local4.objectId_ = _arg1;
        _1K3.sendMessage(_local4);
    }

    override public function editAccountList(_arg1:int, _arg2:Boolean, _arg3:int):void {
        var _local4:_1n0 = (this._1Zi._1SN(EDITACCOUNTLIST) as _1n0);
        _local4.accountListId_ = _arg1;
        _local4.add_ = _arg2;
        _local4.objectId_ = _arg3;
        _1K3.sendMessage(_local4);
    }

    override public function chooseName(_arg1:String):void {
        var _local2:_1kj = (this._1Zi._1SN(CHOOSENAME) as _1kj);
        _local2.name_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function createGuild(_arg1:String):void {
        var _local2:_MO = (this._1Zi._1SN(CREATEGUILD) as _MO);
        _local2.name_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function guildRemove(_arg1:String):void {
        var _local2:_1AI = (this._1Zi._1SN(GUILDREMOVE) as _1AI);
        _local2.name_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function guildInvite(_arg1:String):void {
        var _local2:_14x = (this._1Zi._1SN(GUILDINVITE) as _14x);
        _local2.name_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function requestTrade(_arg1:String):void {
        var _local2:_0Xw = (this._1Zi._1SN(REQUESTTRADE) as _0Xw);
        _local2.name_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function changeTrade(_arg1:Vector.<Boolean>):void {
        var _local2:_0tI = (this._1Zi._1SN(CHANGETRADE) as _0tI);
        _local2.offer_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function acceptTrade(_arg1:Vector.<Boolean>, _arg2:Vector.<Boolean>):void {
        var _local3:_10G = (this._1Zi._1SN(ACCEPTTRADE) as _10G);
        _local3.myOffer_ = _arg1;
        _local3.yourOffer_ = _arg2;
        _1K3.sendMessage(_local3);
    }

    override public function cancelTrade():void {
        _1K3.sendMessage(this._1Zi._1SN(CANCELTRADE));
    }

    override public function checkCredits():void {
        _1K3.sendMessage(this._1Zi._1SN(CHECKCREDITS));
    }

    override public function escape():void {
        if (this._Q9 == -1) {
            return;
        }
        ;
        if (((gs_.map) && ((gs_.map.name_ == "Arena")))) {
            _1K3.sendMessage(this._1Zi._1SN(_0bT));
        } else {
            _1K3.sendMessage(this._1Zi._1SN(ESCAPE));
            this._zE();
        }
        ;
    }

    override public function joinGuild(_arg1:String):void {
        var _local2:_hj = (this._1Zi._1SN(JOINGUILD) as _hj);
        _local2.guildName_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    override public function changeGuildRank(_arg1:String, _arg2:int):void {
        var _local3:_1UC = (this._1Zi._1SN(CHANGEGUILDRANK) as _1UC);
        _local3.name_ = _arg1;
        _local3.guildRank_ = _arg2;
        _1K3.sendMessage(_local3);
    }

    override public function questFetch():void {
        _1K3.sendMessage(this._1Zi._1SN(_JY));
    }

    override public function questRedeem(_arg1:int, _arg2:int, _arg3:int):void {
        var _local4:_0JJ = (this._1Zi._1SN(_sR) as _0JJ);
        _local4._0hR.objectId_ = _arg1;
        _local4._0hR._18N = _arg2;
        _local4._0hR.objectType_ = _arg3;
        _1K3.sendMessage(_local4);
    }

    override public function isConnected():Boolean {
        return (_1K3.isConnected());
    }

    public function _19J():void {
        _1K3.connected.add(this._1HU);
        _1K3.closed.add(this._0zc);
        _1K3.error.add(this._31);
    }

    public function _1cI():void {
        var _local1:_Fv = this._sk.getInstance(_Fv);
        _local1.map(CREATE)._0VH(Create);
        _local1.map(PLAYERSHOOT)._0VH(_0f0);
        _local1.map(MOVE)._0VH(_0Fv);
        _local1.map(PLAYERTEXT)._0VH(_0RQ);
        _local1.map(_8q)._0VH(_cx);
        _local1.map(INVSWAP)._0VH(_1sz);
        _local1.map(USEITEM)._0VH(_1j8);
        _local1.map(HELLO)._0VH(_PR);
        _local1.map(INVDROP)._0VH(_0p0);
        _local1.map(PONG)._0VH(_4I);
        _local1.map(LOAD)._0VH(_1X5);
        _local1.map(SETCONDITION)._0VH(_03w);
        _local1.map(TELEPORT)._0VH(Teleport);
        _local1.map(USEPORTAL)._0VH(_38);
        _local1.map(BUY)._0VH(Buy);
        _local1.map(PLAYERHIT)._0VH(_0lL);
        _local1.map(ENEMYHIT)._0VH(_0Si);
        _local1.map(AOEACK)._0VH(__0Ti);
        _local1.map(SHOOTACK)._0VH(__0FV);
        _local1.map(OTHERHIT)._0VH(_1gd);
        _local1.map(SQUAREHIT)._0VH(_0lk);
        _local1.map(GOTOACK)._0VH(_U7);
        _local1.map(GROUNDDAMAGE)._0VH(_tX);
        _local1.map(CHOOSENAME)._0VH(_1kj);
        _local1.map(CREATEGUILD)._0VH(_MO);
        _local1.map(GUILDREMOVE)._0VH(_1AI);
        _local1.map(GUILDINVITE)._0VH(_14x);
        _local1.map(REQUESTTRADE)._0VH(_0Xw);
        _local1.map(CHANGETRADE)._0VH(_0tI);
        _local1.map(ACCEPTTRADE)._0VH(_10G);
        _local1.map(CANCELTRADE)._0VH(_BB);
        _local1.map(CHECKCREDITS)._0VH(_1Md);
        _local1.map(ESCAPE)._0VH(_1Yn);
        _local1.map(JOINGUILD)._0VH(_hj);
        _local1.map(CHANGEGUILDRANK)._0VH(_1UC);
        _local1.map(EDITACCOUNTLIST)._0VH(_1n0);
        _local1.map(_1Rz)._0VH(_7V);
        _local1.map(_1AX)._0VH(_01A);
        _local1.map(ENTER_ARENA)._0VH(_I7);
        _local1.map(_0bT)._0VH(_1b1);
        _local1.map(_JY)._0VH(_1b1);
        _local1.map(_sR)._0VH(_0JJ);
        _local1.map(FAILURE)._0VH(_1VB)._1fc(this._0Id);
        _local1.map(CREATE_SUCCESS)._0VH(_Kv)._1fc(this._1_S);
        _local1.map(_161)._0VH(_xL)._1fc(this._14O);
        _local1.map(DAMAGE)._0VH(Damage)._1fc(this._1w);
        _local1.map(UPDATE)._0VH(Update)._1fc(this._0IJ);
        _local1.map(NOTIFICATION)._0VH(_159)._1fc(this._j8);
        _local1.map(GLOBAL_NOTIFICATION)._0VH(_ri)._1fc(this._0Ui);
        _local1.map(_01B)._0VH(_1j4)._1fc(this._0OT);
        _local1.map(_Nq)._0VH(_10d)._1fc(this._1xi);
        _local1.map(GOTO)._0VH(_0Gz)._1fc(this._1r5);
        _local1.map(INVRESULT)._0VH(_1Xb)._1fc(this._0zU);
        _local1.map(RECONNECT)._0VH(_0W3)._1fc(this._1oQ);
        _local1.map(PING)._0VH(_1B2)._1fc(this._HV);
        _local1.map(MAPINFO)._0VH(_29)._1fc(this._1p7);
        _local1.map(PIC)._0VH(Pic)._1fc(this._0pW);
        _local1.map(DEATH)._0VH(_1Id)._1fc(this._0Xg);
        _local1.map(BUYRESULT)._0VH(_03P)._1fc(this._17i);
        _local1.map(AOE)._0VH(_vy)._1fc(this._5D);
        _local1.map(ACCOUNTLIST)._0VH(_L2)._1fc(this._e5);
        _local1.map(QUESTOBJID)._0VH(_0qF)._1fc(this._eg);
        _local1.map(NAMERESULT)._0VH(_0kz)._1fc(this._1Tr);
        _local1.map(_15f)._0VH(_BA)._1fc(this._1n6);
        _local1.map(ALLYSHOOT)._0VH(_17D)._1fc(this._09i);
        _local1.map(_1QK)._0VH(_0dY)._1fc(this._Mi);
        _local1.map(TRADEREQUESTED)._0VH(_0m1)._1fc(this._0tT);
        _local1.map(TRADESTART)._0VH(_cy)._1fc(this._1Vh);
        _local1.map(TRADECHANGED)._0VH(_0gd)._1fc(this._1G8);
        _local1.map(TRADEDONE)._0VH(_0sZ)._1fc(this._0tn);
        _local1.map(TRADEACCEPTED)._0VH(_0eW)._1fc(this._1GR);
        _local1.map(CLIENTSTAT)._0VH(_1x7)._1fc(this._1y0);
        _local1.map(_0Wd)._0VH(File)._1fc(this._4x);
        _local1.map(INVITEDTOGUILD)._0VH(_0JT)._1fc(this._1b3);
        _local1.map(PLAYSOUND)._0VH(_1XT)._1fc(this._1LP);
        _local1.map(_1CD)._0VH(_hE)._1fc(this._0wo);
        _local1.map(_1Ut)._0VH(_ee)._1fc(this._OB);
        _local1.map(_11d)._0VH(_0fy)._1fc(this._0p6);
        _local1.map(_0sS)._0VH(_0lz)._1fc(this._1AO);
        _local1.map(_2H)._0VH(_1fI)._1fc(this._0zz);
        _local1.map(_11m)._0VH(_K0)._1fc(this._2d);
        _local1.map(_override)._0VH(_0AG)._1fc(this._1S);
        _local1.map(_204)._0VH(_0xj)._1fc(this._fD);
        _local1.map(_0Cv)._0VH(_0Mz)._1fc(this._oW);
        _local1.map(_1AE)._0VH(_do)._1fc(this._iY);
        _local1.map(_0hS)._0VH(_H1)._1fc(this._P0);
        _local1.map(_g9)._0VH(_18r)._1fc(this._00l);
        _local1.map(_56)._0VH(_1oH)._1fc(this._0an);
    }

    public function _gG(_arg1:int, _arg2:Number, _arg3:Number):void {
        var _local4:__0Ti = (this._1Zi._1SN(AOEACK) as __0Ti);
        _local4.time_ = _arg1;
        _local4.position_.x_ = _arg2;
        _local4.position_.y_ = _arg3;
        _1K3.sendMessage(_local4);
    }

    public function _sN(_arg1:int):void {
        var _local2:__0FV = (this._1Zi._1SN(SHOOTACK) as __0FV);
        _local2.time_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    public function move(_arg1:int, _arg2:Player):void {
        var _local7:int;
        var _local8:int;
        var _local3:Number = -1;
        var _local4:Number = -1;
        if (((_arg2) && (!(_arg2.isPaused())))) {
            _local3 = _arg2.x_;
            _local4 = _arg2.y_;
        }
        ;
        var _local5:_0Fv = (this._1Zi._1SN(MOVE) as _0Fv);
        _local5.tickId_ = _arg1;
        _local5.time_ = gs_.lastUpdate_;
        _local5.newPosition_.x_ = _local3;
        _local5.newPosition_.y_ = _local4;
        var _local6:int = gs_.moveRecords_.lastClearTime_;
        _local5.records_.length = 0;
        if ((((_local6 >= 0)) && (((_local5.time_ - _local6) > 125)))) {
            _local7 = Math.min(10, gs_.moveRecords_.records_.length);
            _local8 = 0;
            while (_local8 < _local7) {
                if (gs_.moveRecords_.records_[_local8].time_ >= (_local5.time_ - 25)) {
                    break;
                }
                ;
                _local5.records_.push(gs_.moveRecords_.records_[_local8]);
                _local8++;
            }
            ;
        }
        ;
        gs_.moveRecords_.clear(_local5.time_);
        _1K3.sendMessage(_local5);
        ((_arg2) && (_arg2._1Lj()));
    }

    public function _0oB(_arg1:int):void {
        var _local2:_U7 = (this._1Zi._1SN(GOTOACK) as _U7);
        _local2.time_ = _arg1;
        _1K3.sendMessage(_local2);
    }

    private function _0iu():void {
        this._sk.map(_0p2)._nR(gs_);
        this._08 = this._sk.getInstance(_2K);
        this._sk._g(_0p2);
    }

    private function _sn():void {
        _1K3.connected.remove(this._1HU);
        _1K3.closed.remove(this._0zc);
        _1K3.error.remove(this._31);
    }

    private function _2d(_arg1:_K0):void {
        var _local2:_00R = this._sk.getInstance(_00R);
        _local2.dispatch(_arg1.petName, _arg1._1SP);
    }

    private function _0zz(_arg1:_1fI):void {
        var _local2:_1a0 = this._sk.getInstance(_1a0);
        _local2.dispatch(_arg1._is);
    }

    private function _OB(_arg1:_ee):void {
        var _local2:_VR = this._sk.getInstance(_VR);
        _local2.dispatch(_arg1.type);
    }

    private function _0p6(_arg1:_0fy):void {
        var _local2:_1Wm = _8w._1Sz().getInstance(_1Wm);
        _local2.dispatch(_arg1.type);
    }

    private function _1AO(_arg1:_0lz):void {
        var _local2:_0n5 = this._sk.getInstance(_0n5);
        _local2._0CY(_arg1);
    }

    private function _0wo(_arg1:_hE):void {
        this._0PJ.dispatch(_arg1._15w);
        var _local2:String = (((_arg1._15w > 0)) ? this._e2._1a8(_arg1._15w).getName() : "");
        var _local3:String = (((_arg1._15w < 0)) ? _TG._1PB : _TG._0PH);
        this._1u7.dispatch(_1ty.make(Parameters._1o9, _local3, -1, -1, "", false, {petName: _local2}));
    }

    private function _1PT():void {
        var _local1:_Fv = this._sk.getInstance(_Fv);
        _local1._g(CREATE);
        _local1._g(PLAYERSHOOT);
        _local1._g(MOVE);
        _local1._g(PLAYERTEXT);
        _local1._g(_8q);
        _local1._g(INVSWAP);
        _local1._g(USEITEM);
        _local1._g(HELLO);
        _local1._g(INVDROP);
        _local1._g(PONG);
        _local1._g(LOAD);
        _local1._g(SETCONDITION);
        _local1._g(TELEPORT);
        _local1._g(USEPORTAL);
        _local1._g(BUY);
        _local1._g(PLAYERHIT);
        _local1._g(ENEMYHIT);
        _local1._g(AOEACK);
        _local1._g(SHOOTACK);
        _local1._g(OTHERHIT);
        _local1._g(SQUAREHIT);
        _local1._g(GOTOACK);
        _local1._g(GROUNDDAMAGE);
        _local1._g(CHOOSENAME);
        _local1._g(CREATEGUILD);
        _local1._g(GUILDREMOVE);
        _local1._g(GUILDINVITE);
        _local1._g(REQUESTTRADE);
        _local1._g(CHANGETRADE);
        _local1._g(ACCEPTTRADE);
        _local1._g(CANCELTRADE);
        _local1._g(CHECKCREDITS);
        _local1._g(ESCAPE);
        _local1._g(JOINGUILD);
        _local1._g(CHANGEGUILDRANK);
        _local1._g(EDITACCOUNTLIST);
        _local1._g(FAILURE);
        _local1._g(CREATE_SUCCESS);
        _local1._g(_161);
        _local1._g(DAMAGE);
        _local1._g(UPDATE);
        _local1._g(NOTIFICATION);
        _local1._g(GLOBAL_NOTIFICATION);
        _local1._g(_01B);
        _local1._g(_Nq);
        _local1._g(GOTO);
        _local1._g(INVRESULT);
        _local1._g(RECONNECT);
        _local1._g(PING);
        _local1._g(MAPINFO);
        _local1._g(PIC);
        _local1._g(DEATH);
        _local1._g(BUYRESULT);
        _local1._g(AOE);
        _local1._g(ACCOUNTLIST);
        _local1._g(QUESTOBJID);
        _local1._g(NAMERESULT);
        _local1._g(_15f);
        _local1._g(ALLYSHOOT);
        _local1._g(_1QK);
        _local1._g(TRADEREQUESTED);
        _local1._g(TRADESTART);
        _local1._g(TRADECHANGED);
        _local1._g(TRADEDONE);
        _local1._g(TRADEACCEPTED);
        _local1._g(CLIENTSTAT);
        _local1._g(_0Wd);
        _local1._g(INVITEDTOGUILD);
        _local1._g(PLAYSOUND);
    }

    private function _uC():void {
        var _local1:ICipher;
        var _local2:ICipher;
        if (Parameters._0ok) {
            _local1 = Crypto.getCipher("rc4", _0Ax._1Sq("311f80691451c71d09a13a2a6e"));
            _local2 = Crypto.getCipher("rc4", _0Ax._1Sq("72c5583cafb6818995cdd74b80"));
            _1K3.setOutgoingCipher(_local1);
            _1K3.setIncomingCipher(_local2);
        }
        ;
    }

    private function create():void {
        var _local1:_E0 = this._PI._0ZN();
        var _local2:Create = (this._1Zi._1SN(CREATE) as Create);
        _local2.classType = _local1.id;
        _local2.skinType = _local1._0fJ._20R().id;
        _1K3.sendMessage(_local2);
    }

    private function load():void {
        var _local1:_1X5 = (this._1Zi._1SN(LOAD) as _1X5);
        _local1.charId_ = charId_;
        _local1.isFromArena_ = isFromArena_;
        _1K3.sendMessage(_local1);
        if (isFromArena_) {
            this._nU.dispatch(new BattleSummaryDialog());
        }
        ;
    }

    private function _0Fj(_arg1:int, _arg2:GameObject):Boolean {
        var p:Player;
        var itemId:int = _arg1;
        var itemOwner:GameObject = _arg2;
        try {
            if ((itemOwner is Player)) {
                p = (itemOwner as Player);
            } else {
                p = this.player;
            }
            ;
            if ((((((((((((((((((itemId == 2591)) && ((p._0i3 == (p._0jT - p._0P4))))) || ((((itemId == 2592)) && ((p._12o == (p._05c - p._gU))))))) || ((((itemId == 2593)) && ((p._M == (p.speed_ - p._H8))))))) || ((((itemId == 2612)) && ((p._1bK == (p._oP - p._0HP))))))) || ((((itemId == 2613)) && ((p._zI == (p._1EO - p._1jk))))))) || ((((itemId == 2636)) && ((p._0uQ == (p._1IQ - p._0oQ))))))) || ((((itemId == 2793)) && ((p._0Pv == (p._022 - p._0fM))))))) || ((((itemId == 2794)) && ((p._1hc == (p._0sE - p._08J))))))) {
                return (false);
            }
            ;
        } catch (err:Error) {
            _1TT.error(("PROBLEM IN STAT INC " + err.getStackTrace()));
        }
        ;
        return (true);
    }

    private function _1Zp(_arg1:GameObject, _arg2:int, _arg3:int, _arg4:XML):void {
        var _local5:_1j8 = (this._1Zi._1SN(USEITEM) as _1j8);
        _local5.time_ = getTimer();
        _local5.slotObject_.objectId_ = _arg1.objectId_;
        _local5.slotObject_._18N = _arg2;
        _local5.slotObject_.objectType_ = _arg3;
        _local5.itemUsePos_.x_ = 0;
        _local5.itemUsePos_.y_ = 0;
        _1K3.sendMessage(_local5);
        if (_arg4.hasOwnProperty("Consumable")) {
            _arg1._0Z[_arg2] = -1;
        }
        ;
    }

    private function _zE():void {
        if (((gs_.map) && ((gs_.map.name_ == "Davy Jones' Locker")))) {
            _1nu._a9.dispatch();
        }
        ;
    }

    private function _03(_arg1:String):String {
        var _local2:RSAKey = PEM.readRSAPublicKey(Parameters._1BU);
        var _local3:ByteArray = new ByteArray();
        _local3.writeUTFBytes(_arg1);
        var _local4:ByteArray = new ByteArray();
        _local2.encrypt(_local3, _local4, _local3.length);
        return (Base64.encodeByteArray(_local4));
    }

    private function _1HU():void {
        var _local1:Account = _8w._1Sz().getInstance(Account);
        this._1u7.dispatch(_1ty.make(Parameters._11L, _TG._0nE));
        this._uC();
        var _local2:_PR = (this._1Zi._1SN(HELLO) as _PR);
        _local2.buildVersion_ = ((Parameters._1Q2 + ".") + Parameters._0te);
        _local2.gameId_ = gameId_;
        _local2.guid_ = this._03(_local1.getUserId());
        _local2.password_ = this._03(_local1._f5());
        _local2.secret_ = this._03(_local1._1BG());
        _local2.keyTime_ = keyTime_;
        _local2.key_.length = 0;
        ((!((key_ == null))) && (_local2.key_.writeBytes(key_)));
        _local2._0K1 = (((_0K1 == null)) ? "" : _0K1);
        _local2._19e = _local1._UV();
        _local2._0Gt = _local1._0iC();
        _local2._Jv = _local1._0uI();
        _local2._0X8 = _local1._0X8();
        _local2._fE = _local1._1uQ();
        _1K3.sendMessage(_local2);
    }

    private function _1_S(_arg1:_Kv):void {
        this._Q9 = _arg1.objectId_;
        charId_ = _arg1.charId_;
        gs_.initialize();
        _1HQ = false;
    }

    private function _1w(_arg1:Damage):void {
        var _local5:int;
        var _local2:_1Px = gs_.map;
        var _local3:Projectile;
        if ((((_arg1.objectId_ >= 0)) && ((_arg1.bulletId_ > 0)))) {
            _local5 = Projectile._1j(_arg1.objectId_, _arg1.bulletId_);
            _local3 = (_local2._1NM[_local5] as Projectile);
            if (((!((_local3 == null))) && (!(_local3._18U._1AG)))) {
                _local2.removeObj(_local5);
            }
            ;
        }
        ;
        var _local4:GameObject = _local2.goDict_[_arg1.targetId_];
        if (_local4 != null) {
            _local4.damage(-1, _arg1.damageAmount_, _arg1.effects_, _arg1.kill_, _local3);
        }
        ;
    }

    private function _14O(_arg1:_xL):void {
        var _local2 = (_arg1.ownerId_ == this._Q9);
        var _local3:GameObject = gs_.map.goDict_[_arg1.ownerId_];
        if ((((_local3 == null)) || (_local3._0HD))) {
            if (_local2) {
                this._sN(-1);
            }
            ;
            return;
        }
        ;
        var _local4:Projectile = (_0CH._mN(Projectile) as Projectile);
        var _local5:Player = (_local3 as Player);
        if (_local5 != null) {
            _local4.reset(_arg1.containerType_, 0, _arg1.ownerId_, _arg1.bulletId_, _arg1.angle_, gs_.lastUpdate_, _local5._3I, _local5._2K);
        } else {
            _local4.reset(_arg1.containerType_, 0, _arg1.ownerId_, _arg1.bulletId_, _arg1.angle_, gs_.lastUpdate_);
        }
        ;
        _local4._06E(_arg1.damage_);
        gs_.map.addObj(_local4, _arg1.startingPos_.x_, _arg1.startingPos_.y_);
        if (_local2) {
            this._sN(gs_.lastUpdate_);
        }
        ;
    }

    private function _09i(_arg1:_17D):void {
        var _local2:GameObject = gs_.map.goDict_[_arg1.ownerId_];
        if ((((_local2 == null)) || (_local2._0HD))) {
            return;
        }
        ;
        var _local3:Projectile = (_0CH._mN(Projectile) as Projectile);
        var _local4:Player = (_local2 as Player);
        if (_local4 != null) {
            _local3.reset(_arg1.containerType_, 0, _arg1.ownerId_, _arg1.bulletId_, _arg1.angle_, gs_.lastUpdate_, _local4._3I, _local4._2K);
        } else {
            _local3.reset(_arg1.containerType_, 0, _arg1.ownerId_, _arg1.bulletId_, _arg1.angle_, gs_.lastUpdate_);
        }
        ;
        gs_.map.addObj(_local3, _local2.x_, _local2.y_);
        _local2.setAttack(_arg1.containerType_, _arg1.angle_);
    }

    private function _iY(_arg1:_do):void {
        var _local2:_1GP = this._PI._Sb(this.model.player.objectType_)._0fJ._1PW(_arg1.skinID);
        _local2.setState(_0Hi.OWNED);
    }

    private function _Mi(_arg1:_0dY):void {
        var _local4:Projectile;
        var _local5:Number;
        var _local2:GameObject = gs_.map.goDict_[_arg1.ownerId_];
        if ((((_local2 == null)) || (_local2._0HD))) {
            this._sN(-1);
            return;
        }
        ;
        var _local3:int;
        while (_local3 < _arg1.numShots_) {
            _local4 = (_0CH._mN(Projectile) as Projectile);
            _local5 = (_arg1.angle_ + (_arg1.angleInc_ * _local3));
            _local4.reset(_local2.objectType_, _arg1.bulletType_, _arg1.ownerId_, ((_arg1.bulletId_ + _local3) % 0x0100), _local5, gs_.lastUpdate_);
            _local4._06E(_arg1.damage_);
            gs_.map.addObj(_local4, _arg1.startingPos_.x_, _arg1.startingPos_.y_);
            _local3++;
        }
        ;
        this._sN(gs_.lastUpdate_);
        _local2.setAttack(_local2.objectType_, (_arg1.angle_ + (_arg1.angleInc_ * ((_arg1.numShots_ - 1) / 2))));
    }

    private function _0tT(_arg1:_0m1):void {
        if (!Parameters.data_.chatTrade) {
            return;
        }
        ;
        if (Parameters.data_.showTradePopup) {
            gs_.hudView.interactPanel.setOverride(new TradeRequestPanel(gs_, _arg1.name_));
        }
        ;
        this._1u7.dispatch(_1ty.make("", ((((_arg1.name_ + " wants to ") + 'trade with you.  Type "/trade ') + _arg1.name_) + '" to trade.')));
    }

    private function _1Vh(_arg1:_cy):void {
        gs_.hudView.startTrade(gs_, _arg1);
    }

    private function _1G8(_arg1:_0gd):void {
        gs_.hudView.tradeChanged(_arg1);
    }

    private function _0tn(_arg1:_0sZ):void {
        var _local3:Object;
        var _local4:Object;
        gs_.hudView.tradeDone();
        var _local2 = "";
        try {
            _local4 = JSON.parse(_arg1.description_);
            _local2 = _local4.key;
            _local3 = _local4.tokens;
        } catch (e:Error) {
        }
        ;
        this._1u7.dispatch(_1ty.make(Parameters._1o9, _local2, -1, -1, "", false, _local3));
    }

    private function _1GR(_arg1:_0eW):void {
        gs_.hudView.tradeAccepted(_arg1);
    }

    private function _1Ej(_arg1:_CC):void {
        var _local2:_1Px = gs_.map;
        var _local3:GameObject = ObjectLibrary._XL(_arg1.objectType_);
        if (_local3 == null) {
            return;
        }
        ;
        var _local4:_0g1 = _arg1._0K8;
        _local3.setObjectId(_local4.objectId_);
        _local2.addObj(_local3, _local4.pos_.x_, _local4.pos_.y_);
        if ((_local3 is Player)) {
            this._1C5((_local3 as Player), _local2);
        }
        ;
        this._0Ze(_local4, 0, -1);
        if (((((_local3.props_.static_) && (_local3.props_.occupySquare_))) && (!(_local3.props_._02)))) {
            this._1Cj.dispatch(new _gT(_local3.x_, _local3.y_, _local3));
        }
        ;
    }

    private function _1C5(_arg1:Player, _arg2:_1Px):void {
        this._1Ai(_arg1, 0);
        if (_arg1.objectId_ == this._Q9) {
            this.player = _arg1;
            this.model.player = _arg1;
            _arg2.player_ = _arg1;
            gs_.setFocus(_arg1);
            this._6t.dispatch(this._Q9.toString());
        }
        ;
    }

    private function _0IJ(_arg1:Update):void {
        var _local3:int;
        var _local4:_2Z;
        var _local2:_cx = this._1Zi._1SN(_8q);
        _1K3.sendMessage(_local2);
        _local3 = 0;
        while (_local3 < _arg1.tiles_.length) {
            _local4 = _arg1.tiles_[_local3];
            gs_.map.setGroundTile(_local4.x_, _local4.y_, _local4.type_);
            this._0eF.dispatch(new _1W3(_local4.x_, _local4.y_, _local4.type_));
            _local3++;
        }
        ;
        _local3 = 0;
        while (_local3 < _arg1.newObjs_.length) {
            this._1Ej(_arg1.newObjs_[_local3]);
            _local3++;
        }
        ;
        _local3 = 0;
        while (_local3 < _arg1.drops_.length) {
            gs_.map.removeObj(_arg1.drops_[_local3]);
            _local3++;
        }
        ;
    }

    private function _j8(_arg1:_159):void {
        var _local3:_5R;
        var _local4:_i9;
        var _local5:_mz;
        var _local2:GameObject = gs_.map.goDict_[_arg1.objectId_];
        if (_local2 != null) {
            _local3 = _5R.fromJSON(_arg1.message);
            if (_local3.key == "server.plus_symbol") {
                _local4 = new _i9(_local2, _arg1.color_, 1000);
                _local4.setStringBuilder(_local3);
                gs_.map.mapOverlay_.addStatusText(_local4);
            } else {
                _local5 = new _mz(_local2, _local3, _arg1.color_, 2000);
                gs_.map.mapOverlay_.addQueuedText(_local5);
                if ((((_local2 == this.player)) && ((_local3.key == "server.quest_complete")))) {
                    gs_.map.quest_.completed();
                }
                ;
            }
            ;
        }
        ;
    }

    private function _0Ui(_arg1:_ri):void {
        switch (_arg1.text) {
            case "yellow":
                _1B0._a9.dispatch(_i6._Py);
                return;
            case "red":
                _1B0._a9.dispatch(_i6._0KG);
                return;
            case "green":
                _1B0._a9.dispatch(_i6._0ti);
                return;
            case "purple":
                _1B0._a9.dispatch(_i6._0tS);
                return;
            case "showKeyUI":
                _1nu._a9.dispatch();
                return;
            case "giftChestOccupied":
                this._0yC.dispatch(_1k4._0n0);
                return;
            case "giftChestEmpty":
                this._0yC.dispatch(_1k4._Vl);
                return;
            case "beginnersPackage":
                return;
        }
        ;
    }

    private function _0OT(_arg1:_1j4):void {
        var _local2:_0g1;
        if (jitterWatcher_ != null) {
            jitterWatcher_.record();
        }
        ;
        this.move(_arg1.tickId_, this.player);
        for each (_local2 in _arg1.statuses_) {
            this._0Ze(_local2, _arg1.tickTime_, _arg1.tickId_);
        }
        ;
        lastTickId_ = _arg1.tickId_;
    }

    private function _1xi(_arg1:_10d):void {
        var _local3:GameObject;
        var _local4:_1S9;
        var _local5:Point;
        var _local6:uint;
        var _local2:_1Px = gs_.map;
        switch (_arg1.effectType_) {
            case _10d._tC:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) {
                    return;
                }
                ;
                _local2.addObj(new _1sJ(_local3, _arg1.color_), _local3.x_, _local3.y_);
                return;
            case _10d._1HB:
                _local2.addObj(new TeleportEffect(), _arg1.pos1_.x_, _arg1.pos1_.y_);
                return;
            case _10d._0eT:
                _local4 = new StreamEffect(_arg1.pos1_, _arg1.pos2_, _arg1.color_);
                _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                return;
            case _10d._0gN:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                _local5 = (((_local3) != null) ? new Point(_local3.x_, _local3.y_) : _arg1.pos2_._1Ab());
                _local4 = new ThrowEffect(_local5, _arg1.pos1_._1Ab(), _arg1.color_);
                _local2.addObj(_local4, _local5.x, _local5.y);
                return;
            case _10d._0IX:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _69(_local3, _arg1.pos1_.x_, _arg1.color_);
                _local2.addObj(_local4, _local3.x_, _local3.y_);
                return;
            case _10d._1aG:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _R9(_local3, _arg1.color_);
                _local2.addObj(_local4, _local3.x_, _local3.y_);
                return;
            case _10d._0oU:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _0OC(_local3, _arg1.pos1_, _arg1.color_);
                _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                return;
            case _10d._0DJ:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _iQ(_local3, _arg1.pos1_, _arg1.pos2_, _arg1.color_);
                _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                return;
            case _10d._1ON:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new FlowEffect(_arg1.pos1_, _local3, _arg1.color_);
                _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                return;
            case _10d._r2:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _Uu(_local3, _arg1.pos1_.x_, _arg1.color_);
                _local2.addObj(_local4, _local3.x_, _local3.y_);
                return;
            case _10d._0Qq:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _08I(_local3, _arg1.pos1_, _arg1.color_, _arg1.pos2_.x_);
                _local2.addObj(_local4, _local3.x_, _local3.y_);
                return;
            case _10d._qS:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _0n3(_local3, _arg1.pos1_, _arg1.pos2_, _arg1.color_);
                _local2.addObj(_local4, _arg1.pos1_.x_, _arg1.pos1_.y_);
                return;
            case _10d._0VV:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _19t(_local3, _arg1.pos1_, _arg1.pos2_.x_, _arg1.color_);
                _local2.addObj(_local4, _local3.x_, _local3.y_);
                return;
            case _10d._8s:
                gs_.camera_.startJitter();
                return;
            case _10d._1Du:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) {
                    return;
                }
                ;
                _local3._Zv = new _NZ(getTimer(), _arg1.color_, _arg1.pos1_.x_, _arg1.pos1_.y_);
                return;
            case _10d._0qH:
                _local5 = _arg1.pos1_._1Ab();
                _local4 = new _0FP(_arg1.color_, _arg1.pos2_._1Ab(), _arg1.pos1_._1Ab());
                _local2.addObj(_local4, _local5.x, _local5.y);
                return;
            case _10d._1l9:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) {
                    return;
                }
                ;
                if (((_local3) && (_local3._0Vr))) {
                    _local3._0Vr.destroy();
                }
                ;
                _local4 = new _0Qd(_local3);
                _local3._0Vr = _0Qd(_local4);
                gs_.map.addObj(_local4, _local3.x_, _local3.y_);
                return;
            case _10d._1g0:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) break;
                _local4 = new _19m(_local3);
                gs_.map.addObj(_local4, _local3.x_, _local3.y_);
                return;
            case _10d._ko:
                _local3 = _local2.goDict_[_arg1.targetObjectId_];
                if (_local3 == null) {
                    return;
                }
                ;
                _local6 = (_arg1.pos1_.x_ * 1000);
                _local4 = new _14d(_local3, _local6);
                gs_.map.addObj(_local4, _local3.x_, _local3.y_);
                return;
        }
        ;
    }

    private function _1r5(_arg1:_0Gz):void {
        this._0oB(gs_.lastUpdate_);
        var _local2:GameObject = gs_.map.goDict_[_arg1.objectId_];
        if (_local2 == null) {
            return;
        }
        ;
        _local2._1r5(_arg1.pos_.x_, _arg1.pos_.y_, gs_.lastUpdate_);
    }

    private function _jK(_arg1:GameObject, _arg2:Vector.<StatData>, _arg3:Boolean):void {
        var _local7:StatData;
        var _local8:int;
        var _local9:int;
        var _local4:Player = (_arg1 as Player);
        var _local5:Merchant = (_arg1 as Merchant);
        var _local6:Pet = (_arg1 as Pet);
        if (_local6) {
            this._08._1ca(_local6, _arg2);
            if (gs_.map.isPetYard) {
                this._08._1mf(_local6, _arg2);
            }
            ;
            return;
        }
        ;
        for each (_local7 in _arg2) {
            _local8 = _local7._mt;
            switch (_local7._1Jh) {
                case StatData._Qw:
                    _arg1._022 = _local8;
                    break;
                case StatData._W2:
                    _arg1._1wA = _local8;
                    break;
                case StatData._yy:
                    _arg1.size_ = _local8;
                    break;
                case StatData._gS:
                    _local4._0sE = _local8;
                    break;
                case StatData._0mv:
                    _local4._0e = _local8;
                    break;
                case StatData._067:
                    _local4._Pr = _local8;
                    break;
                case StatData._1m:
                    _local4.exp_ = _local8;
                    break;
                case StatData._0Bm:
                    _arg1._ew = _local8;
                    break;
                case StatData._p6:
                    _local4._0jT = _local8;
                    break;
                case StatData._1Dc:
                    _arg1._05c = _local8;
                    break;
                case StatData._0Oh:
                    _local4.speed_ = _local8;
                    break;
                case StatData._1q3:
                    _local4._1IQ = _local8;
                    break;
                case StatData._05:
                    _local4._oP = _local8;
                    break;
                case StatData._1ss:
                    _local4._1EO = _local8;
                    break;
                case StatData._oR:
                    _arg1.condition_[ConditionEffect._11S] = _local8;
                    break;
                case StatData.INVENTORY_0_STAT:
                case StatData.INVENTORY_1_STAT:
                case StatData.INVENTORY_2_STAT:
                case StatData.INVENTORY_3_STAT:
                case StatData.INVENTORY_4_STAT:
                case StatData.INVENTORY_5_STAT:
                case StatData.INVENTORY_6_STAT:
                case StatData.INVENTORY_7_STAT:
                case StatData.INVENTORY_8_STAT:
                case StatData.INVENTORY_9_STAT:
                case StatData.INVENTORY_10_STAT:
                case StatData.INVENTORY_11_STAT:
                    _arg1._0Z[(_local7._1Jh - StatData.INVENTORY_0_STAT)] = _local8;
                    break;
                case StatData._EU:
                    _local4.numStars_ = _local8;
                    break;
                case StatData._00P:
                    if (_arg1.name_ != _local7._P9) {
                        _arg1.name_ = _local7._P9;
                        _arg1._ar = null;
                    }
                    ;
                    break;
                case StatData.TEX1_STAT:
                    _arg1.setTex1(_local8);
                    break;
                case StatData.TEX2_STAT:
                    _arg1.setTex2(_local8);
                    break;
                case StatData._WO:
                    _local5.setMerchandiseType(_local8);
                    break;
                case StatData._VH:
                    _local4._Oi(_local8);
                    break;
                case StatData._5n:
                    (_arg1 as SellableObject).setPrice(_local8);
                    break;
                case StatData._0LJ:
                    (_arg1 as Portal)._0N6 = !((_local8 == 0));
                    break;
                case StatData._xU:
                    _local4.accountId_ = _local7._P9;
                    break;
                case StatData._d9:
                    _local4._01D = _local8;
                    break;
                case StatData._0cs:
                    _local4.setTokens(_local8);
                    break;
                case StatData._Hd:
                    (_arg1 as SellableObject)._qz(_local8);
                    break;
                case StatData._1xA:
                    _arg1._00Q = _local8;
                    break;
                case StatData._1KX:
                    _local5._zM = _local8;
                    _local5._r4 = 0;
                    break;
                case StatData._RR:
                    _local5._1kI = _local8;
                    _local5._r4 = 0;
                    break;
                case StatData._04s:
                    _local5._0br = _local8;
                    _local5._r4 = 0;
                    break;
                case StatData._1gZ:
                    (_arg1 as SellableObject).setRankReq(_local8);
                    break;
                case StatData._tS:
                    _local4._0fM = _local8;
                    break;
                case StatData._02Q:
                    _local4._08J = _local8;
                    break;
                case StatData._1l:
                    _local4._0P4 = _local8;
                    break;
                case StatData._YN:
                    _local4._gU = _local8;
                    break;
                case StatData._09Q:
                    _local4._H8 = _local8;
                    break;
                case StatData._0Rg:
                    _local4._0HP = _local8;
                    break;
                case StatData._7:
                    _local4._1jk = _local8;
                    break;
                case StatData._0of:
                    _local4._0oQ = _local8;
                    break;
                case StatData._zS:
                    (_arg1 as Container)._0r8(_local7._P9);
                    break;
                case StatData._0RW:
                    (_arg1 as NameChanger)._1eL(_local8);
                    break;
                case StatData._1MM:
                    _local4._0LC = !((_local8 == 0));
                    _arg1._ar = null;
                    break;
                case StatData._sz:
                    _local4._1GN = _local8;
                    break;
                case StatData._wh:
                    _local4._Pq = _local8;
                    break;
                case StatData._Lm:
                    _local4._ZB = _local8;
                    break;
                case StatData._0Up:
                    if (!_arg3) {
                        _local4._UE = _local8;
                    }
                    ;
                    break;
                case StatData._xM:
                    _arg1._0dw(_local8);
                    break;
                case StatData._gf:
                    _local4._1t8(_local7._P9);
                    break;
                case StatData._eT:
                    _local4.guildRank_ = _local8;
                    break;
                case StatData._1GE:
                    _local4.breath_ = _local8;
                    break;
                case StatData._v4:
                    _local4._in = _local8;
                    break;
                case StatData._49:
                    _local4._1uv = (_local8 * _jR);
                    break;
                case StatData._90:
                    _local4._kw = (_local8 * _jR);
                    break;
                case StatData._gY:
                    _local4._1XI = (_local8 * _jR);
                    break;
                case StatData._m9:
                    _local4._0E6 = _local8;
                    break;
                case StatData._TC:
                    _local4._0or = _local8;
                    break;
                case StatData._0JB:
                    ((!((_local4._0cg == _local8))) && (this._1Ai(_local4, _local8)));
                    break;
                case StatData._15L:
                    (_arg1 as Player)._0kQ = Boolean(_local8);
                    if (_arg3) {
                        this._0YG.dispatch(Boolean(_local8));
                    }
                    ;
                    break;
                case StatData.BACKPACK_0_STAT:
                case StatData.BACKPACK_1_STAT:
                case StatData.BACKPACK_2_STAT:
                case StatData.BACKPACK_3_STAT:
                case StatData.BACKPACK_4_STAT:
                case StatData.BACKPACK_5_STAT:
                case StatData.BACKPACK_6_STAT:
                case StatData.BACKPACK_7_STAT:
                    _local9 = (((_local7._1Jh - StatData.BACKPACK_0_STAT) + _1bu._0RT) + _1bu._0KV);
                    (_arg1 as Player)._0Z[_local9] = _local8;
                    break;
                case StatData._Jb:
                    _arg1.condition_[ConditionEffect._T1] = _local8;
                    break;
            }
            ;
        }
        ;
    }

    private function _1Ai(_arg1:Player, _arg2:int):void {
        var _local3:_RT = (this._1Zi._1SN(RESKIN) as _RT);
        _local3.skinID = _arg2;
        _local3.player = _arg1;
        _local3.consume();
    }

    private function _0Ze(_arg1:_0g1, _arg2:int, _arg3:int):void {
        var _local8:int;
        var _local9:int;
        var _local10:int;
        var _local11:_E0;
        var _local12:XML;
        var _local13:String;
        var _local14:String;
        var _local15:int;
        var _local16:ObjectProperties;
        var _local17:_0HW;
        var _local18:Array;
        var _local4:_1Px = gs_.map;
        var _local5:GameObject = _local4.goDict_[_arg1.objectId_];
        if (_local5 == null) {
            return;
        }
        ;
        var _local6 = (_arg1.objectId_ == this._Q9);
        if (((!((_arg2 == 0))) && (!(_local6)))) {
            _local5._0TY(_arg1.pos_.x_, _arg1.pos_.y_, _arg2, _arg3);
        }
        ;
        var _local7:Player = (_local5 as Player);
        if (_local7 != null) {
            _local8 = _local7._ew;
            _local9 = _local7.exp_;
            _local10 = _local7._0cg;
        }
        ;
        this._jK(_local5, _arg1._0Lc, _local6);
        if (_local7) {
            if (_local6) {
                _local11 = this._PI._Sb(_local7.objectType_);
                if (_local11._0i0() < _local7._ew) {
                    _local11._1cE(_local7._ew);
                }
                ;
            }
            ;
            if (_local7._0cg != _local10) {
                if (ObjectLibrary._052[_local7._0cg] != null) {
                    _local12 = (ObjectLibrary._052[_local7._0cg] as XML);
                    _local13 = _local12.attribute("color");
                    _local14 = _local12.attribute("bulletType");
                    if (((!((_local8 == -1))) && ((_local13.length > 0)))) {
                        _local7._it(uint(_local13));
                    }
                    ;
                    if (_local14.length > 0) {
                        _local7._3I = _local14;
                        _local15 = _local7._0Z[0];
                        _local16 = ObjectLibrary._x9[_local15];
                        _local17 = _local16._zu[0];
                        _local7._2K = _local17.objectId_;
                    }
                    ;
                } else {
                    if (ObjectLibrary._052[_local7._0cg] == null) {
                        _local7._3I = "";
                        _local7._2K = "";
                    }
                    ;
                }
                ;
            }
            ;
            if (((!((_local8 == -1))) && ((_local7._ew > _local8)))) {
                if (_local6) {
                    _local18 = gs_.model.getNewUnlocks(_local7.objectType_, _local7._ew);
                    _local7._1pS(!((_local18.length == 0)));
                } else {
                    _local7._0sA(_TG._0Yh);
                }
                ;
            } else {
                if (((!((_local8 == -1))) && ((_local7.exp_ > _local9)))) {
                    _local7._0lH((_local7.exp_ - _local9));
                }
                ;
            }
            ;
        }
        ;
    }

    private function _0zU(_arg1:_1Xb):void {
        if (_arg1.result_ != 0) {
            this._1ht();
        }
        ;
    }

    private function _1ht():void {
        _0Yn.play("error");
        gs_.hudView.interactPanel.redraw();
    }

    private function _1oQ(_arg1:_0W3):void {
        var _local2:Server = new Server().setName(_arg1.name_).setAddress((((_arg1.host_) != "") ? _arg1.host_ : server_.address)).setPort((((_arg1.host_) != "") ? _arg1.port_ : server_.port));
        var _local3:int = _arg1.gameId_;
        var _local4:Boolean = _1HQ;
        var _local5:int = charId_;
        var _local6:int = _arg1.keyTime_;
        var _local7:ByteArray = _arg1.key_;
        isFromArena_ = _arg1.isFromArena_;
        var _local8:_0La = new _0La(_local2, _local3, _local4, _local5, _local6, _local7, isFromArena_);
        gs_.dispatchEvent(_local8);
    }

    private function _HV(_arg1:_1B2):void {
        var _local2:_4I = (this._1Zi._1SN(PONG) as _4I);
        _local2.serial_ = _arg1.serial_;
        _local2.time_ = getTimer();
        _1K3.sendMessage(_local2);
    }

    private function _0qI(_arg1:String):void {
        var _local2:XML = XML(_arg1);
        _0d7._0vQ(_local2);
        ObjectLibrary._0vQ(_local2);
        ObjectLibrary._0vQ(_local2);
    }

    private function _1p7(_arg1:_29):void {
        var _local2:String;
        var _local3:String;
        for each (_local2 in _arg1.clientXML_) {
            this._0qI(_local2);
        }
        ;
        for each (_local3 in _arg1.extraXML_) {
            this._0qI(_local3);
        }
        ;
        _ob.dispatch();
        this.closeDialogs.dispatch();
        gs_.applyMapInfo(_arg1);
        this._1AJ = new Random(_arg1.fp_);
        if (_1HQ) {
            this.create();
        } else {
            this.load();
        }
        ;
    }

    private function _0pW(_arg1:Pic):void {
        gs_.addChild(new _1nw(_arg1.bitmapData_));
    }

    private function _0Xg(_arg1:_1Id):void {
        this.death = _arg1;
        var _local2:BitmapData = new _0Iy(gs_.stage.stageWidth, gs_.stage.stageHeight);
        _local2.draw(gs_);
        _arg1.background = _local2;
        if (!gs_.isEditor) {
            this._3U.dispatch(_arg1);
        }
        ;
        this._zE();
    }

    private function _17i(_arg1:_03P):void {
        if (_arg1.result_ == _03P._1Ih) {
            if (outstandingBuy_ != null) {
                outstandingBuy_.record();
            }
            ;
        }
        ;
        outstandingBuy_ = null;
        this._008(_arg1);
    }

    private function _008(_arg1:_03P):void {
        var _local2:_1ty;
        switch (_arg1.result_) {
            case _03P._o8:
                _local2 = _1ty.make(Parameters._1o9, _arg1.resultString_);
                this._1u7.dispatch(_local2);
                return;
            case _03P._1Fi:
                this._nU.dispatch(new _0Ek());
                return;
            case _03P._5w:
                this._nU.dispatch(new NotEnoughFameDialog());
                return;
            default:
                this._1v8(_arg1);
        }
        ;
    }

    private function _1v8(_arg1:_03P):void {
        var _local2:_5R = _5R.fromJSON(_arg1.resultString_);
        var _local3:Boolean = (((_arg1.result_ == _03P._1Ih)) || ((_arg1.result_ == _03P._1AC)));
        var _local4:_1ty = _1ty.make(_local3 ? Parameters._1o9 : Parameters._0c, _local2.key);
        _local4.tokens = _local2.tokens;
        this._1u7.dispatch(_local4);
    }

    private function _e5(_arg1:_L2):void {
        if (_arg1.accountListId_ == 0) {
            if (_arg1.lockAction_ != -1) {
                if (_arg1.lockAction_ == 1) {
                    gs_.map.party_.setStars(_arg1);
                } else {
                    gs_.map.party_.removeStars(_arg1);
                }
                ;
            } else {
                gs_.map.party_.setStars(_arg1);
            }
            ;
        } else {
            if (_arg1.accountListId_ == 1) {
                gs_.map.party_.setIgnores(_arg1);
            }
            ;
        }
        ;
    }

    private function _eg(_arg1:_0qF):void {
        gs_.map.quest_.setObject(_arg1.objectId_);
    }

    private function _5D(_arg1:_vy):void {
        var _local4:int;
        var _local5:Vector.<uint>;
        if (this.player == null) {
            this._gG(gs_.lastUpdate_, 0, 0);
            return;
        }
        ;
        var _local2:_1S8 = new _1S8(_arg1.pos_._1Ab(), _arg1.radius_, 0xFF0000);
        gs_.map.addObj(_local2, _arg1.pos_.x_, _arg1.pos_.y_);
        if (((this.player._1vY()) || (this.player.isPaused()))) {
            this._gG(gs_.lastUpdate_, this.player.x_, this.player.y_);
            return;
        }
        ;
        var _local3 = (this.player._17z(_arg1.pos_) < _arg1.radius_);
        if (_local3) {
            _local4 = GameObject._DU(_arg1.damage_, this.player._05c, false, this.player.condition_);
            _local5 = null;
            if (_arg1.effect_ != 0) {
                _local5 = new Vector.<uint>();
                _local5.push(_arg1.effect_);
            }
            ;
            this.player.damage(_arg1.origType_, _local4, _local5, false, null);
        }
        ;
        this._gG(gs_.lastUpdate_, this.player.x_, this.player.y_);
    }

    private function _1Tr(_arg1:_0kz):void {
        gs_.dispatchEvent(new _Ww(_arg1));
    }

    private function _1n6(_arg1:_BA):void {
        var _local2:_5R;
        if (_arg1.lineBuilderJSON == "") {
            gs_.dispatchEvent(new _094(_arg1.success_, "", {}));
        } else {
            _local2 = _5R.fromJSON(_arg1.lineBuilderJSON);
            this._1u7.dispatch(_1ty.make(Parameters._0c, _local2.key, -1, -1, "", false, _local2.tokens));
            gs_.dispatchEvent(new _094(_arg1.success_, _local2.key, _local2.tokens));
        }
        ;
    }

    private function _1y0(_arg1:_1x7):void {
        var _local2:Account = _8w._1Sz().getInstance(Account);
        _local2._cq(_arg1.name_, _arg1.value_);
    }

    private function _4x(_arg1:File):void {
        new FileReference().save(_arg1.file_, _arg1.filename_);
    }

    private function _1b3(_arg1:_0JT):void {
        if (Parameters.data_.showGuildInvitePopup) {
            gs_.hudView.interactPanel.setOverride(new _iG(gs_, _arg1.name_, _arg1.guildName_));
        }
        ;
        this._1u7.dispatch(_1ty.make("", (((((("You have been invited by " + _arg1.name_) + " to join the guild ") + _arg1.guildName_) + '.\n  If you wish to join type "/join ') + _arg1.guildName_) + '"')));
    }

    private function _1LP(_arg1:_1XT):void {
        var _local2:GameObject = gs_.map.goDict_[_arg1.ownerId_];
        ((_local2) && (_local2._am(_arg1.soundId_)));
    }

    private function _1S(_arg1:_0AG):void {
        this._1CM.dispatch(_arg1.currentRuntime);
    }

    private function _fD(_arg1:_0xj):void {
        this._0Hk._sx = _arg1.cost;
        this._nU.dispatch(new ContinueOrQuitDialog(_arg1.cost, false));
        this._1yf.dispatch();
    }

    private function _oW(_arg1:_0Mz):void {
        TitleView._1Bs = true;
        if (gs_ != null) {
            gs_.closed.dispatch();
        }
        ;
        var _local2:_cm = _8w._1Sz().getInstance(_cm);
        if (_local2 != null) {
            _local2.dispatch();
        }
        ;
    }

    private function _P0(_arg1:_H1):void {
        if (_arg1.cleanPasswordStatus == 3) {
            TitleView._ug = true;
        } else {
            if (_arg1.cleanPasswordStatus == 2) {
                TitleView._ut = true;
            } else {
                if (_arg1.cleanPasswordStatus == 4) {
                    TitleView._0zZ = true;
                }
                ;
            }
            ;
        }
        ;
        if (gs_ != null) {
            gs_.closed.dispatch();
        }
        ;
        var _local2:_cm = _8w._1Sz().getInstance(_cm);
        if (_local2 != null) {
            _local2.dispatch();
        }
        ;
    }

    private function _00l(_arg1:_18r):void {
        this._Vv.dispatch(_arg1);
    }

    private function _0an(_arg1:_1oH):void {
        this._1Mf.dispatch(_arg1);
    }

    private function _0zc():void {
        var _local1:_cm;
        if (this._Q9 != -1) {
            gs_.closed.dispatch();
        } else {
            if (this._0HL) {
                if (this._p1 < 10) {
                    if (this._p1 == 6) {
                        _local1 = _8w._1Sz().getInstance(_cm);
                        _local1.dispatch();
                    }
                    ;
                    this._91(this._p1++);
                    this._1u7.dispatch(_1ty.make(Parameters._0c, "Connection failed!  Retrying..."));
                } else {
                    gs_.closed.dispatch();
                }
                ;
            }
            ;
        }
        ;
    }

    private function _91(_arg1:int):void {
        this._0wz = new Timer((_arg1 * 1000), 1);
        this._0wz.addEventListener(TimerEvent.TIMER_COMPLETE, this._0Ma);
        this._0wz.start();
    }

    private function _31(_arg1:String):void {
        this._1u7.dispatch(_1ty.make(Parameters._0c, _arg1));
    }

    private function _0Id(_arg1:_1VB):void {
        switch (_arg1.errorId_) {
            case _1VB._PF:
                this._9U(_arg1);
                return;
            case _1VB._1Ji:
                this._0JF(_arg1);
                return;
            case _1VB._1gy:
                this._0bF(_arg1);
                return;
            case _1VB._0tL:
                this._0UJ(_arg1);
                return;
            default:
                this._0a9(_arg1);
        }
        ;
    }

    private function _0UJ(_arg1:_1VB):void {
        this._0HL = false;
        gs_.closed.dispatch();
    }

    private function _0bF(_arg1:_1VB):void {
        var _local2:String = _5R._MF(_arg1.errorDescription_);
        if (_local2 == "") {
            _local2 = _arg1.errorDescription_;
        }
        ;
        this._1u7.dispatch(_1ty.make(Parameters._0c, _local2));
        this.player._6b = 0;
    }

    private function _0JF(_arg1:_1VB):void {
        var _local2:String = _5R._MF(_arg1.errorDescription_);
        if (_local2 == "") {
            _local2 = _arg1.errorDescription_;
        }
        ;
        this._1u7.dispatch(_1ty.make(Parameters._0c, _local2));
        this._0HL = false;
        gs_.closed.dispatch();
    }

    private function _9U(_arg1:_1VB):void {
        var _local2:Dialog = new Dialog(_TG._1FG, "", _TG._0LR, null, "/clientUpdate");
        _local2._Mu(_TG._0nN, {
            client: Parameters._1Q2,
            server: _arg1.errorDescription_
        });
        _local2.addEventListener(Dialog.LEFT_BUTTON, this._1jD);
        gs_.stage.addChild(_local2);
        this._0HL = false;
    }

    private function _0a9(_arg1:_1VB):void {
        var _local2:String = _5R._MF(_arg1.errorDescription_);
        if (_local2 == "") {
            _local2 = _arg1.errorDescription_;
        }
        ;
        this._1u7.dispatch(_1ty.make(Parameters._0c, _local2));
    }

    private function _0Ma(_arg1:TimerEvent):void {
        _1K3.connect(server_.address, server_.port);
    }

    private function _1jD(_arg1:Event):void {
        var _local2:Dialog = (_arg1.currentTarget as Dialog);
        _local2.parent.removeChild(_local2);
        gs_.closed.dispatch();
    }
}
}//package _1TC

