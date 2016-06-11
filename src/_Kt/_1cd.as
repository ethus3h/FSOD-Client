// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Kt._1cd

package _Kt {
import _04g._1vd;

import _0AI._000;

import _0CT._8w;

import _0Mr._5R;

import _0oL._0hs;

import _14.Text;

import _175._dS;

import _1E._03e;
import _1E._0dI;

import _1Fr._qf;

import _1PE.Account;

import _1d9._0fc;
import _1d9._0z0;

import _QC._0Ew;

import __Nj._M4;

import _md._1tJ;
import _md._1ty;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects._0sh;
import com.company.assembleegameclient.parameters.Parameters;

public class _1cd {

    private const _qM:_1v1 = new _1v1(14802908, 0xFFFFFF, 0x545454);
    private const _1Pp:_1v1 = new _1v1(5644060, 16549442, 13484223);
    private const _1pz:_1v1 = new _1v1(2493110, 61695, 13880567);
    private const _082:_1v1 = new _1v1(0x3E8A00, 10944349, 13891532);

    [Inject]
    public var account:Account;
    [Inject]
    public var model:_03e;
    [Inject]
    public var _1u7:_0z0;
    [Inject]
    public var addSpeechBalloon:_0fc;
    [Inject]
    public var _0us:_dS;
    [Inject]
    public var _1Zq:_1tJ;
    [Inject]
    public var _0Bo:_1d8;
    [Inject]
    public var _1ia:_M4;
    [Inject]
    public var _1b:_qf;


    public function execute(_arg1:Text):void {
        var _local3:String;
        var _local4:String;
        var _local5:String;
        var _local2:Boolean = (((_arg1.numStars_ == -1)) || ((_arg1.objectId_ == -1)));
        if ((((((((_arg1.numStars_ < Parameters.data_.chatStarRequirement)) && (!((_arg1.name_ == this.model.player.name_))))) && (!(_local2)))) && (!(this._eo(_arg1.recipient_))))) {
            return;
        }
        ;
        if (((((((!(Parameters.data_.chatAll)) && (!((_arg1.name_ == this.model.player.name_))))) && (!(_local2)))) && (!(this._eo(_arg1.recipient_))))) {
            if ((((_arg1.recipient_ == Parameters._1Ke)) && (Parameters.data_.chatGuild))) {
            } else {
                if (!((!((_arg1.recipient_ == ""))) && (Parameters.data_.chatWhisper))) {
                    return;
                }
                ;
            }
            ;
        }
        ;
        if (this._B5(_arg1)) {
            _local3 = _arg1.cleanText_;
            _arg1.cleanText_ = this._rs(_arg1.cleanText_);
        } else {
            _local3 = _arg1.text_;
            _arg1.text_ = this._rs(_arg1.text_);
        }
        ;
        if (((_local2) && (this._0DA(_local3)))) {
            _local3 = this._1MB(_local3);
        }
        ;
        if (((!(_local2)) && (this._0Bo._Js(_local3)))) {
            if (_arg1.name_ == this.model.player.name_) {
                this._1u7.dispatch(_1ty.make(Parameters._0c, "This message has been flagged as spam."));
            }
            ;
            return;
        }
        ;
        if (_arg1.recipient_) {
            if (((!((_arg1.recipient_ == this.model.player.name_))) && (!(this._eo(_arg1.recipient_))))) {
                this._1Zq.push(_arg1.recipient_);
                this._1Zq._1N2();
            } else {
                if (_arg1.recipient_ == this.model.player.name_) {
                    this._1Zq.push(_arg1.name_);
                    this._1Zq._1N2();
                }
                ;
            }
            ;
        }
        ;
        if (((_local2) && ((_0sh._hB == true)))) {
            _0sh._hB = false;
            _local4 = _arg1.name_;
            _local5 = _arg1.text_;
            _arg1.name_ = "";
            _arg1.text_ = "Remote Textures used in this build";
            this._fg(_arg1);
            _arg1.name_ = _local4;
            _arg1.text_ = _local5;
        }
        ;
        if (_local2) {
            if ((((((((_arg1.text_ == "Please verify your email before chat")) && (!((this._1b == null))))) && ((this._1b._1P.map.name_ == "Nexus")))) && (!((this._1ia == null))))) {
                this._1ia.dispatch(new _1vd());
            } else {
                if (_arg1.name_ == "@ANNOUNCEMENT") {
                    if (((((!((this._1b == null))) && (!((this._1b._1P == null))))) && (!((this._1b._1P._FO == null))))) {
                        this._1b._1P._FO._t9(_arg1.text_);
                    } else {
                        _000._8N(_arg1.text_);
                    }
                    ;
                } else {
                    if ((((_arg1.name_ == "#{objects.ft_shopkeep}")) && (!(_0Ew._05m)))) {
                        return;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        if (_arg1.objectId_ >= 0) {
            this._1EB(_arg1, _local3);
        }
        ;
        if (((_local2) || (((this.account._vD()) && (((!(Parameters.data_["hidePlayerChat"])) || (this._eo(_arg1.name_)))))))) {
            this._fg(_arg1);
        }
        ;
    }

    public function _fg(_arg1:Text):void {
        var _local2:_1ty = new _1ty();
        _local2.name = _arg1.name_;
        _local2.objectId = _arg1.objectId_;
        _local2.numStars = _arg1.numStars_;
        _local2._1YE = _arg1.recipient_;
        _local2._17h = ((_arg1.recipient_) && (!(this._eo(_arg1.recipient_))));
        _local2._1et = (_arg1.recipient_ == this.model.player.name_);
        this._0wS(_arg1, _local2);
        this._1u7.dispatch(_local2);
    }

    public function _0wS(_arg1:Text, _arg2:_1ty):void {
        var lb:_5R;
        var text:Text = _arg1;
        var message:_1ty = _arg2;
        try {
            lb = _5R.fromJSON(text.text_);
            message.text = lb.key;
            message.tokens = lb.tokens;
        } catch (error:Error) {
            message.text = ((_B5(text)) ? text.cleanText_ : text.text_);
        }
        ;
    }

    private function _eo(_arg1:String):Boolean {
        return ((((_arg1.length > 0)) && ((((_arg1.charAt(0) == "#")) || ((_arg1.charAt(0) == "*"))))));
    }

    private function _rs(_arg1:String):String {
        var _local2:_0hs;
        if (_arg1.substr(0, 7) == "74026S9") {
            _local2 = _8w._1Sz().getInstance(_0hs);
            if (((_local2) && (_local2._Fg()))) {
                return (_arg1.replace("74026S9", (_local2._Fg().name + ", ")));
            }
            ;
        }
        ;
        return (_arg1);
    }

    private function _0DA(_arg1:String):Boolean {
        return ((((_arg1.charAt(0) == "{")) && ((_arg1.charAt((_arg1.length - 1)) == "}"))));
    }

    private function _1MB(_arg1:String):String {
        var _local2:_5R = _5R.fromJSON(_arg1);
        _local2._qO(this._0us);
        return (_local2.getString());
    }

    private function _1EB(_arg1:Text, _arg2:String):void {
        var _local4:_1v1;
        var _local5:_0dI;
        var _local3:GameObject = this.model._1fD(_arg1.objectId_);
        if (_local3 != null) {
            _local4 = this._17q(_arg1, _local3);
            _local5 = new _0dI(_local3, _arg2, _local4.back, 1, _local4._18X, 1, _local4.text, _arg1.bubbleTime_, false, true);
            this.addSpeechBalloon.dispatch(_local5);
        }
        ;
    }

    private function _17q(_arg1:Text, _arg2:GameObject):_1v1 {
        if (_arg2.props_.isEnemy_) {
            return (this._1Pp);
        }
        ;
        if (_arg1.recipient_ == Parameters._1Ke) {
            return (this._082);
        }
        ;
        if (_arg1.recipient_ != "") {
            return (this._1pz);
        }
        ;
        return (this._qM);
    }

    private function _B5(_arg1:Text):Boolean {
        return (((((Parameters.data_.filterLanguage) && ((_arg1.cleanText_.length > 0)))) && (!((_arg1.objectId_ == this.model.player.objectId_)))));
    }


}
}//package _Kt

