// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_10a._FU

package _10a {
import _0Aa._0KD;

import _0oL._1uM;

import _1PE.Account;

import _1Sm._sy;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.appengine._0Bk;
import com.company.assembleegameclient.appengine._0Iq;
import com.company.assembleegameclient.parameters.Parameters;

public class _FU {

    public const _0kc:_sy = new _sy(int);
    public const _1Xl:_sy = new _sy(int);
    public const _Hy:_sy = new _sy(int);

    public function _FU() {
        this._Eq = true;
    }
    public var _0V4:_0Iq;
    public var _Eq:Boolean;
    [Inject]
    public var account:Account;
    private var _1Hc:int;
    private var isAgeVerified:Boolean;

    public function get _Oc():int {
        return (this._1Hc);
    }

    public function set _Oc(_arg1:int):void {
        this._1Hc = _arg1;
    }

    public function _1e4():Boolean {
        return (this._0V4._3H);
    }

    public function _zQ(_arg1:Boolean):void {
        this._0V4._3H = _arg1;
    }

    public function _0Y():Boolean {
        return (((((this.isAgeVerified) || ((this.account is _0KD)))) || (this._0V4.isAgeVerified)));
    }

    public function _lj(_arg1:Boolean):void {
        this.isAgeVerified = true;
    }

    public function _5O():Boolean {
        return (((Parameters.data_.needsTutorial) && ((this._0V4.nextCharId_ == 1))));
    }

    public function _06Y():int {
        return (this._0V4.maxNumChars_);
    }

    public function _1d2(_arg1:int):void {
        this._0V4.maxNumChars_ = _arg1;
    }

    public function _1fB():int {
        return (this._0V4.credits_);
    }

    public function _0h8():String {
        return (this._0V4._076);
    }

    public function _0xd(_arg1:int):void {
        this._0V4.credits_ = (this._0V4.credits_ + _arg1);
        this._0kc.dispatch(this._0V4.credits_);
    }

    public function _Oi(_arg1:int):void {
        if (this._0V4.credits_ != _arg1) {
            this._0V4.credits_ = _arg1;
            this._0kc.dispatch(_arg1);
        }
        ;
    }

    public function _00f():int {
        return (this._0V4._01D);
    }

    public function _To(_arg1:int):void {
        if (this._0V4._01D != _arg1) {
            this._0V4._01D = _arg1;
            this._1Xl.dispatch(_arg1);
        }
        ;
    }

    public function _06o():int {
        return (this._0V4._58);
    }

    public function setTokens(_arg1:int):void {
        if (this._0V4._58 != _arg1) {
            this._0V4._58 = _arg1;
            this._Hy.dispatch(_arg1);
        }
        ;
    }

    public function _H0():int {
        return (this._0V4.numChars_);
    }

    public function _0jG(_arg1:int):SavedCharacter {
        return (this._0V4._0jG(_arg1));
    }

    public function deleteCharacter(_arg1:int):void {
        var _local2:SavedCharacter = this._0V4._0jG(_arg1);
        var _local3:int = this._0V4.savedChars_.indexOf(_local2);
        if (_local3 != -1) {
            this._0V4.savedChars_.splice(_local3, 1);
            this._0V4.numChars_--;
        }
        ;
    }

    public function _1rI():String {
        return (this._0V4.accountId_);
    }

    public function _003():Boolean {
        return (!((this._0V4.accountId_ == "")));
    }

    public function _Pw():int {
        return (this._0V4.numStars_);
    }

    public function _03n():String {
        return (this._0V4.guildName_);
    }

    public function _1wz():int {
        return (this._0V4.guildRank_);
    }

    public function _2y():int {
        return (this._0V4.nextCharSlotPrice_);
    }

    public function _1w0():int {
        return (this._0V4.totalFame_);
    }

    public function _uQ():int {
        return (this._0V4.nextCharId_);
    }

    public function _0im(_arg1:int):SavedCharacter {
        var _local2:SavedCharacter;
        for each (_local2 in this._0V4.savedChars_) {
            if (_local2.charId() == _arg1) {
                return (_local2);
            }
            ;
        }
        ;
        return (null);
    }

    public function _15Z(_arg1:int):SavedCharacter {
        return (this._0V4.savedChars_[_arg1]);
    }

    public function _1mi():Boolean {
        return (this._0V4._0du);
    }

    public function _0c():Vector.<_0Bk> {
        return (this._0V4._10C);
    }

    public function _1iC():_1uM {
        return (this._0V4._wz);
    }

    public function _7N(_arg1:int, _arg2:String):void {
        this._0V4._1VZ[_arg1] = _arg2;
    }

    public function getName():String {
        return (this._0V4.name_);
    }

    public function getConverted():Boolean {
        return (this._0V4.converted_);
    }

    public function setName(_arg1:String):void {
        this._0V4.name_ = _arg1;
    }

    public function _1up():Boolean {
        return (this._0V4._0LC);
    }

    public function getNewUnlocks(_arg1:int, _arg2:int):Array {
        return (this._0V4._1pM(_arg1, _arg2));
    }

    public function hasAvailableCharSlot():Boolean {
        return (this._0V4.hasAvailableCharSlot());
    }

    public function _62():int {
        return (this._0V4._0UI());
    }

    public function _ct():Vector.<SavedCharacter> {
        return (this._0V4.savedChars_);
    }

    public function _0CQ():Object {
        return (this._0V4.charStats_);
    }

    public function _1lO(_arg1:String, _arg2:String):Boolean {
        var _local3:String = this._0V4._1VZ[_arg1];
        return ((_local3 == _arg2));
    }

    public function _8I(_arg1:int):Boolean {
        return (this._0V4._Yh(_arg1));
    }

    public function _1dt(_arg1:int):int {
        return (this._0V4._04z(_arg1));
    }

    public function _0A6(_arg1:int):int {
        return (this._0V4.bestLevel(_arg1));
    }

    public function _0KX(_arg1:_0Iq):void {
        this._0V4 = _arg1;
    }


}
}//package _10a

