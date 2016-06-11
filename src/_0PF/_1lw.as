// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._1lw

package _0PF {
import _1L3._1s6;
import _1L3._IG;
import _1L3._OE;
import _1L3._tM;

import _1PE.Account;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

import _vp._0bO;

public class _1lw extends _17v {

    [Inject]
    public var view:YardUpgraderView;
    [Inject]
    public var _M9:_IG;
    [Inject]
    public var _wt:_0bO;
    [Inject]
    public var account:Account;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;


    override public function initialize():void {
        var _local1:_1s6 = new _1s6();
        var _local2:int = this._M9._0jt();
        var _local3:int = (((_local2 < _tM._1dK._25)) ? _tM._1rX((_local2 + 1))._25 : _tM._1dK._25);
        _local1._lK = _tM._1rX(_local2).value;
        _local1._20Q = _tM._1rX(_local3).value;
        _local1._06g = this._M9._1i7();
        _local1._1X7 = this._M9._14z();
        this.view.init(_local1);
        this.view._1VT.add(this._1Fy);
        this.view._1tX.add(this._1i9);
    }

    private function _1i9(_arg1:int):void {
        this._1nj(0);
    }

    private function _1Fy(_arg1:int):void {
        this._1nj(1);
    }

    private function _1nj(_arg1:uint):void {
        var _local2:int = this._M9._Er();
        var _local3:_OE = new _OE(_local2, _arg1);
        this._00G.dispatch();
        this._wt.dispatch(_local3);
    }


}
}//package _0PF

