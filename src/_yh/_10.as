// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_yh._10

package _yh {
import _1PE.*;

import _SW._1z5;

import flash.external.ExternalInterface;

public class _10 implements Account {

    public static const _12M:String = "kabam.com";
    private static const _0lY:String = "kabam.com";

    public function _10() {
        var _local1:String;
        super();
        try {
            _local1 = ExternalInterface.call("rotmg.UrlLib.getParam", "entrypt");
            if (_local1 != null) {
                this._0ta = _local1;
            }
            ;
        } catch (error:Error) {
        }
        ;
    }
    public var signedRequest:String;
    public var userSession:Object;
    [Inject]
    public var _fR:_1z5;
    private var _0ta:String;
    private var userId:String = "";
    private var password:String = null;
    private var _Dg:Boolean;
    private var _fE:String;

    public function _05b(_arg1:String, _arg2:String):void {
        this.userId = _arg1;
        this.password = _arg2;
    }

    public function _1W6():String {
        return ("/credits");
    }

    public function _1iT():Object {
        return ({
            guid: this.getUserId(),
            secret: this._1BG(),
            signedRequest: this.signedRequest
        });
    }

    public function _UV():String {
        return (((this._0ta) || ("")));
    }

    public function _0uI():String {
        if ((((this.userSession == null)) || ((this.userSession["kabam_naid"] == null)))) {
            return ("");
        }
        ;
        return (this.userSession["kabam_naid"]);
    }

    public function _0iC():String {
        return (_12M);
    }

    public function _02H():String {
        if ((((((this.userSession == null)) || ((this.userSession["user"] == null)))) || ((this.userSession["user"]["email"] == null)))) {
            return ("");
        }
        ;
        var _local1:String = this.userSession["user"]["email"];
        var _local2:Array = _local1.split("@", 2);
        if (_local2.length != 2) {
            return ("");
        }
        ;
        return (_local2[0]);
    }

    public function getUserId():String {
        return (this.userId);
    }

    public function _0YZ():Boolean {
        return (false);
    }

    public function _vD():Boolean {
        return (true);
    }

    public function _0X8():String {
        return (_0lY);
    }

    public function _1BG():String {
        return (((this.password) || ("")));
    }

    public function _f5():String {
        return ("");
    }

    public function clear():void {
    }

    public function _cq(_arg1:String, _arg2:int):void {
    }

    public function verify(_arg1:Boolean):void {
        this._Dg = _arg1;
    }

    public function _ZL():Boolean {
        return (this._Dg);
    }

    public function _1uQ():String {
        return (((this._fE) || ("")));
    }

    public function _1EI(_arg1:String):void {
        this._fE = _arg1;
    }

    public function _1FA():String {
        return (this.userSession["oauth_token"]);
    }

    public function _0OM():String {
        return (this._0uI());
    }


}
}//package _yh

