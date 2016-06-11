// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0GE._Gs

package _0GE {
import _0cA._0bz;

import _1PM.*;

import _1cr._0VP;
import _1cr._Fv;

import _Qu._0UB;
import _Qu._en;

import flash.net.Socket;

public class _Gs implements _YL {

    [Inject]
    public var _sk:_0bz;
    private var _1Xj:_0UB;


    public function configure():void {
        this._1Xj = new _0UB().setInjector(this._sk);
        this._sk.map(Socket);
        this._sk.map(_Fv)._nR(this._1Xj);
        this._sk.map(_0VP)._nR(this._1Xj);
        this._sk.map(_en)._0MH();
    }


}
}//package _0GE

