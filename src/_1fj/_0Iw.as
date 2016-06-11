// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fj._0Iw

package _1fj {
import _1PE.*;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.GUID;

import flash.external.ExternalInterface;
import flash.net.SharedObject;

public class _0Iw implements Account {

    public static const _12M:String = "rotmg";
    private static const _bd:String = "";
    private static const _0E:String = "rotmg";

    public function _0Iw() {
        try {
            this._0ta = ExternalInterface.call("rotmg.UrlLib.getParam", "entrypt");
        } catch (error:Error) {
        }
        ;
    }
    public var signedRequest:String;
    public var _19n:String;
    private var userId:String = "";
    private var password:String;
    private var _0ta:String = "";
    private var _Dg:Boolean;
    private var _fE:String;

    public function _02H():String {
        return (this.userId);
    }

    public function getUserId():String {
        return ((this.userId = ((this.userId) || (GUID.create()))));
    }

    public function _f5():String {
        return (((this.password) || ("")));
    }

    public function _1iT():Object {
        return ({
            guid: this.getUserId(),
            password: this._f5()
        });
    }

    public function _vD():Boolean {
        return (!((this._f5() == "")));
    }

    public function _05b(_arg1:String, _arg2:String):void {
        var _local3:SharedObject;
        this.userId = _arg1;
        this.password = _arg2;
        try {
            _local3 = SharedObject.getLocal("RotMG", "/");
            _local3.data["GUID"] = _arg1;
            _local3.data["Password"] = _arg2;
            _local3.flush();
        } catch (error:Error) {
        }
        ;
    }

    public function clear():void {
        this._05b(GUID.create(), null);
        Parameters._1o6 = true;
        Parameters.data_.charIdUseMap = {};
        Parameters.save();
    }

    public function _cq(_arg1:String, _arg2:int):void {
    }

    public function _1W6():String {
        return ("/credits");
    }

    public function _0uI():String {
        return (_bd);
    }

    public function _0iC():String {
        return (_12M);
    }

    public function _0X8():String {
        return (_0E);
    }

    public function _UV():String {
        return (((this._0ta) || ("")));
    }

    public function _1BG():String {
        return ("");
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
        return (this.signedRequest);
    }

    public function _0OM():String {
        return (this._19n);
    }


}
}//package _1fj

