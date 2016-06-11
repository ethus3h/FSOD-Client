// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cU._RD

package _0cU {
import _0cA._0bz;

import _0fO._1J;
import _0fO._oh;

import _UB._210;

import _pm._vP;

public class _RD {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;


    [PostConstruct]
    public function setup():void {
        this._sk.map(_vP)._0MH();
        this.mediatorMap.map(_oh)._1kd(_1J);
    }


}
}//package _0cU

