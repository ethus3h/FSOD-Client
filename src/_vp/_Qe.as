// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vp._Qe

package _vp {
import _04g._GE;

import _1L3._0lX;
import _1L3._0qB;
import _1L3._1Nl;
import _1L3._OE;

import _1PE.Account;

import _1TC._01A;
import _1TC._08E;

import _1cr._0VP;

import _Qu._en;

import __Nj._M4;

import _r7.Command;

public class _Qe extends Command {

    private static const _0VW:String = "In order to upgrade your yard you must be a registered user.";

    [Inject]
    public var _1HM:_0qB;
    [Inject]
    public var _1Zi:_0VP;
    [Inject]
    public var server:_en;
    [Inject]
    public var account:Account;
    [Inject]
    public var _nU:_M4;


    override public function execute():void {
        var _local1:_01A;
        if ((this._1HM is _OE)) {
            if (!this.account._vD()) {
                this._1rZ(_0VW);
            }
            ;
            _local1 = (this._1Zi._1SN(_08E._1AX) as _01A);
            _local1._bK = 1;
            _local1.objectId = _OE(this._1HM)._Nr;
            _local1._0Pd = _OE(this._1HM)._0Pd;
        }
        ;
        if ((this._1HM is _0lX)) {
            _local1 = (this._1Zi._1SN(_08E._1AX) as _01A);
            _local1._bK = 2;
            _local1._04U = _0lX(this._1HM)._1mX;
            _local1._0hR = _0lX(this._1HM)._0hR;
            _local1._0Pd = _0lX(this._1HM)._0Pd;
        }
        ;
        if ((this._1HM is _1Nl)) {
            _local1 = (this._1Zi._1SN(_08E._1AX) as _01A);
            _local1._bK = 3;
            _local1._04U = _1Nl(this._1HM)._0Su;
            _local1._CA = _1Nl(this._1HM)._0X4;
            _local1._0Pd = _1Nl(this._1HM)._0Pd;
        }
        ;
        if (_local1) {
            this.server.sendMessage(_local1);
        }
        ;
    }

    private function _1rZ(_arg1:String):void {
        this._nU.dispatch(new _GE(_arg1));
    }


}
}//package _vp

