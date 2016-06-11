// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math._4g

package com.hurlant.math {
use namespace bi_internal;

class _4g implements IReduction {

    public function _4g(_arg1:_1wH) {
        this._0dq = new _1wH();
        this._212 = new _1wH();
        _1wH._t3._0d3((2 * _arg1.t), this._0dq);
        this._0RX = this._0dq._0ho(_arg1);
        this.m = _arg1;
    }
    private var m:_1wH;
    private var _0dq:_1wH;
    private var _212:_1wH;
    private var _0RX:_1wH;

    public function _ai(_arg1:_1wH):_1wH {
        return (_arg1);
    }

    public function _1wW(_arg1:_1wH, _arg2:_1wH, _arg3:_1wH):void {
        _arg1._0q(_arg2, _arg3);
        this._14f(_arg3);
    }

    public function _1rG(_arg1:_1wH, _arg2:_1wH):void {
        _arg1._aS(_arg2);
        this._14f(_arg2);
    }

    public function _1Sn(_arg1:_1wH):_1wH {
        var _local2:_1wH;
        if ((((_arg1.s < 0)) || ((_arg1.t > (2 * this.m.t))))) {
            return (_arg1._Qi(this.m));
        }
        ;
        if (_arg1._0JO(this.m) < 0) {
            return (_arg1);
        }
        ;
        _local2 = new _1wH();
        _arg1.copyTo(_local2);
        this._14f(_local2);
        return (_local2);
    }

    public function _14f(_arg1:_1wH):void {
        var _local2:_1wH = (_arg1 as _1wH);
        _local2._1LR((this.m.t - 1), this._0dq);
        if (_local2.t > (this.m.t + 1)) {
            _local2.t = (this.m.t + 1);
            _local2.clamp();
        }
        ;
        this._0RX._C2(this._0dq, (this.m.t + 1), this._212);
        this.m._1YK(this._212, (this.m.t + 1), this._0dq);
        while (_local2._0JO(this._0dq) < 0) {
            _local2._j6(1, (this.m.t + 1));
        }
        ;
        _local2._0aF(this._0dq, _local2);
        while (_local2._0JO(this.m) >= 0) {
            _local2._0aF(this.m, _local2);
        }
        ;
    }


}
}//package com.hurlant.math

