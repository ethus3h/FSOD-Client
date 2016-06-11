// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0jj._1Td

package _0jj {
import _0Rk._0Vz;

import _0hi._DG;

import _10a._FU;

import _1PM.*;

public class _1Td implements _1e1 {

    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _ky:_DG;
    [Inject]
    public var _4k:_0Vz;


    public function approve():Boolean {
        var _local1 = (this._qP._1fB() >= this._4k.price);
        if (!_local1) {
            this._ky.dispatch();
        }
        ;
        return (_local1);
    }


}
}//package _0jj

