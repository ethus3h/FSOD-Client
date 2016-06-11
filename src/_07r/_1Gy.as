// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07r._1Gy

package _07r {
import _0cA._0bz;

import _0y9._0n2;
import _0y9._1JZ;
import _0y9._JP;

import _19o._HX;

import _1PM.*;

import _4p._1ae;

import _6u._00t;
import _6u._1x1;

import _Cg._0N5;

import _UB._210;

import com.company.ui._V2;

public class _1Gy implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _0e8:_1ae;


    public function configure():void {
        this._sk.map(_00t)._0MH();
        this._Nh();
        this.mediatorMap.map(_0n2)._1kd(_0N5);
        this.mediatorMap.map(_V2)._1kd(_1JZ);
        this._sk.map(_JP);
    }

    private function _Nh():void {
        this._sk.map(_1x1)._131(_HX);
    }


}
}//package _07r

