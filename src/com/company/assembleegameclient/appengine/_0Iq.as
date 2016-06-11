// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine._0Iq

package com.company.assembleegameclient.appengine {
import _0CT._8w;

import _0cA._0bz;

import _0oL._1uM;

import _1PE.Account;

import _1Yg._1Fn;

import _Vb.TOSPopup;

import __Nj._M4;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;

import flash.events.Event;

public class _0Iq extends Event {

    public static const SAVED_CHARS_LIST:String = "SAVED_CHARS_LIST";
    public static const _0gt:String = "available";
    public static const _Jf:String = "unavailable";
    public static const _0l9:String = "unrestricted";
    private static const _01H:_1uM = new _1uM(37.4436, -122.412);
    private static const _1Mp:String = "unavailable";

    public function _0Iq(_arg1:String) {
        var _local4:*;
        var _local5:Account;
        this.savedChars_ = new Vector.<SavedCharacter>();
        this.charStats_ = {};
        this._10C = new Vector.<_0Bk>();
        super(SAVED_CHARS_LIST);
        this._zf = _arg1;
        this._1DF = new XML(this._zf);
        var _local2:XML = XML(this._1DF.Account);
        this._1hG(_local2);
        this._0Z9(_local2);
        this._0oR(_local2);
        this._Da();
        this._05p();
        this._zT();
        this._1mb();
        this._0y6();
        this._WW();
        this._sS();
        var _local3:_0bz = _8w._1Sz();
        if (_local3) {
            _local5 = _local3.getInstance(Account);
            _local5._cq("BestLevel", this._xt());
            _local5._cq("BestFame", this._1dS());
            _local5._cq("NumStars", this.numStars_);
            _local5.verify(_local2.hasOwnProperty("VerifiedEmail"));
        }
        ;
        this._1VZ = new Object();
        for each (_local4 in this._1DF.ClassAvailabilityList.ClassAvailability) {
            this._1VZ[_local4.@id.toString()] = _local4.toString();
        }
        ;
    }
    public var accountId_:String;
    public var nextCharId_:int;
    public var maxNumChars_:int;
    public var numChars_:int = 0;
    public var savedChars_:Vector.<SavedCharacter>;
    public var charStats_:Object;
    public var totalFame_:int = 0;
    public var _01D:int = 0;
    public var credits_:int = 0;
    public var _58:int = 0;
    public var numStars_:int = 0;
    public var nextCharSlotPrice_:int;
    public var guildName_:String;
    public var guildRank_:int;
    public var name_:String = null;
    public var _0LC:Boolean;
    public var converted_:Boolean;
    public var _0du:Boolean;
    public var _10C:Vector.<_0Bk>;
    public var _wz:_1uM;
    public var _076:String = "unavailable";
    public var _3H:Boolean = false;
    public var _1VZ:Object;
    public var isAgeVerified:Boolean;
    private var _zf:String;
    private var _1DF:XML;
    private var account:Account;

    override public function clone():Event {
        return (new _0Iq(this._zf));
    }

    override public function toString():String {
        return (((((("[" + " numChars: ") + this.numChars_) + " maxNumChars: ") + this.maxNumChars_) + " ]"));
    }

    public function _0jG(_arg1:int):SavedCharacter {
        var _local2:SavedCharacter;
        for each (_local2 in this.savedChars_) {
            if (_local2.charId() == _arg1) {
                return (_local2);
            }
            ;
        }
        ;
        return (null);
    }

    public function bestLevel(_arg1:int):int {
        var _local2:_1Ha = this.charStats_[_arg1];
        return ((((_local2 == null)) ? 0 : _local2.bestLevel()));
    }

    public function _xt():int {
        var _local2:_1Ha;
        var _local1:int;
        for each (_local2 in this.charStats_) {
            if (_local2.bestLevel() > _local1) {
                _local1 = _local2.bestLevel();
            }
            ;
        }
        ;
        return (_local1);
    }

    public function _04z(_arg1:int):int {
        var _local2:_1Ha = this.charStats_[_arg1];
        return ((((_local2 == null)) ? 0 : _local2._04z()));
    }

    public function _1dS():int {
        var _local2:_1Ha;
        var _local1:int;
        for each (_local2 in this.charStats_) {
            if (_local2._04z() > _local1) {
                _local1 = _local2._04z();
            }
            ;
        }
        ;
        return (_local1);
    }

    public function _Yh(_arg1:int):Boolean {
        var _local3:XML;
        var _local4:int;
        var _local2:XML = ObjectLibrary._18H[_arg1];
        for each (_local3 in _local2.UnlockLevel) {
            _local4 = ObjectLibrary._qb[_local3.toString()];
            if (this.bestLevel(_local4) < int(_local3.@level)) {
                return (false);
            }
            ;
        }
        ;
        return (true);
    }

    public function _0UI():int {
        return ((this.maxNumChars_ - this.numChars_));
    }

    public function hasAvailableCharSlot():Boolean {
        return ((this.numChars_ < this.maxNumChars_));
    }

    public function _1pM(_arg1:int, _arg2:int):Array {
        var _local5:XML;
        var _local6:int;
        var _local7:Boolean;
        var _local8:Boolean;
        var _local9:XML;
        var _local10:int;
        var _local11:int;
        var _local3:Array = new Array();
        var _local4:int;
        while (_local4 < ObjectLibrary._0ZM.length) {
            _local5 = ObjectLibrary._0ZM[_local4];
            _local6 = int(_local5.@type);
            if (this._Yh(_local6)) {
            } else {
                _local7 = true;
                _local8 = false;
                for each (_local9 in _local5.UnlockLevel) {
                    _local10 = ObjectLibrary._qb[_local9.toString()];
                    _local11 = int(_local9.@level);
                    if (this.bestLevel(_local10) < _local11) {
                        if (((!((_local10 == _arg1))) || (!((_local11 == _arg2))))) {
                            _local7 = false;
                            break;
                        }
                        ;
                        _local8 = true;
                    }
                    ;
                }
                ;
                if (((_local7) && (_local8))) {
                    _local3.push(_local6);
                }
                ;
            }
            ;
            _local4++;
        }
        ;
        return (_local3);
    }

    private function _1hG(_arg1:XML):void {
        this.accountId_ = _arg1.AccountId;
        this.name_ = _arg1.Name;
        this._0LC = _arg1.hasOwnProperty("NameChosen");
        this.converted_ = _arg1.hasOwnProperty("Converted");
        this._0du = _arg1.hasOwnProperty("Admin");
        Player._1mi = this._0du;
        this.totalFame_ = int(_arg1.Stats.TotalFame);
        this._01D = int(_arg1.Stats.Fame);
        this.credits_ = int(_arg1.Credits);
        this._58 = int(_arg1.FortuneToken);
        this.nextCharSlotPrice_ = int(_arg1.NextCharSlotPrice);
        this.isAgeVerified = ((!((this.accountId_ == ""))) && ((_arg1.IsAgeVerified == 1)));
        this._3H = true;
    }

    private function _0Z9(_arg1:XML):void {
        var _local2:Number;
        var _local3:_1Fn;
        if (_arg1.hasOwnProperty("BeginnerPackageTimeLeft")) {
            _local2 = _arg1.BeginnerPackageTimeLeft;
            _local3 = this._1zx();
            _local3._0WA(_local2);
        }
        ;
    }

    private function _1zx():_1Fn {
        var _local1:_0bz = _8w._1Sz();
        var _local2:_1Fn = _local1.getInstance(_1Fn);
        return (_local2);
    }

    private function _0oR(_arg1:XML):void {
        var _local2:XML;
        if (_arg1.hasOwnProperty("Guild")) {
            _local2 = XML(_arg1.Guild);
            this.guildName_ = _local2.Name;
            this.guildRank_ = int(_local2.Rank);
        }
        ;
    }

    private function _Da():void {
        var _local1:XML;
        this.nextCharId_ = int(this._1DF.@nextCharId);
        this.maxNumChars_ = int(this._1DF.@maxNumChars);
        for each (_local1 in this._1DF.Char) {
            this.savedChars_.push(new SavedCharacter(_local1, this.name_));
            this.numChars_++;
        }
        ;
        this.savedChars_.sort(SavedCharacter._VG);
    }

    private function _05p():void {
        var _local2:XML;
        var _local3:int;
        var _local4:_1Ha;
        var _local1:XML = XML(this._1DF.Account.Stats);
        for each (_local2 in _local1.ClassStats) {
            _local3 = int(_local2.@objectType);
            _local4 = new _1Ha(_local2);
            this.numStars_ = (this.numStars_ + _local4.numStars());
            this.charStats_[_local3] = _local4;
        }
        ;
    }

    private function _zT():void {
        var _local2:XML;
        var _local1:XML = XML(this._1DF.News);
        for each (_local2 in _local1.Item) {
            this._10C.push(new _0Bk(_local2.Icon, _local2.Title, _local2.TagLine, _local2.Link, int(_local2.Date)));
        }
        ;
    }

    private function _1mb():void {
        if (((this._1DF.hasOwnProperty("Lat")) && (this._1DF.hasOwnProperty("Long")))) {
            this._wz = new _1uM(Number(this._1DF.Lat), Number(this._1DF.Long));
        } else {
            this._wz = _01H;
        }
        ;
    }

    private function _0y6():void {
        if (((this._1DF.hasOwnProperty("SalesForce")) && (this._1DF.hasOwnProperty("SalesForce")))) {
            this._076 = String(this._1DF.SalesForce);
        }
        ;
    }

    private function _WW():void {
        if (this._1DF.hasOwnProperty("TOSPopup")) {
            _8w._1Sz().getInstance(_M4).dispatch(new TOSPopup());
        }
        ;
    }

    private function _sS():void {
        var _local1:_0bz = _8w._1Sz();
        if (_local1) {
            this.account = _local1.getInstance(Account);
            ((this.account) && (this._1zC()));
        }
        ;
    }

    private function _1zC():void {
        var _local3:XML;
        var _local4:int;
        var _local1:int;
        var _local2:int;
        while (_local2 < ObjectLibrary._0ZM.length) {
            _local3 = ObjectLibrary._0ZM[_local2];
            _local4 = int(_local3.@type);
            if (this._Yh(_local4)) {
                this.account._cq((_local3.@id + "Unlocked"), 1);
                _local1++;
            }
            ;
            _local2++;
        }
        ;
        this.account._cq("ClassesUnlocked", _local1);
    }


}
}//package com.company.assembleegameclient.appengine

