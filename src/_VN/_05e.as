// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_VN._05e

package _VN {
import _1PM._1YQ;

import _1Sm._0N3;
import _1Sm._sy;

import _nl.*;

import flash.display.Loader;
import flash.display.Sprite;
import flash.events.Event;
import flash.net.URLRequest;

public class _05e extends Sprite implements _0Y9 {

    private const _0XK:_sy = new _sy();
    private const _1jR:_sy = new _sy(Boolean);
    private const _1BW:_sy = new _sy(uint, String, Boolean);

    [Inject]
    public var _1TT:_1YQ;
    private var loader:Loader;
    private var _C;
    private var _1At:String;
    private var _0fg:String;

    public function get _kI():_sy {
        return (this._0XK);
    }

    public function get _0cf():_sy {
        return (this._1jR);
    }

    public function get _1S4():_0N3 {
        return (this._1BW);
    }

    public function load(_arg1:String):void {
        this._1TT.info("LiveSteamApi load");
        addChild((this.loader = new Loader()));
        this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this._1vz);
        this.loader.load(new URLRequest(_arg1));
    }

    public function requestSessionTicket():void {
        this._1TT.debug("LiveSteamApi requestSessionTicket");
        this._C.requestSessionTicket(this._0rT);
    }

    public function _1Pn():Object {
        var _local1:Object = {};
        _local1.steamid = (this._1At = ((this._1At) || (this._C.getSteamID())));
        _local1.sessionticket = this._0fg;
        return (_local1);
    }

    public function _0nH():String {
        return (this._C.getSteamID());
    }

    public function _182(_arg1:String, _arg2:int):void {
        this._C.setStatFromInt(_arg1, _arg2);
    }

    public function getPersonaName():String {
        return (this._C.getPersonaName());
    }

    private function _jB(_arg1):void {
        this._1TT.debug("LiveSteamApi onSteamMicroTxnAuthEvent: {0}", [this._0fg]);
        var _local2:uint = uint(_arg1.appID);
        var _local3:String = String(_arg1.orderID);
        var _local4:Boolean = Boolean(_arg1.isAuthorized);
        this._1BW.dispatch(_local2, _local3, _local4);
    }

    private function _0rT(_arg1:String):void {
        var _local2 = !((_arg1 == null));
        ((_local2) && ((this._0fg = _arg1)));
        this._1TT.debug("LiveSteamApi sessionTicket: {0}", [this._0fg]);
        this._0cf.dispatch(_local2);
    }

    private function _1vz(_arg1:Event):void {
        this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this._1vz);
        this._C = _arg1.target.content;
        this._C.addEventListener("STEAM_MICRO_TXN_AUTH", this._jB);
        this._kI.dispatch();
    }


}
}//package _VN

