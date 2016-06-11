// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0SK._Po

package _0SK {
import _1PM._1YQ;

import _1Ry._0DR;

import _1Sm._sy;

import _1TZ._eB;

import flash.display.Loader;
import flash.display.Sprite;
import flash.events.Event;
import flash.net.URLRequest;
import flash.system.Security;

public class _Po extends Sprite implements _Qo {

    public function _Po() {
        this._0XK = new _sy();
        this._0NC = new _sy(Object);
    }
    [Inject]
    public var local:_eB;
    [Inject]
    public var _0Jv:_0DR;
    [Inject]
    public var _1TT:_1YQ;
    private var _0XK:_sy;
    private var _0NC:_sy;
    private var loader:Loader;
    private var _C;

    public function get _kI():_sy {
        return (this._0XK);
    }

    public function get _1ba():_sy {
        return (this._0NC);
    }

    public function load(_arg1:String):void {
        Security.allowDomain(_arg1);
        this._1TT.info("kongregate api loading");
        addChild((this.loader = new Loader()));
        this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this._1vz);
        this.loader.load(new URLRequest(_arg1));
    }

    public function _O2():void {
        this._1TT.info("showRegistrationBox request sent to kongregate");
        this._C.services.showRegistrationBox();
    }

    public function isGuest():Boolean {
        return (this._C.services.isGuest());
    }

    public function _q2():Object {
        var _local1:Object = {};
        _local1.userId = this._C.services.getUserId();
        _local1.username = this._C.services.getUsername();
        _local1.gameAuthToken = this._C.services.getGameAuthToken();
        return (_local1);
    }

    public function _182(_arg1:String, _arg2:int):void {
        this._C.stats.submit(_arg1, _arg2);
    }

    public function _02H():String {
        return (this._C.services.getUsername());
    }

    public function getUserId():String {
        return (this._C.services.getUserId());
    }

    public function purchaseItems(_arg1:Object):void {
        this._C.mtx.purchaseItems([_arg1], this._fd);
    }

    private function _yd():void {
        if (this._C.services.isGuest()) {
            this._1TT.info("kongregate guest detected - listening for external login");
            this._C.services.addEventListener("login", this._NK);
        }
        ;
    }

    private function _fd(_arg1:Object):void {
        this._0NC.dispatch(_arg1);
    }

    private function _1vz(_arg1:Event):void {
        this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this._1vz);
        this._C = _arg1.target.content;
        this._C.services.connect();
        this._yd();
        this._kI.dispatch();
        this._1TT.info("kongregate api loaded");
    }

    private function _NK(_arg1:Event):void {
        this._1TT.info("external login from kongregate detected");
        this._0Jv.dispatch();
    }


}
}//package _0SK

