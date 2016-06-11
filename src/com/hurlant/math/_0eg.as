// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math._0eg

package com.hurlant.math {
use namespace bi_internal;

class _0eg implements IReduction {

    public function _0eg(_arg1:_1wH) {
        this.m = _arg1;
        this._0Ii = _arg1._0Zr();
        this._Lu = (this._0Ii & 32767);
        this._0E3 = (this._0Ii >> 15);
        this._c8 = ((1 << (_1wH._0pd - 15)) - 1);
        this._XG = (2 * _arg1.t);
    }
    private var m:_1wH;
    private var _0Ii:int;
    private var _Lu:int;
    private var _0E3:int;
    private var _c8:int;
    private var _XG:int;

    public function _1Sn(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        _arg1.abs()._0d3(this.m.t, _local2);
        _local2._1KB(this.m, null, _local2);
        if ((((_arg1.s < 0)) && ((_local2._0JO(_1wH._0Y6) > 0)))) {
            this.m._0aF(_local2, _local2);
        }
        ;
        return (_local2);
    }

    public function _ai(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        _arg1.copyTo(_local2);
        this._14f(_local2);
        return (_local2);
    }

    public function _14f(_arg1:_1wH):void {
        var _local3:int;
        var _local4:int;
        while (_arg1.t <= this._XG) {
            var _local5 = _arg1.t++;
            _arg1.a[_local5] = 0;
        }
        ;
        var _local2:int;
        while (_local2 < this.m.t) {
            _local3 = (_arg1.a[_local2] & 32767);
            _local4 = (((_local3 * this._Lu) + ((((_local3 * this._0E3) + ((_arg1.a[_local2] >> 15) * this._Lu)) & this._c8) << 15)) & _1wH._0Sy);
            _local3 = (_local2 + this.m.t);
            _arg1.a[_local3] = (_arg1.a[_local3] + this.m.am(0, _local4, _arg1, _local2, 0, this.m.t));
            while (_arg1.a[_local3] >= _1wH._Kq) {
                _arg1.a[_local3] = (_arg1.a[_local3] - _1wH._Kq);
                _local5 = _arg1.a;
                var _local6 = ++_local3;
                var _local7 = (_local5[_local6] + 1);
                _local5[_local6] = _local7;
            }
            ;
            _local2++;
        }
        ;
        _arg1.clamp();
        _arg1._1LR(this.m.t, _arg1);
        if (_arg1._0JO(this.m) >= 0) {
            _arg1._0aF(this.m, _arg1);
        }
        ;
    }

    public function _1rG(_arg1:_1wH, _arg2:_1wH):void {
        _arg1._aS(_arg2);
        this._14f(_arg2);
    }

    public function _1wW(_arg1:_1wH, _arg2:_1wH, _arg3:_1wH):void {
        _arg1._0q(_arg2, _arg3);
        this._14f(_arg3);
    }


}
}//package com.hurlant.math

