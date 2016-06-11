// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_YV._bD

package _YV {
import _10a._FU;

import _1PE.Account;

import _1PM._1YQ;

import _1T3._hh;
import _1T3._xx;

import _2B._Pk;
import _2B._vA;

import _4p._1ae;

import _Vb.ErrorDialog;

import __Nj._M4;

import flash.external.ExternalInterface;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import flash.net.URLVariables;
import flash.net.navigateToURL;

public class _bD {

    private const _dZ:String = "You cannot purchase gold on the testing server";
    private const _01a:String = "You must be registered to buy gold";

    [Inject]
    public var _1Al:_xx;
    [Inject]
    public var account:Account;
    [Inject]
    public var _1xl:_hh;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var _1Sd:_vA;
    [Inject]
    public var _1ia:_M4;
    [Inject]
    public var _0e8:_1ae;
    [Inject]
    public var _qP:_FU;


    public function execute():void {
        if (((this._13m()) && (this.account._vD()))) {
            this._wk();
        } else {
            this._OY();
        }
        ;
    }

    private function _OY():void {
        if (!this._13m()) {
            this._1ia.dispatch(new ErrorDialog(this._dZ));
        } else {
            if (!this.account._vD()) {
                this._1ia.dispatch(new ErrorDialog(this._01a));
            }
            ;
        }
        ;
    }

    private function _wk():void {
        try {
            this._0er();
        } catch (e:Error) {
            _0Yi();
        }
        ;
    }

    private function _0Yi():void {
        var _local1:String = this._0e8._kx(true);
        var _local2:URLVariables = new URLVariables();
        var _local3:URLRequest = new URLRequest();
        _local2.naid = this.account._0OM();
        _local2.signedRequest = this.account._1FA();
        _local3.url = (_local1 + "/credits/kabamadd");
        _local3.method = URLRequestMethod.POST;
        _local3.data = _local2;
        navigateToURL(_local3, "_blank");
        this._1TT.debug("Opening window from standalone player");
    }

    private function _0er():void {
        this._0Rh();
        this._1TT.debug("Attempting External Payments");
        ExternalInterface.call("rotmg.KabamPayment.displayPaymentWall");
    }

    private function _0Rh():void {
        if (!this._1Al._0C) {
            ExternalInterface.call(this._1xl._0x8(), this.account._0OM(), this.account._1FA());
            this._1Al._0C = true;
        }
        ;
    }

    private function _13m():Boolean {
        return (((!((this._1Sd._1NV() == _Pk._1Nh))) || (this._qP._1mi())));
    }


}
}//package _YV

