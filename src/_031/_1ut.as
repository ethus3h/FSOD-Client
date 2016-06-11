// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_031._1ut

package _031 {
import _03u._0To;
import _03u._1hp;
import _03u._BW;
import _03u._Fk;

import _0od.WebLoginDialog;

import _1i0._1aE;

import _Ny._1bJ;

import __Nj._M4;

public class _1ut {

    [Inject]
    public var email:String;
    [Inject]
    public var _2:_1bJ;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _0kY:_1aE;
    [Inject]
    public var _nU:_M4;


    public function execute():void {
        var _local1:_0To = new _0To();
        _local1.add(new _1hp(this._nU, new WebLoginDialog()));
        var _local2:_0To = new _0To();
        _local2.add(new _1hp(this._0kY, this._2));
        var _local3:_Fk = new _Fk(this._2, _local1, _local2);
        this._1ZX.add(_local3);
        _local3.start();
    }


}
}//package _031

