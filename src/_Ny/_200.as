// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Ny._200

package _Ny {
import _03u._0MI;

import _04j._1g7;

import _0CT._8w;

import _0hi._1Uy;

import _0od.WebLoginDialog;
import _0od._oL;

import _0tf._0yo;

import _10a._FU;

import _1PE.Account;

import _1PM._1YQ;

import _1i0._0kU;

import _6u._TG;

import __Nj._0ay;
import __Nj._M4;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.util._0CM;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class _200 extends _0MI {

    private static const _1yD:int = 1000;
    private static const _G3:int = 7;

    [Inject]
    public var account:Account;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var model:_FU;
    [Inject]
    public var _0wG:_0kU;
    [Inject]
    public var _1ev:_1Uy;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var closeDialogs:_0ay;
    private var _A8:Object;
    private var _0Yz:Timer;
    private var _TD:int = 0;
    private var _03b:Boolean = false;


    override protected function startTask():void {
        this._1TT.info("GetUserDataTask start");
        this._A8 = this._1vf();
        this.sendRequest();
        Parameters._1o6 = false;
    }

    public function _1vf():Object {
        var _local1:Object = {};
        _local1.game_net_user_id = this.account._0uI();
        _local1.game_net = this.account._0iC();
        _local1.play_platform = this.account._0X8();
        _local1.do_login = Parameters._1o6;
        _0CM._0lh(_local1, this.account._1iT());
        return (_local1);
    }

    private function sendRequest():void {
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/char/list", this._A8);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._Nw(_arg2);
        } else {
            this._0VA(_arg2);
        }
        ;
    }

    private function _Nw(_arg1:String):void {
        var _local3:Number;
        var _local4:_oL;
        var _local2:XML = new XML(_arg1);
        if (_local2.hasOwnProperty("MigrateStatus")) {
            _local3 = _local2.MigrateStatus;
            if (_local3 == 5) {
                this.sendRequest();
            }
            ;
            _local4 = new _oL(this.account, _local3);
            this._03b = true;
            _local4._9S.addOnce(this.sendRequest);
            _local4.cancel.addOnce(this._0SN);
            this._nU.dispatch(_local4);
        } else {
            this._1ev.dispatch(XML(_arg1));
            _Ug(true);
        }
        ;
        if (this._0Yz != null) {
            this._1MI();
        }
        ;
    }

    private function _0VA(_arg1:String):void {
        var _local2:WebLoginDialog;
        this._0wG.dispatch("error.loadError");
        if (_arg1 == "Account credentials not valid") {
            if (this._03b) {
                _local2 = new WebLoginDialog();
                _local2._044(_TG._1HV);
                _local2._zr(this.account.getUserId());
                _8w._1Sz().getInstance(_M4).dispatch(_local2);
            }
            ;
            this._0SN();
        } else {
            if (_arg1 == "Account is under maintenance") {
                this._0wG.dispatch("This account has been banned");
                new _1g7(5, this._0SN);
            } else {
                this._0qC();
            }
            ;
        }
        ;
    }

    private function _0SN():void {
        this._1TT.info("GetUserDataTask invalid credentials");
        this.account.clear();
        this.client.complete.addOnce(this.onComplete);
        this._A8 = this._1vf();
        this.client.sendRequest("/char/list", this._A8);
    }

    private function _0qC():void {
        this._1TT.info("GetUserDataTask error - retrying");
        this._0Yz = new Timer(_1yD, 1);
        this._0Yz.addEventListener(TimerEvent.TIMER_COMPLETE, this._0Ma);
        this._0Yz.start();
    }

    private function _1MI():void {
        this._0Yz.stop();
        this._0Yz.removeEventListener(TimerEvent.TIMER_COMPLETE, this._0Ma);
        this._0Yz = null;
    }

    private function _0Ma(_arg1:TimerEvent):void {
        this._1MI();
        if (this._TD < _G3) {
            this.sendRequest();
            this._TD++;
        } else {
            this._0SN();
            this._0wG.dispatch("LoginError.tooManyFails");
        }
        ;
    }


}
}//package _Ny

