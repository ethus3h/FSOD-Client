// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0vq._ub

package _0vq {
import _0cA._0bz;

import _0fB._21C;

import _1PM.*;

import _1bt._1LA;

import _207._071;
import _207._0sk;

import _UB._210;

import _nH._1Gh;
import _nH._1IA;
import _nH._4m;
import _nH._Fe;

public class _ub implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var commandCenter:_21C;


    public function configure():void {
        this.mediatorMap.map(_4m)._1kd(_Fe);
        this.mediatorMap.map(_1IA)._1kd(_1Gh);
        this._sk.map(_0sk)._0MH();
        this._sk.map(_071)._0MH();
    }


}
}//package _0vq

