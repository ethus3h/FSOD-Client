// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1iD._Gg

package _1iD {
import _0cA._0bz;

import _1PM.*;

import _1RN._BC;

import _Tw._10n;
import _Tw._1Xf;

import _UB._210;

import __Nj._0aS;
import __Nj._0ay;
import __Nj._0uG;
import __Nj._1G1;
import __Nj._1HT;
import __Nj._M4;

import _pz._1Oo;

public class _Gg implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var register:_BC;


    public function configure():void {
        var _local1:_1Oo;
        this._sk.map(_1HT)._0MH();
        this._sk.map(_M4)._0MH();
        this._sk.map(_0uG)._0MH();
        this._sk.map(_0ay)._0MH();
        this._sk.map(_0aS)._0MH();
        this._sk.map(_1G1)._0MH();
        this.mediatorMap.map(_10n)._1kd(_1Xf);
        _local1 = new _1Oo();
        _local1.name = "closeDialogs";
        _local1.description = "closes all open dialogs";
        this.register.dispatch(_local1, this._sk.getInstance(_0ay));
    }


}
}//package _1iD

