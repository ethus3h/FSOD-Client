// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_tb._0HS

package _tb {
import _03u._1hp;
import _03u._2w;
import _03u._BW;
import _03u._Fk;
import _03u._wP;

import _085._LQ;

import _0SK.KongregateAccountDetailDialog;

import _0hi._1IP;

import _1i0._1aE;

import _Ny._0Ut;

import __Nj._M4;

public class _0HS {

    [Inject]
    public var data:_LQ;
    [Inject]
    public var _2:_0Ut;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var update:_1IP;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _0kY:_1aE;


    public function execute():void {
        var _local1:_Fk = new _Fk(this._2, this._0Rc(), this._0Id());
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _0Rc():_2w {
        var _local1:_2w = new _2w();
        _local1.add(new _1hp(this.update));
        _local1.add(new _1hp(this._nU, new KongregateAccountDetailDialog()));
        return (_local1);
    }

    private function _0Id():_wP {
        return (new _1hp(this._0kY, this._2));
    }


}
}//package _tb

