// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._0Ps

package _07g {
import _0MO._0IV;

import _0cy._0Ij;

import _0hi._dK;

import _0t._Ko;

import _10a._FU;

import _1Fr._1FI;

import _1Ld._ni;

import _1OQ._yi;

import _1PE.Account;

import _1PM._1YQ;

import _1i0._Q;
import _1i0._nB;

import _3q._0av;

import _4p._1ae;

import _U1._0zY;

import __Nj._M4;

import _r7._17v;

import flash.events.Event;
import flash.external.ExternalInterface;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import flash.net.URLVariables;
import flash.net.navigateToURL;
import flash.system.Capabilities;

public class _0Ps extends _17v {

    private static var _1oL:Boolean = false;

    [Inject]
    public var view:TitleView;
    [Inject]
    public var account:Account;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var _09N:_nB;
    [Inject]
    public var _0S6:_0IV;
    [Inject]
    public var _0Ic:_dK;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var setup:_1ae;
    [Inject]
    public var _p7:_0Ij;
    [Inject]
    public var _1TT:_1YQ;


    override public function initialize():void {
        this.view._mh.add(this._0F5);
        this.view.initialize(this._1pj());
        this.view._1Z1.add(this._0p8);
        this.view._14Q.add(this._0O5);
        this.view._1ji.add(this._1lv);
        this.view._0oK.add(this._vT);
        this.view._1qZ.add(this._06n);
    }

    override public function destroy():void {
        this.view._1Z1.remove(this._0p8);
        this.view._14Q.remove(this._0O5);
        this.view._1ji.remove(this._1lv);
        this.view._0oK.remove(this._vT);
        this.view._1qZ.remove(this._06n);
        this.view._mh.remove(this._0F5);
        ((this.view._1a) && (this.view._1a.remove(this._04q)));
        ((this.view._0va) && (this.view._0va.remove(this._bh)));
    }

    private function _06n():void {
        var _local1:URLVariables = new URLVariables();
        var _local2:URLRequest = new URLRequest();
        var _local3:Boolean;
        if (((_yi._16X("SalesforceMobile")) && ((_yi._0Ft("SalesforceMobile") == 1)))) {
            _local3 = true;
        }
        ;
        var _local4:String = this._qP._0h8();
        if ((((_local4 == "unavailable")) || (!(_local3)))) {
            _local1.language = "en_US";
            _local1.game = "a0Za000000jIBFUEA4";
            _local1.issue = "Other_Game_Issues";
            _local2.url = "https://kabam.secure.force.com/PKB/KbContactUsForm";
            _local2.method = URLRequestMethod.GET;
            _local2.data = _local1;
            navigateToURL(_local2, "_blank");
        } else {
            if ((((Capabilities.playerType == "PlugIn")) || ((Capabilities.playerType == "ActiveX")))) {
                if (!_1oL) {
                    ExternalInterface.call("openSalesForceFirstTime", _local4);
                    _1oL = true;
                } else {
                    ExternalInterface.call("reopenSalesForce");
                }
                ;
            } else {
                _local1.data = _local4;
                _local2.url = "https://kabam.secure.force.com";
                _local2.method = URLRequestMethod.GET;
                _local2.data = _local1;
                navigateToURL(_local2, "_blank");
            }
            ;
        }
        ;
    }

    private function _0F5():void {
        ((this.view._1a) && (this.view._1a.add(this._04q)));
        ((this.view._0va) && (this.view._0va.add(this._bh)));
    }

    private function _Y():void {
        this._p2.dispatch(new _ni());
    }

    private function _1pj():_1FI {
        var _local1:_1FI = new _1FI();
        _local1._h4 = (Capabilities.playerType == "Desktop");
        _local1._1mi = this._qP._1mi();
        _local1._dr = this.setup._0aV();
        return (_local1);
    }

    private function _0p8():void {
        this._0S6.dispatch();
    }

    private function _0O5():void {
        this._p2.dispatch(new _0zY());
    }

    private function _1lv():void {
        this._0Ic.dispatch(false);
    }

    private function _vT():void {
        this._p2.dispatch(new _0av());
    }

    private function _04q():void {
        this._p2.dispatch(new _Ko());
    }

    private function _bh():void {
        dispatch(new Event("APP_CLOSE_EVENT"));
    }


}
}//package _07g

