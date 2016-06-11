// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07n._1K1

package _07n {
import _09v._0xs;
import _09v._eV;

import _0am._0v3;
import _0am._Nc;
import _0am._fs;
import _0am._w7;

import _0cA._0bz;

import _1PM.*;

import _UB._210;

public class _1K1 implements _YL {

    [Inject]
    public var context:_Ld;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;


    public function configure():void {
        this._sk.map(_fs)._0MH();
        this._sk.map(_0v3)._0MH();
        this._sk.map(_Nc)._0MH();
        this._sk.map(_w7)._0MH();
        this.mediatorMap.map(_0xs)._1kd(_eV);
    }


}
}//package _07n

