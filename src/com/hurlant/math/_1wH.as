// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.math._1wH

package com.hurlant.math {
import com.hurlant.crypto.prng.Random;
import com.hurlant.util.Hex;
import com.hurlant.util.Memory;

import flash.utils.ByteArray;

public class _1wH {

    public static const _0pd:int = 30;
    public static const _Kq:int = (1 << _0pd);
    public static const _0Sy:int = (_Kq - 1);
    public static const _1fJ:int = 52;
    public static const _Ib:Number = Math.pow(2, _1fJ);
    public static const F1:int = (_1fJ - _0pd);//22
    public static const F2:int = ((2 * _0pd) - _1fJ);//8
    public static const _0Y6:_1wH = _0j(0);
    public static const _t3:_1wH = _0j(1);
    public static const _1i8:Array = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 0x0101, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509];
    public static const _Jn:int = ((1 << 26) / _1i8[(_1i8.length - 1)]);

    use namespace bi_internal;

    public static function _0j(_arg1:int):_1wH {
        var _local2:_1wH = new _1wH();
        _local2._4n(_arg1);
        return (_local2);
    }

    public function _1wH(_arg1 = null, _arg2:int = 0, _arg3:Boolean = false) {
        var _local4:ByteArray;
        var _local5:int;
        super();
        this.a = new Array();
        if ((_arg1 is String)) {
            if (((_arg2) && (!((_arg2 == 16))))) {
                throw (new Error("BigInteger construction with radix!=16 is not supported."));
            }
            ;
            _arg1 = Hex.toArray(_arg1);
            _arg2 = 0;
        }
        ;
        if ((_arg1 is ByteArray)) {
            _local4 = (_arg1 as ByteArray);
            _local5 = ((_arg2) || ((_local4.length - _local4.position)));
            this.fromArray(_local4, _local5, _arg3);
        }
        ;
    }
    public var t:int;

    public function dispose():void {
        var _local1:Random = new Random();
        var _local2:uint;
        while (_local2 < this.a.length) {
            this.a[_local2] = _local1.nextByte();
            delete this.a[_local2];
            _local2++;
        }
        ;
        this.a = null;
        this.t = 0;
        this.s = 0;
        Memory.gc();
    }

    public function toString(_arg1:Number = 16):String {
        var _local2:int;
        if (this.s < 0) {
            return (("-" + this._140().toString(_arg1)));
        }
        ;
        switch (_arg1) {
            case 2:
                _local2 = 1;
                break;
            case 4:
                _local2 = 2;
                break;
            case 8:
                _local2 = 3;
                break;
            case 16:
                _local2 = 4;
                break;
            case 32:
                _local2 = 5;
                break;
        }
        ;
        var _local3:int = ((1 << _local2) - 1);
        var _local4:int;
        var _local5:Boolean;
        var _local6 = "";
        var _local7:int = this.t;
        var _local8:int = (_0pd - ((_local7 * _0pd) % _local2));
        var _temp1 = _local7;
        _local7 = (_local7 - 1);
        if (_temp1 > 0) {
            if ((((_local8 < _0pd)) && (((_local4 = (this.a[_local7] >> _local8)) > 0)))) {
                _local5 = true;
                _local6 = _local4.toString(36);
            }
            ;
            while (_local7 >= 0) {
                if (_local8 < _local2) {
                    _local4 = ((this.a[_local7] & ((1 << _local8) - 1)) << (_local2 - _local8));
                    var _temp2 = _local4;
                    _local8 = (_local8 + (_0pd - _local2));
                    _local4 = (_temp2 | (this.a[--_local7] >> _local8));
                } else {
                    _local8 = (_local8 - _local2);
                    _local4 = ((this.a[_local7] >> _local8) & _local3);
                    if (_local8 <= 0) {
                        _local8 = (_local8 + _0pd);
                        _local7--;
                    }
                    ;
                }
                ;
                if (_local4 > 0) {
                    _local5 = true;
                }
                ;
                if (_local5) {
                    _local6 = (_local6 + _local4.toString(36));
                }
                ;
            }
            ;
        }
        ;
        return (((_local5) ? _local6 : "0"));
    }

    public function toArray(_arg1:ByteArray):uint {
        var _local2:int = 8;
        var _local3:int = ((1 << 8) - 1);
        var _local4:int;
        var _local5:int = this.t;
        var _local6:int = (_0pd - ((_local5 * _0pd) % _local2));
        var _local7:Boolean;
        var _local8:int;
        var _temp1 = _local5;
        _local5 = (_local5 - 1);
        if (_temp1 > 0) {
            if ((((_local6 < _0pd)) && (((_local4 = (this.a[_local5] >> _local6)) > 0)))) {
                _local7 = true;
                _arg1.writeByte(_local4);
                _local8++;
            }
            ;
            while (_local5 >= 0) {
                if (_local6 < _local2) {
                    _local4 = ((this.a[_local5] & ((1 << _local6) - 1)) << (_local2 - _local6));
                    var _temp2 = _local4;
                    _local6 = (_local6 + (_0pd - _local2));
                    _local4 = (_temp2 | (this.a[--_local5] >> _local6));
                } else {
                    _local6 = (_local6 - _local2);
                    _local4 = ((this.a[_local5] >> _local6) & _local3);
                    if (_local6 <= 0) {
                        _local6 = (_local6 + _0pd);
                        _local5--;
                    }
                    ;
                }
                ;
                if (_local4 > 0) {
                    _local7 = true;
                }
                ;
                if (_local7) {
                    _arg1.writeByte(_local4);
                    _local8++;
                }
                ;
            }
            ;
        }
        ;
        return (_local8);
    }

    public function valueOf():Number {
        if (this.s == -1) {
            return (-(this._140().valueOf()));
        }
        ;
        var _local1:Number = 1;
        var _local2:Number = 0;
        var _local3:uint;
        while (_local3 < this.t) {
            _local2 = (_local2 + (this.a[_local3] * _local1));
            _local1 = (_local1 * _Kq);
            _local3++;
        }
        ;
        return (_local2);
    }

    public function _140():_1wH {
        var _local1:_1wH = this._id();
        _0Y6._0aF(this, _local1);
        return (_local1);
    }

    public function abs():_1wH {
        return ((((this.s) < 0) ? this._140() : this));
    }

    public function _0JO(_arg1:_1wH):int {
        var _local2:int = (this.s - _arg1.s);
        if (_local2 != 0) {
            return (_local2);
        }
        ;
        var _local3:int = this.t;
        _local2 = (_local3 - _arg1.t);
        if (_local2 != 0) {
            return (_local2);
        }
        ;
        while (--_local3 >= 0) {
            _local2 = (this.a[_local3] - _arg1.a[_local3]);
            if (_local2 != 0) {
                return (_local2);
            }
            ;
        }
        ;
        return (0);
    }

    public function _1Q():int {
        if (this.t <= 0) {
            return (0);
        }
        ;
        return (((_0pd * (this.t - 1)) + this._mo((this.a[(this.t - 1)] ^ (this.s & _0Sy)))));
    }

    public function _Qi(_arg1:_1wH):_1wH {
        var _local2:_1wH = this._id();
        this.abs()._1KB(_arg1, null, _local2);
        if ((((this.s < 0)) && ((_local2._0JO(_0Y6) > 0)))) {
            _arg1._0aF(_local2, _local2);
        }
        ;
        return (_local2);
    }

    public function _yw(_arg1:int, _arg2:_1wH):_1wH {
        var _local3:IReduction;
        if ((((_arg1 < 0x0100)) || (_arg2._1bm()))) {
            _local3 = new _1qh(_arg2);
        } else {
            _local3 = new _0eg(_arg2);
        }
        ;
        return (this.exp(_arg1, _local3));
    }

    public function clone():_1wH {
        var _local1:_1wH = new _1wH();
        this.copyTo(_local1);
        return (_local1);
    }

    public function _pf():int {
        if (this.s < 0) {
            if (this.t == 1) {
                return ((this.a[0] - _Kq));
            }
            ;
            if (this.t == 0) {
                return (-1);
            }
            ;
        } else {
            if (this.t == 1) {
                return (this.a[0]);
            }
            ;
            if (this.t == 0) {
                return (0);
            }
            ;
        }
        ;
        return ((((this.a[1] & ((1 << (32 - _0pd)) - 1)) << _0pd) | this.a[0]));
    }

    public function _0RF():int {
        return ((((this.t) == 0) ? this.s : ((this.a[0] << 24) >> 24)));
    }

    public function _if():int {
        return ((((this.t) == 0) ? this.s : ((this.a[0] << 16) >> 16)));
    }

    public function _xa():int {
        if (this.s < 0) {
            return (-1);
        }
        ;
        if ((((this.t <= 0)) || ((((this.t == 1)) && ((this.a[0] <= 0)))))) {
            return (0);
        }
        ;
        return (1);
    }

    public function _0B8():ByteArray {
        var _local4:int;
        var _local1:int = this.t;
        var _local2:ByteArray = new ByteArray();
        _local2[0] = this.s;
        var _local3:int = (_0pd - ((_local1 * _0pd) % 8));
        var _local5:int;
        var _temp1 = _local1;
        _local1 = (_local1 - 1);
        if (_temp1 > 0) {
            if ((((_local3 < _0pd)) && (!(((_local4 = (this.a[_local1] >> _local3)) == ((this.s & _0Sy) >> _local3)))))) {
                var _local6 = _local5++;
                _local2[_local6] = (_local4 | (this.s << (_0pd - _local3)));
            }
            ;
            while (_local1 >= 0) {
                if (_local3 < 8) {
                    _local4 = ((this.a[_local1] & ((1 << _local3) - 1)) << (8 - _local3));
                    var _temp2 = _local4;
                    _local3 = (_local3 + (_0pd - 8));
                    _local4 = (_temp2 | (this.a[--_local1] >> _local3));
                } else {
                    _local3 = (_local3 - 8);
                    _local4 = ((this.a[_local1] >> _local3) & 0xFF);
                    if (_local3 <= 0) {
                        _local3 = (_local3 + _0pd);
                        _local1--;
                    }
                    ;
                }
                ;
                if ((_local4 & 128) != 0) {
                    _local4 = (_local4 | -256);
                }
                ;
                if ((((_local5 == 0)) && (!(((this.s & 128) == (_local4 & 128)))))) {
                    _local5++;
                }
                ;
                if ((((_local5 > 0)) || (!((_local4 == this.s))))) {
                    _local6 = _local5++;
                    _local2[_local6] = _local4;
                }
                ;
            }
            ;
        }
        ;
        return (_local2);
    }

    public function equals(_arg1:_1wH):Boolean {
        return ((this._0JO(_arg1) == 0));
    }

    public function min(_arg1:_1wH):_1wH {
        return ((((this._0JO(_arg1)) < 0) ? this : _arg1));
    }

    public function max(_arg1:_1wH):_1wH {
        return ((((this._0JO(_arg1)) > 0) ? this : _arg1));
    }

    public function _lh(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this._0yW(_arg1, this._1JE, _local2);
        return (_local2);
    }

    public function or(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this._0yW(_arg1, this._1cl, _local2);
        return (_local2);
    }

    public function _ZY(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this._0yW(_arg1, this._1Kh, _local2);
        return (_local2);
    }

    public function _1z2(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this._0yW(_arg1, this._1a4, _local2);
        return (_local2);
    }

    public function not():_1wH {
        var _local1:_1wH = new _1wH();
        var _local2:int;
        while (_local2 < this.t) {
            _local1[_local2] = (_0Sy & ~(this.a[_local2]));
            _local2++;
        }
        ;
        _local1.t = this.t;
        _local1.s = ~(this.s);
        return (_local1);
    }

    public function _1TA(_arg1:int):_1wH {
        var _local2:_1wH = new _1wH();
        if (_arg1 < 0) {
            this._0l3(-(_arg1), _local2);
        } else {
            this._1F9(_arg1, _local2);
        }
        ;
        return (_local2);
    }

    public function _G6(_arg1:int):_1wH {
        var _local2:_1wH = new _1wH();
        if (_arg1 < 0) {
            this._1F9(-(_arg1), _local2);
        } else {
            this._0l3(_arg1, _local2);
        }
        ;
        return (_local2);
    }

    public function _fA():int {
        var _local1:int;
        while (_local1 < this.t) {
            if (this.a[_local1] != 0) {
                return (((_local1 * _0pd) + this._1qm(this.a[_local1])));
            }
            ;
            _local1++;
        }
        ;
        if (this.s < 0) {
            return ((this.t * _0pd));
        }
        ;
        return (-1);
    }

    public function _1hu():int {
        var _local1:int;
        var _local2 = (this.s & _0Sy);
        var _local3:int;
        while (_local3 < this.t) {
            _local1 = (_local1 + this._1hD((this.a[_local3] ^ _local2)));
            _local3++;
        }
        ;
        return (_local1);
    }

    public function _ov(_arg1:int):Boolean {
        var _local2:int = Math.floor((_arg1 / _0pd));
        if (_local2 >= this.t) {
            return (!((this.s == 0)));
        }
        ;
        return (!(((this.a[_local2] & (1 << (_arg1 % _0pd))) == 0)));
    }

    public function _0iS(_arg1:int):_1wH {
        return (this._0io(_arg1, this._1cl));
    }

    public function _1CU(_arg1:int):_1wH {
        return (this._0io(_arg1, this._1a4));
    }

    public function _0Db(_arg1:int):_1wH {
        return (this._0io(_arg1, this._1Kh));
    }

    public function add(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this.addTo(_arg1, _local2);
        return (_local2);
    }

    public function _Sr(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this._0aF(_arg1, _local2);
        return (_local2);
    }

    public function _1go(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this._0q(_arg1, _local2);
        return (_local2);
    }

    public function _0ho(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this._1KB(_arg1, _local2, null);
        return (_local2);
    }

    public function _8K(_arg1:_1wH):_1wH {
        var _local2:_1wH = new _1wH();
        this._1KB(_arg1, null, _local2);
        return (_local2);
    }

    public function _1r1(_arg1:_1wH):Array {
        var _local2:_1wH = new _1wH();
        var _local3:_1wH = new _1wH();
        this._1KB(_arg1, _local2, _local3);
        return ([_local2, _local3]);
    }

    public function pow(_arg1:int):_1wH {
        return (this.exp(_arg1, new _d8()));
    }

    public function _1yJ(_arg1:_1wH, _arg2:_1wH):_1wH {
        var _local4:int;
        var _local6:IReduction;
        var _local12:int;
        var _local15:_1wH;
        var _local16:_1wH;
        var _local3:int = _arg1._1Q();
        var _local5:_1wH = _0j(1);
        if (_local3 <= 0) {
            return (_local5);
        }
        ;
        if (_local3 < 18) {
            _local4 = 1;
        } else {
            if (_local3 < 48) {
                _local4 = 3;
            } else {
                if (_local3 < 144) {
                    _local4 = 4;
                } else {
                    if (_local3 < 0x0300) {
                        _local4 = 5;
                    } else {
                        _local4 = 6;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        if (_local3 < 8) {
            _local6 = new _1qh(_arg2);
        } else {
            if (_arg2._1bm()) {
                _local6 = new _4g(_arg2);
            } else {
                _local6 = new _0eg(_arg2);
            }
            ;
        }
        ;
        var _local7:Array = [];
        var _local8:int = 3;
        var _local9:int = (_local4 - 1);
        var _local10:int = ((1 << _local4) - 1);
        _local7[1] = _local6._1Sn(this);
        if (_local4 > 1) {
            _local16 = new _1wH();
            _local6._1rG(_local7[1], _local16);
            while (_local8 <= _local10) {
                _local7[_local8] = new _1wH();
                _local6._1wW(_local16, _local7[(_local8 - 2)], _local7[_local8]);
                _local8 = (_local8 + 2);
            }
            ;
        }
        ;
        var _local11:int = (_arg1.t - 1);
        var _local13:Boolean = true;
        var _local14:_1wH = new _1wH();
        _local3 = (this._mo(_arg1.a[_local11]) - 1);
        while (_local11 >= 0) {
            if (_local3 >= _local9) {
                _local12 = ((_arg1.a[_local11] >> (_local3 - _local9)) & _local10);
            } else {
                _local12 = ((_arg1.a[_local11] & ((1 << (_local3 + 1)) - 1)) << (_local9 - _local3));
                if (_local11 > 0) {
                    _local12 = (_local12 | (_arg1.a[(_local11 - 1)] >> ((_0pd + _local3) - _local9)));
                }
                ;
            }
            ;
            _local8 = _local4;
            while ((_local12 & 1) == 0) {
                _local12 = (_local12 >> 1);
                _local8--;
            }
            ;
            _local3 = (_local3 - _local8);
            if (_local3 < 0) {
                _local3 = (_local3 + _0pd);
                _local11--;
            }
            ;
            if (_local13) {
                _local7[_local12].copyTo(_local5);
                _local13 = false;
            } else {
                while (_local8 > 1) {
                    _local6._1rG(_local5, _local14);
                    _local6._1rG(_local14, _local5);
                    _local8 = (_local8 - 2);
                }
                ;
                if (_local8 > 0) {
                    _local6._1rG(_local5, _local14);
                } else {
                    _local15 = _local5;
                    _local5 = _local14;
                    _local14 = _local15;
                }
                ;
                _local6._1wW(_local14, _local7[_local12], _local5);
            }
            ;
            while ((((_local11 >= 0)) && (((_arg1.a[_local11] & (1 << _local3)) == 0)))) {
                _local6._1rG(_local5, _local14);
                _local15 = _local5;
                _local5 = _local14;
                _local14 = _local15;
                --_local3;
                if (_local3 < 0) {
                    _local3 = (_0pd - 1);
                    _local11--;
                }
                ;
            }
            ;
        }
        ;
        return (_local6._ai(_local5));
    }

    public function _1ZN(_arg1:_1wH):_1wH {
        var _local6:_1wH;
        var _local2:_1wH = (((this.s) < 0) ? this._140() : this.clone());
        var _local3:_1wH = (((_arg1.s) < 0) ? _arg1._140() : _arg1.clone());
        if (_local2._0JO(_local3) < 0) {
            _local6 = _local2;
            _local2 = _local3;
            _local3 = _local6;
        }
        ;
        var _local4:int = _local2._fA();
        var _local5:int = _local3._fA();
        if (_local5 < 0) {
            return (_local2);
        }
        ;
        if (_local4 < _local5) {
            _local5 = _local4;
        }
        ;
        if (_local5 > 0) {
            _local2._0l3(_local5, _local2);
            _local3._0l3(_local5, _local3);
        }
        ;
        while (_local2._xa() > 0) {
            _local4 = _local2._fA();
            if (_local4 > 0) {
                _local2._0l3(_local4, _local2);
            }
            ;
            _local4 = _local3._fA();
            if (_local4 > 0) {
                _local3._0l3(_local4, _local3);
            }
            ;
            if (_local2._0JO(_local3) >= 0) {
                _local2._0aF(_local3, _local2);
                _local2._0l3(1, _local2);
            } else {
                _local3._0aF(_local2, _local3);
                _local3._0l3(1, _local3);
            }
            ;
        }
        ;
        if (_local5 > 0) {
            _local3._1F9(_local5, _local3);
        }
        ;
        return (_local3);
    }

    public function _cV(_arg1:_1wH):_1wH {
        var _local2:Boolean = _arg1._1bm();
        if (((((this._1bm()) && (_local2))) || ((_arg1._xa() == 0)))) {
            return (_1wH._0Y6);
        }
        ;
        var _local3:_1wH = _arg1.clone();
        var _local4:_1wH = this.clone();
        var _local5:_1wH = _0j(1);
        var _local6:_1wH = _0j(0);
        var _local7:_1wH = _0j(0);
        var _local8:_1wH = _0j(1);
        while (_local3._xa() != 0) {
            while (_local3._1bm()) {
                _local3._0l3(1, _local3);
                if (_local2) {
                    if (((!(_local5._1bm())) || (!(_local6._1bm())))) {
                        _local5.addTo(this, _local5);
                        _local6._0aF(_arg1, _local6);
                    }
                    ;
                    _local5._0l3(1, _local5);
                } else {
                    if (!_local6._1bm()) {
                        _local6._0aF(_arg1, _local6);
                    }
                    ;
                }
                ;
                _local6._0l3(1, _local6);
            }
            ;
            while (_local4._1bm()) {
                _local4._0l3(1, _local4);
                if (_local2) {
                    if (((!(_local7._1bm())) || (!(_local8._1bm())))) {
                        _local7.addTo(this, _local7);
                        _local8._0aF(_arg1, _local8);
                    }
                    ;
                    _local7._0l3(1, _local7);
                } else {
                    if (!_local8._1bm()) {
                        _local8._0aF(_arg1, _local8);
                    }
                    ;
                }
                ;
                _local8._0l3(1, _local8);
            }
            ;
            if (_local3._0JO(_local4) >= 0) {
                _local3._0aF(_local4, _local3);
                if (_local2) {
                    _local5._0aF(_local7, _local5);
                }
                ;
                _local6._0aF(_local8, _local6);
            } else {
                _local4._0aF(_local3, _local4);
                if (_local2) {
                    _local7._0aF(_local5, _local7);
                }
                ;
                _local8._0aF(_local6, _local8);
            }
            ;
        }
        ;
        if (_local4._0JO(_1wH._t3) != 0) {
            return (_1wH._0Y6);
        }
        ;
        if (_local8._0JO(_arg1) >= 0) {
            return (_local8._Sr(_arg1));
        }
        ;
        if (_local8._xa() < 0) {
            _local8.addTo(_arg1, _local8);
        } else {
            return (_local8);
        }
        ;
        if (_local8._xa() < 0) {
            return (_local8.add(_arg1));
        }
        ;
        return (_local8);
    }

    public function _0D0(_arg1:int):Boolean {
        var _local2:int;
        var _local4:int;
        var _local5:int;
        var _local3:_1wH = this.abs();
        if ((((_local3.t == 1)) && ((_local3.a[0] <= _1i8[(_1i8.length - 1)])))) {
            _local2 = 0;
            while (_local2 < _1i8.length) {
                if (_local3[0] == _1i8[_local2]) {
                    return (true);
                }
                ;
                _local2++;
            }
            ;
            return (false);
        }
        ;
        if (_local3._1bm()) {
            return (false);
        }
        ;
        _local2 = 1;
        while (_local2 < _1i8.length) {
            _local4 = _1i8[_local2];
            _local5 = (_local2 + 1);
            while ((((_local5 < _1i8.length)) && ((_local4 < _Jn)))) {
                _local4 = (_local4 * _1i8[_local5++]);
            }
            ;
            _local4 = _local3._rJ(_local4);
            while (_local2 < _local5) {
                if ((_local4 % _1i8[_local2++]) == 0) {
                    return (false);
                }
                ;
            }
            ;
        }
        ;
        return (_local3._0VF(_arg1));
    }

    public function _OJ(_arg1:int, _arg2:int):void {
        if (!this._ov((_arg1 - 1))) {
            this._0yW(_1wH._t3._1TA((_arg1 - 1)), this._1cl, this);
        }
        ;
        if (this._1bm()) {
            this._j6(1, 0);
        }
        ;
        while (!(this._0D0(_arg2))) {
            this._j6(2, 0);
            while (this._1Q() > _arg1) {
                this._0aF(_1wH._t3._1TA((_arg1 - 1)), this);
            }
            ;
        }
        ;
    }

    protected function _id() {
        return (new _1wH());
    }

    protected function _1bW(_arg1:Number):int {
        return (Math.floor(((Math.LN2 * _0pd) / Math.log(_arg1))));
    }

    protected function _1m6(_arg1:uint = 10):String {
        if ((((((this._xa() == 0)) || ((_arg1 < 2)))) || ((_arg1 > 32)))) {
            return ("0");
        }
        ;
        var _local2:int = this._1bW(_arg1);
        var _local3:Number = Math.pow(_arg1, _local2);
        var _local4:_1wH = _0j(_local3);
        var _local5:_1wH = this._id();
        var _local6:_1wH = this._id();
        var _local7 = "";
        this._1KB(_local4, _local5, _local6);
        while (_local5._xa() > 0) {
            _local7 = ((_local3 + _local6._pf()).toString(_arg1).substr(1) + _local7);
            _local5._1KB(_local4, _local5, _local6);
        }
        ;
        return ((_local6._pf().toString(_arg1) + _local7));
    }

    protected function _1lG(_arg1:String, _arg2:int = 10):void {
        var _local9:int;
        this._4n(0);
        var _local3:int = this._1bW(_arg2);
        var _local4:Number = Math.pow(_arg2, _local3);
        var _local5:Boolean;
        var _local6:int;
        var _local7:int;
        var _local8:int;
        while (_local8 < _arg1.length) {
            _local9 = this._02P(_arg1, _local8);
            if (_local9 < 0) {
                if ((((_arg1.charAt(_local8) == "-")) && ((this._xa() == 0)))) {
                    _local5 = true;
                }
                ;
            } else {
                _local7 = ((_arg2 * _local7) + _local9);
                ++_local6;
                if (_local6 >= _local3) {
                    this._1Q9(_local4);
                    this._j6(_local7, 0);
                    _local6 = 0;
                    _local7 = 0;
                }
                ;
            }
            ;
            _local8++;
        }
        ;
        if (_local6 > 0) {
            this._1Q9(Math.pow(_arg2, _local6));
            this._j6(_local7, 0);
        }
        ;
        if (_local5) {
            _1wH._0Y6._0aF(this, this);
        }
        ;
    }

    protected function _0yW(_arg1:_1wH, _arg2:Function, _arg3:_1wH):void {
        var _local4:int;
        var _local5:int;
        var _local6:int = Math.min(_arg1.t, this.t);
        _local4 = 0;
        while (_local4 < _local6) {
            _arg3.a[_local4] = _arg2(this.a[_local4], _arg1.a[_local4]);
            _local4++;
        }
        ;
        if (_arg1.t < this.t) {
            _local5 = (_arg1.s & _0Sy);
            _local4 = _local6;
            while (_local4 < this.t) {
                _arg3.a[_local4] = _arg2(this.a[_local4], _local5);
                _local4++;
            }
            ;
            _arg3.t = this.t;
        } else {
            _local5 = (this.s & _0Sy);
            _local4 = _local6;
            while (_local4 < _arg1.t) {
                _arg3.a[_local4] = _arg2(_local5, _arg1.a[_local4]);
                _local4++;
            }
            ;
            _arg3.t = _arg1.t;
        }
        ;
        _arg3.s = _arg2(this.s, _arg1.s);
        _arg3.clamp();
    }

    protected function _0io(_arg1:int, _arg2:Function):_1wH {
        var _local3:_1wH = _1wH._t3._1TA(_arg1);
        this._0yW(_local3, _arg2, _local3);
        return (_local3);
    }

    protected function addTo(_arg1:_1wH, _arg2:_1wH):void {
        var _local3:int;
        var _local4:int;
        var _local5:int = Math.min(_arg1.t, this.t);
        while (_local3 < _local5) {
            _local4 = (_local4 + (this.a[_local3] + _arg1.a[_local3]));
            var _local6 = _local3++;
            _arg2.a[_local6] = (_local4 & _0Sy);
            _local4 = (_local4 >> _0pd);
        }
        ;
        if (_arg1.t < this.t) {
            _local4 = (_local4 + _arg1.s);
            while (_local3 < this.t) {
                _local4 = (_local4 + this.a[_local3]);
                _local6 = _local3++;
                _arg2.a[_local6] = (_local4 & _0Sy);
                _local4 = (_local4 >> _0pd);
            }
            ;
            _local4 = (_local4 + this.s);
        } else {
            _local4 = (_local4 + this.s);
            while (_local3 < _arg1.t) {
                _local4 = (_local4 + _arg1.a[_local3]);
                _local6 = _local3++;
                _arg2.a[_local6] = (_local4 & _0Sy);
                _local4 = (_local4 >> _0pd);
            }
            ;
            _local4 = (_local4 + _arg1.s);
        }
        ;
        _arg2.s = (((_local4) < 0) ? -1 : 0);
        if (_local4 > 0) {
            _local6 = _local3++;
            _arg2.a[_local6] = _local4;
        } else {
            if (_local4 < -1) {
                _local6 = _local3++;
                _arg2.a[_local6] = (_Kq + _local4);
            }
            ;
        }
        ;
        _arg2.t = _local3;
        _arg2.clamp();
    }

    protected function _rJ(_arg1:int):int {
        var _local4:int;
        if (_arg1 <= 0) {
            return (0);
        }
        ;
        var _local2:int = (_Kq % _arg1);
        var _local3:int = (((this.s) < 0) ? (_arg1 - 1) : 0);
        if (this.t > 0) {
            if (_local2 == 0) {
                _local3 = (this.a[0] % _arg1);
            } else {
                _local4 = (this.t - 1);
                while (_local4 >= 0) {
                    _local3 = (((_local2 * _local3) + this.a[_local4]) % _arg1);
                    _local4--;
                }
                ;
            }
            ;
        }
        ;
        return (_local3);
    }

    protected function _0VF(_arg1:int):Boolean {
        var _local7:_1wH;
        var _local8:int;
        var _local2:_1wH = this._Sr(_1wH._t3);
        var _local3:int = _local2._fA();
        if (_local3 <= 0) {
            return (false);
        }
        ;
        var _local4:_1wH = _local2._G6(_local3);
        _arg1 = ((_arg1 + 1) >> 1);
        if (_arg1 > _1i8.length) {
            _arg1 = _1i8.length;
        }
        ;
        var _local5:_1wH = new _1wH();
        var _local6:int;
        while (_local6 < _arg1) {
            _local5._4n(_1i8[_local6]);
            _local7 = _local5._1yJ(_local4, this);
            if (((!((_local7._0JO(_1wH._t3) == 0))) && (!((_local7._0JO(_local2) == 0))))) {
                _local8 = 1;
                while ((((_local8++ < _local3)) && (!((_local7._0JO(_local2) == 0))))) {
                    _local7 = _local7._yw(2, this);
                    if (_local7._0JO(_1wH._t3) == 0) {
                        return (false);
                    }
                    ;
                }
                ;
                if (_local7._0JO(_local2) != 0) {
                    return (false);
                }
                ;
            }
            ;
            _local6++;
        }
        ;
        return (true);
    }

    private function _1JE(_arg1:int, _arg2:int):int {
        return ((_arg1 & _arg2));
    }

    private function _1cl(_arg1:int, _arg2:int):int {
        return ((_arg1 | _arg2));
    }

    private function _1Kh(_arg1:int, _arg2:int):int {
        return ((_arg1 ^ _arg2));
    }

    private function _1a4(_arg1:int, _arg2:int):int {
        return ((_arg1 & ~(_arg2)));
    }

    private function _1qm(_arg1:int):int {
        if (_arg1 == 0) {
            return (-1);
        }
        ;
        var _local2:int;
        if ((_arg1 & 0xFFFF) == 0) {
            _arg1 = (_arg1 >> 16);
            _local2 = (_local2 + 16);
        }
        ;
        if ((_arg1 & 0xFF) == 0) {
            _arg1 = (_arg1 >> 8);
            _local2 = (_local2 + 8);
        }
        ;
        if ((_arg1 & 15) == 0) {
            _arg1 = (_arg1 >> 4);
            _local2 = (_local2 + 4);
        }
        ;
        if ((_arg1 & 3) == 0) {
            _arg1 = (_arg1 >> 2);
            _local2 = (_local2 + 2);
        }
        ;
        if ((_arg1 & 1) == 0) {
            _local2++;
        }
        ;
        return (_local2);
    }

    private function _1hD(_arg1:int):int {
        var _local2:uint;
        while (_arg1 != 0) {
            _arg1 = (_arg1 & (_arg1 - 1));
            _local2++;
        }
        ;
        return (_local2);
    }
    bi_internal var s:int;
    bi_internal var a:Array;

    bi_internal function _mo(_arg1:int):int {
        var _local3:int;
        var _local2:int = 1;
        _local3 = (_arg1 >>> 16);
        if (_local3 != 0) {
            _arg1 = _local3;
            _local2 = (_local2 + 16);
        }
        ;
        _local3 = (_arg1 >> 8);
        if (_local3 != 0) {
            _arg1 = _local3;
            _local2 = (_local2 + 8);
        }
        ;
        _local3 = (_arg1 >> 4);
        if (_local3 != 0) {
            _arg1 = _local3;
            _local2 = (_local2 + 4);
        }
        ;
        _local3 = (_arg1 >> 2);
        if (_local3 != 0) {
            _arg1 = _local3;
            _local2 = (_local2 + 2);
        }
        ;
        _local3 = (_arg1 >> 1);
        if (_local3 != 0) {
            _arg1 = _local3;
            _local2 = (_local2 + 1);
        }
        ;
        return (_local2);
    }

    bi_internal function copyTo(_arg1:_1wH):void {
        var _local2:int = (this.t - 1);
        while (_local2 >= 0) {
            _arg1.a[_local2] = this.a[_local2];
            _local2--;
        }
        ;
        _arg1.t = this.t;
        _arg1.s = this.s;
    }

    bi_internal function _4n(_arg1:int):void {
        this.t = 1;
        this.s = (((_arg1) < 0) ? -1 : 0);
        if (_arg1 > 0) {
            this.a[0] = _arg1;
        } else {
            if (_arg1 < -1) {
                this.a[0] = (_arg1 + _Kq);
            } else {
                this.t = 0;
            }
            ;
        }
        ;
    }

    bi_internal function fromArray(_arg1:ByteArray, _arg2:int, _arg3:Boolean = false):void {
        var _local8:int;
        var _local4:int = _arg1.position;
        var _local5:int = (_local4 + _arg2);
        var _local6:int;
        var _local7:int = 8;
        this.t = 0;
        this.s = 0;
        while (--_local5 >= _local4) {
            _local8 = (((_local5 < _arg1.length)) ? _arg1[_local5] : 0);
            if (_local6 == 0) {
                var _local9 = this.t++;
                this.a[_local9] = _local8;
            } else {
                if ((_local6 + _local7) > _0pd) {
                    this.a[(this.t - 1)] = (this.a[(this.t - 1)] | ((_local8 & ((1 << (_0pd - _local6)) - 1)) << _local6));
                    _local9 = this.t++;
                    this.a[_local9] = (_local8 >> (_0pd - _local6));
                } else {
                    this.a[(this.t - 1)] = (this.a[(this.t - 1)] | (_local8 << _local6));
                }
                ;
            }
            ;
            _local6 = (_local6 + _local7);
            if (_local6 >= _0pd) {
                _local6 = (_local6 - _0pd);
            }
            ;
        }
        ;
        if (((!(_arg3)) && (((_arg1[0] & 128) == 128)))) {
            this.s = -1;
            if (_local6 > 0) {
                this.a[(this.t - 1)] = (this.a[(this.t - 1)] | (((1 << (_0pd - _local6)) - 1) << _local6));
            }
            ;
        }
        ;
        this.clamp();
        _arg1.position = Math.min((_local4 + _arg2), _arg1.length);
    }

    bi_internal function clamp():void {
        var _local1 = (this.s & _0Sy);
        while ((((this.t > 0)) && ((this.a[(this.t - 1)] == _local1)))) {
            this.t--;
        }
        ;
    }

    bi_internal function _0d3(_arg1:int, _arg2:_1wH):void {
        var _local3:int;
        _local3 = (this.t - 1);
        while (_local3 >= 0) {
            _arg2.a[(_local3 + _arg1)] = this.a[_local3];
            _local3--;
        }
        ;
        _local3 = (_arg1 - 1);
        while (_local3 >= 0) {
            _arg2.a[_local3] = 0;
            _local3--;
        }
        ;
        _arg2.t = (this.t + _arg1);
        _arg2.s = this.s;
    }

    bi_internal function _1LR(_arg1:int, _arg2:_1wH):void {
        var _local3:int;
        _local3 = _arg1;
        while (_local3 < this.t) {
            _arg2.a[(_local3 - _arg1)] = this.a[_local3];
            _local3++;
        }
        ;
        _arg2.t = Math.max((this.t - _arg1), 0);
        _arg2.s = this.s;
    }

    bi_internal function _1F9(_arg1:int, _arg2:_1wH):void {
        var _local8:int;
        var _local3:int = (_arg1 % _0pd);
        var _local4:int = (_0pd - _local3);
        var _local5:int = ((1 << _local4) - 1);
        var _local6:int = (_arg1 / _0pd);
        var _local7 = ((this.s << _local3) & _0Sy);
        _local8 = (this.t - 1);
        while (_local8 >= 0) {
            _arg2.a[((_local8 + _local6) + 1)] = ((this.a[_local8] >> _local4) | _local7);
            _local7 = ((this.a[_local8] & _local5) << _local3);
            _local8--;
        }
        ;
        _local8 = (_local6 - 1);
        while (_local8 >= 0) {
            _arg2.a[_local8] = 0;
            _local8--;
        }
        ;
        _arg2.a[_local6] = _local7;
        _arg2.t = ((this.t + _local6) + 1);
        _arg2.s = this.s;
        _arg2.clamp();
    }

    bi_internal function _0l3(_arg1:int, _arg2:_1wH):void {
        var _local7:int;
        _arg2.s = this.s;
        var _local3:int = (_arg1 / _0pd);
        if (_local3 >= this.t) {
            _arg2.t = 0;
            return;
        }
        ;
        var _local4:int = (_arg1 % _0pd);
        var _local5:int = (_0pd - _local4);
        var _local6:int = ((1 << _local4) - 1);
        _arg2.a[0] = (this.a[_local3] >> _local4);
        _local7 = (_local3 + 1);
        while (_local7 < this.t) {
            _arg2.a[((_local7 - _local3) - 1)] = (_arg2.a[((_local7 - _local3) - 1)] | ((this.a[_local7] & _local6) << _local5));
            _arg2.a[(_local7 - _local3)] = (this.a[_local7] >> _local4);
            _local7++;
        }
        ;
        if (_local4 > 0) {
            _arg2.a[((this.t - _local3) - 1)] = (_arg2.a[((this.t - _local3) - 1)] | ((this.s & _local6) << _local5));
        }
        ;
        _arg2.t = (this.t - _local3);
        _arg2.clamp();
    }

    bi_internal function _0aF(_arg1:_1wH, _arg2:_1wH):void {
        var _local3:int;
        var _local4:int;
        var _local5:int = Math.min(_arg1.t, this.t);
        while (_local3 < _local5) {
            _local4 = (_local4 + (this.a[_local3] - _arg1.a[_local3]));
            var _local6 = _local3++;
            _arg2.a[_local6] = (_local4 & _0Sy);
            _local4 = (_local4 >> _0pd);
        }
        if (_arg1.t < this.t) {
            _local4 = (_local4 - _arg1.s);
            while (_local3 < this.t) {
                _local4 = (_local4 + this.a[_local3]);
                _local6 = _local3++;
                _arg2.a[_local6] = (_local4 & _0Sy);
                _local4 = (_local4 >> _0pd);
            }
            _local4 = (_local4 + this.s);
        } else {
            _local4 = (_local4 + this.s);
            while (_local3 < _arg1.t) {
                _local4 = (_local4 - _arg1.a[_local3]);
                _local6 = _local3++;
                _arg2.a[_local6] = (_local4 & _0Sy);
                _local4 = (_local4 >> _0pd);
            }
            _local4 = (_local4 - _arg1.s);
        }
        _arg2.s = (((_local4) < 0) ? -1 : 0);
        if (_local4 < -1) {
            _local6 = _local3++;
            _arg2.a[_local6] = (_Kq + _local4);
        } else {
            if (_local4 > 0) {
                _local6 = _local3++;
                _arg2.a[_local6] = _local4;
            }
        }
        _arg2.t = _local3;
        _arg2.clamp();
    }

    bi_internal function am(_arg1:int, _arg2:int, _arg3:_1wH, _arg4:int, _arg5:int, _arg6:int):int {
        var _local9:int;
        var _local10:int;
        var _local11:int;
        var _local7 = (_arg2 & 32767);
        var _local8 = (_arg2 >> 15);
        while (--_arg6 >= 0) {
            _local9 = (this.a[_arg1] & 32767);
            _local10 = (this.a[_arg1++] >> 15);
            _local11 = ((_local8 * _local9) + (_local10 * _local7));
            _local9 = ((((_local7 * _local9) + ((_local11 & 32767) << 15)) + _arg3.a[_arg4]) + (_arg5 & 1073741823));
            _arg5 = ((((_local9 >>> 30) + (_local11 >>> 15)) + (_local8 * _local10)) + (_arg5 >>> 30));
            var _local12 = _arg4++;
            _arg3.a[_local12] = (_local9 & 1073741823);
        }
        ;
        return (_arg5);
    }

    bi_internal function _0q(_arg1:_1wH, _arg2:_1wH):void {
        var _local3:_1wH = this.abs();
        var _local4:_1wH = _arg1.abs();
        var _local5:int = _local3.t;
        _arg2.t = (_local5 + _local4.t);
        while (--_local5 >= 0) {
            _arg2.a[_local5] = 0;
        }
        ;
        _local5 = 0;
        while (_local5 < _local4.t) {
            _arg2.a[(_local5 + _local3.t)] = _local3.am(0, _local4.a[_local5], _arg2, _local5, 0, _local3.t);
            _local5++;
        }
        ;
        _arg2.s = 0;
        _arg2.clamp();
        if (this.s != _arg1.s) {
            _0Y6._0aF(_arg2, _arg2);
        }
        ;
    }

    bi_internal function _aS(_arg1:_1wH):void {
        var _local4:int;
        var _local2:_1wH = this.abs();
        var _local3:int = (_arg1.t = (2 * _local2.t));
        while (--_local3 >= 0) {
            _arg1.a[_local3] = 0;
        }
        ;
        _local3 = 0;
        while (_local3 < (_local2.t - 1)) {
            _local4 = _local2.am(_local3, _local2.a[_local3], _arg1, (2 * _local3), 0, 1);
            if ((_arg1.a[(_local3 + _local2.t)] = (_arg1.a[(_local3 + _local2.t)] + _local2.am((_local3 + 1), (2 * _local2.a[_local3]), _arg1, ((2 * _local3) + 1), _local4, ((_local2.t - _local3) - 1)))) >= _Kq) {
                _arg1.a[(_local3 + _local2.t)] = (_arg1.a[(_local3 + _local2.t)] - _Kq);
                _arg1.a[((_local3 + _local2.t) + 1)] = 1;
            }
            ;
            _local3++;
        }
        ;
        if (_arg1.t > 0) {
            _arg1.a[(_arg1.t - 1)] = (_arg1.a[(_arg1.t - 1)] + _local2.am(_local3, _local2.a[_local3], _arg1, (2 * _local3), 0, 1));
        }
        ;
        _arg1.s = 0;
        _arg1.clamp();
    }

    bi_internal function _1KB(_arg1:_1wH, _arg2:_1wH = null, _arg3:_1wH = null):void {
        var qd:int;
        var m:_1wH = _arg1;
        var q = _arg2;
        var r = _arg3;
        var pm:_1wH = m.abs();
        if (pm.t <= 0) {
            return;
        }
        var pt:_1wH = this.abs();
        if (pt.t < pm.t) {
            if (q != null) {
                q._4n(0);
            }
            if (r != null) {
                this.copyTo(r);
            }
            return;
        }
        if (r == null) {
            r = this._id();
        }
        var y:_1wH = this._id();
        var ts:int = this.s;
        var ms:int = m.s;
        var nsh:int = (_0pd - this._mo(pm.a[(pm.t - 1)]));
        if (nsh > 0) {
            pm._1F9(nsh, y);
            pt._1F9(nsh, r);
        } else {
            pm.copyTo(y);
            pt.copyTo(r);
        }
        var ys:int = y.t;
        var y0:int = y.a[(ys - 1)];
        if (y0 == 0) {
            return;
        }
        var yt:Number = ((y0 * (1 << F1)) + (((ys) > 1) ? (y.a[(ys - 2)] >> F2) : 0));
        var d1:Number = (_Ib / yt);
        var d2:Number = ((1 << F1) / yt);
        var e:Number = (1 << F2);
        var i:int = r.t;
        var j:int = (i - ys);
        var t:_1wH = (((q) == null) ? this._id() : q);
        y._0d3(j, t);
        if (r._0JO(t) >= 0) {
            var _local5 = r.t++;
            r.a[_local5] = 1;
            r._0aF(t, r);
        }
        _t3._0d3(ys, t);
        t._0aF(y, y);
        while (y.t < ys) {
            y.t++; //not popped
        }
        while (--j >= 0) {
            qd = (((r.a[--i]) == y0) ? _0Sy : ((Number(r.a[i]) * d1) + ((Number(r.a[(i - 1)]) + e) * d2)));
            if ((r.a[i] = (r.a[i] + y.am(0, qd, r, j, 0, ys))) < qd) {
                y._0d3(j, t);
                r._0aF(t, r);
                while ((qd = (qd - 1)), r.a[i] < qd) {
                    r._0aF(t, r);
                }
            }
        }
        if (q != null) {
            r._1LR(ys, q);
            if (ts != ms) {
                _0Y6._0aF(q, q);
            }
        }
        r.t = ys;
        r.clamp();
        if (nsh > 0) {
            r._0l3(nsh, r);
        }
        if (ts < 0) {
            _0Y6._0aF(r, r);
        }
    }

    bi_internal function _0Zr():int {
        if (this.t < 1) {
            return (0);
        }
        ;
        var _local1:int = this.a[0];
        if ((_local1 & 1) == 0) {
            return (0);
        }
        ;
        var _local2 = (_local1 & 3);
        _local2 = ((_local2 * (2 - ((_local1 & 15) * _local2))) & 15);
        _local2 = ((_local2 * (2 - ((_local1 & 0xFF) * _local2))) & 0xFF);
        _local2 = ((_local2 * (2 - (((_local1 & 0xFFFF) * _local2) & 0xFFFF))) & 0xFFFF);
        _local2 = ((_local2 * (2 - ((_local1 * _local2) % _Kq))) % _Kq);
        return ((((_local2) > 0) ? (_Kq - _local2) : -(_local2)));
    }

    bi_internal function _1bm():Boolean {
        return (((((this.t) > 0) ? (this.a[0] & 1) : this.s) == 0));
    }

    bi_internal function exp(e:int, z:IReduction):_1wH {
        var _local7:_1wH;
        if ((((e > 0xFFFFFFFF)) || ((e < 1)))) {
            return (_t3);
        }
        var r:_1wH = this._id();
        var r2:_1wH = this._id();
        var g:_1wH = z._1Sn(this);
        var i:int = (this._mo(e) - 1);
        g.copyTo(r);
        while (--i >= 0) {
            z._1rG(r, r2);
            if ((e & (1 << i)) > 0) {
                z._1wW(r2, g, r);
            } else {
                _local7 = r;
                r = r2;
                r2 = _local7;
            }
        }
        return (z._ai(r));
    }

    bi_internal function _02P(_arg1:String, _arg2:int):int {
        return (parseInt(_arg1.charAt(_arg2), 36));
    }

    bi_internal function _1Q9(_arg1:int):void {
        this.a[this.t] = this.am(0, (_arg1 - 1), this, 0, 0, this.t);
        this.t++;
        this.clamp();
    }

    bi_internal function _j6(_arg1:int, _arg2:int):void {
        while (this.t <= _arg2) {
            var _local3 = this.t++;
            this.a[_local3] = 0;
        }
        ;
        this.a[_arg2] = (this.a[_arg2] + _arg1);
        while (this.a[_arg2] >= _Kq) {
            this.a[_arg2] = (this.a[_arg2] - _Kq);
            ++_arg2;
            if (_arg2 >= this.t) {
                _local3 = this.t++;
                this.a[_local3] = 0;
            }
            ;
            _local3 = this.a;
            var _local4 = _arg2;
            var _local5 = (_local3[_local4] + 1);
            _local3[_local4] = _local5;
        }
        ;
    }

    bi_internal function _1YK(_arg1:_1wH, _arg2:int, _arg3:_1wH):void {
        var _local5:int;
        var _local4:int = Math.min((this.t + _arg1.t), _arg2);
        _arg3.s = 0;
        _arg3.t = _local4;
        while (_local4 > 0) {
            var _local6 = --_local4;
            _arg3.a[_local6] = 0;
        }
        ;
        _local5 = (_arg3.t - this.t);
        while (_local4 < _local5) {
            _arg3.a[(_local4 + this.t)] = this.am(0, _arg1.a[_local4], _arg3, _local4, 0, this.t);
            _local4++;
        }
        ;
        _local5 = Math.min(_arg1.t, _arg2);
        while (_local4 < _local5) {
            this.am(0, _arg1.a[_local4], _arg3, _local4, 0, (_arg2 - _local4));
            _local4++;
        }
        ;
        _arg3.clamp();
    }

    bi_internal function _C2(_arg1:_1wH, _arg2:int, _arg3:_1wH):void {
        _arg2--;
        var _local4:int = (_arg3.t = ((this.t + _arg1.t) - _arg2));
        _arg3.s = 0;
        while (--_local4 >= 0) {
            _arg3.a[_local4] = 0;
        }
        ;
        _local4 = Math.max((_arg2 - this.t), 0);
        while (_local4 < _arg1.t) {
            _arg3.a[((this.t + _local4) - _arg2)] = this.am((_arg2 - _local4), _arg1.a[_local4], _arg3, 0, 0, ((this.t + _local4) - _arg2));
            _local4++;
        }
        ;
        _arg3.clamp();
        _arg3._1LR(1, _arg3);
    }


}
}//package com.hurlant.math

