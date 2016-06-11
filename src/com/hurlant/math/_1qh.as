// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math._1qh

package com.hurlant.math {
use namespace bi_internal;

class _1qh implements IReduction {

    public function _1qh(_arg1:_1wH) {
        this.m = _arg1;
    }
    private var m:_1wH;

    public function _1Sn(_arg1:_1wH):_1wH {
        if ((((_arg1.s < 0)) || ((_arg1._0JO(this.m) >= 0)))) {
            return (_arg1._Qi(this.m));
        }
        ;
        return (_arg1);
    }

    public function _ai(_arg1:_1wH):_1wH {
        return (_arg1);
    }

    public function _14f(_arg1:_1wH):void {
        _arg1._1KB(this.m, null, _arg1);
    }

    public function _1wW(_arg1:_1wH, _arg2:_1wH, _arg3:_1wH):void {
        _arg1._0q(_arg2, _arg3);
        this._14f(_arg3);
    }

    public function _1rG(_arg1:_1wH, _arg2:_1wH):void {
        _arg1._aS(_arg2);
        this._14f(_arg2);
    }


}
}//package com.hurlant.math

