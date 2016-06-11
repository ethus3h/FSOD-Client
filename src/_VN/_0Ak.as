// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_VN._0Ak

package _VN {
import _03u._0MI;

import _0cy._0Ij;

import _1PM._1YQ;

import __Hk._BR;

import __Nj._0ay;
import __Nj._M4;

import _nl._0Y9;

import flash.display.DisplayObject;
import flash.display.LoaderInfo;

public class _0Ak extends _0MI {

    [Inject]
    public var info:LoaderInfo;
    [Inject]
    public var _C:_0Y9;
    [Inject]
    public var _p7:_0Ij;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _1TT:_1YQ;
    private var _16Y:_BR;


    override protected function startTask():void {
        this._1TT.debug("startTask");
        this._p7._C.addChild((this._C as DisplayObject));
        this._C._kI.addOnce(this.requestSessionTicket);
        this._C.load(this.info.parameters.steam_api_path);
    }

    private function requestSessionTicket():void {
        this._1TT.debug("requestSessionTicket");
        this._C._0cf.addOnce(this._1Yf);
        this._C.requestSessionTicket();
    }

    private function _1Yf(_arg1:Boolean):void {
        this._1TT.debug("session received - isValid? {0}", [_arg1]);
        if (_arg1) {
            _Ug(true);
        } else {
            this._xA();
        }
        ;
    }

    private function _xA():void {
        this._16Y = ((this._16Y) || (new _BR()));
        this._16Y.ok.addOnce(this._09Z);
        this._nU.dispatch(this._16Y);
    }

    private function _09Z():void {
        this._00G.dispatch();
        this.requestSessionTicket();
    }


}
}//package _VN

