// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_19L.AGALMiniAssembler

package _19L {
import flash.utils.ByteArray;
import flash.utils.Dictionary;
import flash.utils.Endian;
import flash.utils.getTimer;

public class AGALMiniAssembler {

    private static const _0iP:Dictionary = new Dictionary();
    private static const _0D:Dictionary = new Dictionary();
    private static const _mW:Dictionary = new Dictionary();
    private static const _B9:int = 4;
    private static const _0gL:int = 0x0100;
    private static const FRAGMENT:String = "fragment";
    private static const VERTEX:String = "vertex";
    private static const _1gI:uint = 12;
    private static const _0BM:uint = 16;
    private static const _1xV:uint = 20;
    private static const _1c:uint = 24;
    private static const _0QM:uint = 28;
    private static const _0Zy:uint = 1;
    private static const _1zq:uint = 2;
    private static const _0qc:uint = 32;
    private static const _1fN:uint = 64;
    private static const _1QJ:uint = 1;
    private static const _0LK:uint = 2;
    private static const _f2:uint = 4;
    private static const _1ID:uint = 8;
    private static const _wn:uint = 16;
    private static const _oy:uint = 32;
    private static const _1yj:uint = 64;
    private static const _1ku:uint = 128;
    private static const _1bk:String = "mov";
    private static const _10g:String = "add";
    private static const _043:String = "sub";
    private static const _CX:String = "mul";
    private static const _1oK:String = "div";
    private static const _05V:String = "rcp";
    private static const _0Ss:String = "min";
    private static const _36:String = "max";
    private static const _1Z8:String = "frc";
    private static const _1JA:String = "sqt";
    private static const _nQ:String = "rsq";
    private static const _Xk:String = "pow";
    private static const _1YH:String = "log";
    private static const _1TE:String = "exp";
    private static const _x5:String = "nrm";
    private static const _7L:String = "sin";
    private static const _ip:String = "cos";
    private static const _0Du:String = "crs";
    private static const DP3:String = "dp3";
    private static const DP4:String = "dp4";
    private static const _0JV:String = "abs";
    private static const _1CL:String = "neg";
    private static const _kW:String = "sat";
    private static const M33:String = "m33";
    private static const M44:String = "m44";
    private static const M34:String = "m34";
    private static const _ST:String = "ifz";
    private static const _ph:String = "inz";
    private static const _3y:String = "ife";
    private static const _wa:String = "ine";
    private static const _0i9:String = "ifg";
    private static const _vz:String = "ifl";
    private static const _1B7:String = "ieg";
    private static const _0ix:String = "iel";
    private static const _0CI:String = "els";
    private static const _0a7:String = "eif";
    private static const _162:String = "rep";
    private static const _0Ep:String = "erp";
    private static const _1Rc:String = "brk";
    private static const _0gC:String = "kil";
    private static const _sE:String = "tex";
    private static const _0w1:String = "sge";
    private static const _1te:String = "slt";
    private static const _1Po:String = "sgn";
    private static const _1hY:String = "va";
    private static const _0HC:String = "vc";
    private static const _1Mn:String = "vt";
    private static const _4q:String = "op";
    private static const V:String = "v";
    private static const _03j:String = "fc";
    private static const _08s:String = "ft";
    private static const _0Xj:String = "fs";
    private static const _0UN:String = "oc";
    private static const D2:String = "2d";
    private static const D3:String = "3d";
    private static const _mn:String = "cube";
    private static const _0Po:String = "mipnearest";
    private static const _16R:String = "miplinear";
    private static const _04:String = "mipnone";
    private static const _1a9:String = "nomip";
    private static const _wj:String = "nearest";
    private static const LINEAR:String = "linear";
    private static const _0x:String = "centroid";
    private static const _1JK:String = "single";
    private static const _MJ:String = "depth";
    private static const _1Ts:String = "repeat";
    private static const _0rL:String = "wrap";
    private static const _1gs:String = "clamp";

    private static var initialized:Boolean = false;

    private static function init():void {
        initialized = true;
        _0iP[_1bk] = new OpCode(_1bk, 2, 0, 0);
        _0iP[_10g] = new OpCode(_10g, 3, 1, 0);
        _0iP[_043] = new OpCode(_043, 3, 2, 0);
        _0iP[_CX] = new OpCode(_CX, 3, 3, 0);
        _0iP[_1oK] = new OpCode(_1oK, 3, 4, 0);
        _0iP[_05V] = new OpCode(_05V, 2, 5, 0);
        _0iP[_0Ss] = new OpCode(_0Ss, 3, 6, 0);
        _0iP[_36] = new OpCode(_36, 3, 7, 0);
        _0iP[_1Z8] = new OpCode(_1Z8, 2, 8, 0);
        _0iP[_1JA] = new OpCode(_1JA, 2, 9, 0);
        _0iP[_nQ] = new OpCode(_nQ, 2, 10, 0);
        _0iP[_Xk] = new OpCode(_Xk, 3, 11, 0);
        _0iP[_1YH] = new OpCode(_1YH, 2, 12, 0);
        _0iP[_1TE] = new OpCode(_1TE, 2, 13, 0);
        _0iP[_x5] = new OpCode(_x5, 2, 14, 0);
        _0iP[_7L] = new OpCode(_7L, 2, 15, 0);
        _0iP[_ip] = new OpCode(_ip, 2, 16, 0);
        _0iP[_0Du] = new OpCode(_0Du, 3, 17, 0);
        _0iP[DP3] = new OpCode(DP3, 3, 18, 0);
        _0iP[DP4] = new OpCode(DP4, 3, 19, 0);
        _0iP[_0JV] = new OpCode(_0JV, 2, 20, 0);
        _0iP[_1CL] = new OpCode(_1CL, 2, 21, 0);
        _0iP[_kW] = new OpCode(_kW, 2, 22, 0);
        _0iP[M33] = new OpCode(M33, 3, 23, _wn);
        _0iP[M44] = new OpCode(M44, 3, 24, _wn);
        _0iP[M34] = new OpCode(M34, 3, 25, _wn);
        _0iP[_ST] = new OpCode(_ST, 1, 26, ((_1ku | _0LK) | _1QJ));
        _0iP[_ph] = new OpCode(_ph, 1, 27, ((_1ku | _0LK) | _1QJ));
        _0iP[_3y] = new OpCode(_3y, 2, 28, ((_1ku | _0LK) | _1QJ));
        _0iP[_wa] = new OpCode(_wa, 2, 29, ((_1ku | _0LK) | _1QJ));
        _0iP[_0i9] = new OpCode(_0i9, 2, 30, ((_1ku | _0LK) | _1QJ));
        _0iP[_vz] = new OpCode(_vz, 2, 31, ((_1ku | _0LK) | _1QJ));
        _0iP[_1B7] = new OpCode(_1B7, 2, 32, ((_1ku | _0LK) | _1QJ));
        _0iP[_0ix] = new OpCode(_0ix, 2, 33, ((_1ku | _0LK) | _1QJ));
        _0iP[_0CI] = new OpCode(_0CI, 0, 34, ((_1ku | _0LK) | _f2));
        _0iP[_0a7] = new OpCode(_0a7, 0, 35, (_1ku | _f2));
        _0iP[_162] = new OpCode(_162, 1, 36, ((_1ku | _0LK) | _1QJ));
        _0iP[_0Ep] = new OpCode(_0Ep, 0, 37, (_1ku | _f2));
        _0iP[_1Rc] = new OpCode(_1Rc, 0, 38, _1ku);
        _0iP[_0gC] = new OpCode(_0gC, 1, 39, (_1ku | _oy));
        _0iP[_sE] = new OpCode(_sE, 3, 40, (_oy | _1ID));
        _0iP[_0w1] = new OpCode(_0w1, 3, 41, 0);
        _0iP[_1te] = new OpCode(_1te, 3, 42, 0);
        _0iP[_1Po] = new OpCode(_1Po, 2, 43, 0);
        _0D[_1hY] = new Register(_1hY, "vertex attribute", 0, 7, (_1fN | _1zq));
        _0D[_0HC] = new Register(_0HC, "vertex constant", 1, 127, (_1fN | _1zq));
        _0D[_1Mn] = new Register(_1Mn, "vertex temporary", 2, 7, ((_1fN | _0Zy) | _1zq));
        _0D[_4q] = new Register(_4q, "vertex output", 3, 0, (_1fN | _0Zy));
        _0D[V] = new Register(V, "varying", 4, 7, (((_1fN | _0qc) | _1zq) | _0Zy));
        _0D[_03j] = new Register(_03j, "fragment constant", 1, 27, (_0qc | _1zq));
        _0D[_08s] = new Register(_08s, "fragment temporary", 2, 7, ((_0qc | _0Zy) | _1zq));
        _0D[_0Xj] = new Register(_0Xj, "texture sampler", 5, 7, (_0qc | _1zq));
        _0D[_0UN] = new Register(_0UN, "fragment output", 3, 0, (_0qc | _0Zy));
        _mW[D2] = new Sampler(D2, _1gI, 0);
        _mW[D3] = new Sampler(D3, _1gI, 2);
        _mW[_mn] = new Sampler(_mn, _1gI, 1);
        _mW[_0Po] = new Sampler(_0Po, _1c, 1);
        _mW[_16R] = new Sampler(_16R, _1c, 2);
        _mW[_04] = new Sampler(_04, _1c, 0);
        _mW[_1a9] = new Sampler(_1a9, _1c, 0);
        _mW[_wj] = new Sampler(_wj, _0QM, 0);
        _mW[LINEAR] = new Sampler(LINEAR, _0QM, 1);
        _mW[_0x] = new Sampler(_0x, _0BM, (1 << 0));
        _mW[_1JK] = new Sampler(_1JK, _0BM, (1 << 1));
        _mW[_MJ] = new Sampler(_MJ, _0BM, (1 << 2));
        _mW[_1Ts] = new Sampler(_1Ts, _1xV, 1);
        _mW[_0rL] = new Sampler(_0rL, _1xV, 1);
        _mW[_1gs] = new Sampler(_1gs, _1xV, 0);
    }

    public function AGALMiniAssembler(_arg1:Boolean = false):void {
        this._1lx = _arg1;
        if (!initialized) {
            init();
        }
        ;
    }
    private var _1ni:ByteArray = null;
    private var _0Tz:String = "";
    private var _1lx:Boolean = false;

    public function get error():String {
        return (this._0Tz);
    }

    public function get _qE():ByteArray {
        return (this._1ni);
    }

    public function _14D(_arg1:String, _arg2:String, _arg3:Boolean = false):ByteArray {
        var _local9:int;
        var _local11:String;
        var _local12:int;
        var _local13:int;
        var _local14:Array;
        var _local15:Array;
        var _local16:OpCode;
        var _local17:Array;
        var _local18:Boolean;
        var _local19:uint;
        var _local20:uint;
        var _local21:int;
        var _local22:Boolean;
        var _local23:Array;
        var _local24:Array;
        var _local25:Register;
        var _local26:Array;
        var _local27:uint;
        var _local28:uint;
        var _local29:Array;
        var _local30:Boolean;
        var _local31:Boolean;
        var _local32:uint;
        var _local33:uint;
        var _local34:int;
        var _local35:uint;
        var _local36:uint;
        var _local37:int;
        var _local38:Array;
        var _local39:Register;
        var _local40:Array;
        var _local41:Array;
        var _local42:uint;
        var _local43:uint;
        var _local44:Number;
        var _local45:Sampler;
        var _local46:String;
        var _local47:uint;
        var _local48:uint;
        var _local49:String;
        var _local4:uint = getTimer();
        this._1ni = new ByteArray();
        this._0Tz = "";
        var _local5:Boolean;
        if (_arg1 == FRAGMENT) {
            _local5 = true;
        } else {
            if (_arg1 != VERTEX) {
                this._0Tz = (((((('ERROR: mode needs to be "' + FRAGMENT) + '" or "') + VERTEX) + '" but is "') + _arg1) + '".');
            }
            ;
        }
        ;
        this._qE.endian = Endian.LITTLE_ENDIAN;
        this._qE.writeByte(160);
        this._qE.writeUnsignedInt(1);
        this._qE.writeByte(161);
        this._qE.writeByte(((_local5) ? 1 : 0));
        var _local6:Array = _arg2.replace(/[\f\n\r\v]+/g, "\n").split("\n");
        var _local7:int;
        var _local8:int;
        var _local10:int = _local6.length;
        _local9 = 0;
        while ((((_local9 < _local10)) && ((this._0Tz == "")))) {
            _local11 = new String(_local6[_local9]);
            _local12 = _local11.search("//");
            if (_local12 != -1) {
                _local11 = _local11.slice(0, _local12);
            }
            ;
            _local13 = _local11.search(/<.*>/g);
            if (_local13 != -1) {
                _local14 = _local11.slice(_local13).match(/([\w\.\-\+]+)/gi);
                _local11 = _local11.slice(0, _local13);
            }
            ;
            _local15 = _local11.match(/^\w{3}/ig);
            _local16 = _0iP[_local15[0]];
            if (this._1lx) {
                trace(_local16);
            }
            ;
            if (_local16 == null) {
                if (_local11.length >= 3) {
                    trace(((("warning: bad line " + _local9) + ": ") + _local6[_local9]));
                }
                ;
            } else {
                _local11 = _local11.slice((_local11.search(_local16.name) + _local16.name.length));
                if ((_local16.flags & _f2)) {
                    --_local7;
                    if (_local7 < 0) {
                        this._0Tz = "error: conditional closes without open.";
                        break;
                    }
                    ;
                }
                ;
                if ((_local16.flags & _0LK)) {
                    _local7++;
                    if (_local7 > _B9) {
                        this._0Tz = (("error: nesting to deep, maximum allowed is " + _B9) + ".");
                        break;
                    }
                    ;
                }
                ;
                if ((((_local16.flags & _oy)) && (!(_local5)))) {
                    this._0Tz = "error: opcode is only allowed in fragment programs.";
                    break;
                }
                ;
                if (_arg3) {
                    trace(("emit opcode=" + _local16));
                }
                ;
                this._qE.writeUnsignedInt(_local16.emitCode);
                _local8++;
                if (_local8 > _0gL) {
                    this._0Tz = (("error: too many opcodes. maximum is " + _0gL) + ".");
                    break;
                }
                ;
                _local17 = _local11.match(/vc\[([vof][actps]?)(\d*)?(\.[xyzw](\+\d{1,3})?)?\](\.[xyzw]{1,4})?|([vof][actps]?)(\d*)?(\.[xyzw]{1,4})?/gi);
                if (_local17.length != _local16.numRegister) {
                    this._0Tz = (((("error: wrong number of operands. found " + _local17.length) + " but expected ") + _local16.numRegister) + ".");
                    break;
                }
                ;
                _local18 = false;
                _local19 = ((64 + 64) + 32);
                _local20 = _local17.length;
                _local21 = 0;
                while (_local21 < _local20) {
                    _local22 = false;
                    _local23 = _local17[_local21].match(/\[.*\]/ig);
                    if (_local23.length > 0) {
                        _local17[_local21] = _local17[_local21].replace(_local23[0], "0");
                        if (_arg3) {
                            trace("IS REL");
                        }
                        ;
                        _local22 = true;
                    }
                    ;
                    _local24 = _local17[_local21].match(/^\b[A-Za-z]{1,2}/ig);
                    _local25 = _0D[_local24[0]];
                    if (this._1lx) {
                        trace(_local25);
                    }
                    ;
                    if (_local25 == null) {
                        this._0Tz = (((("error: could not parse operand " + _local21) + " (") + _local17[_local21]) + ").");
                        _local18 = true;
                        break;
                    }
                    ;
                    if (_local5) {
                        if (!(_local25.flags & _0qc)) {
                            this._0Tz = (((("error: register operand " + _local21) + " (") + _local17[_local21]) + ") only allowed in vertex programs.");
                            _local18 = true;
                            break;
                        }
                        ;
                        if (_local22) {
                            this._0Tz = (((("error: register operand " + _local21) + " (") + _local17[_local21]) + ") relative adressing not allowed in fragment programs.");
                            _local18 = true;
                            break;
                        }
                        ;
                    } else {
                        if (!(_local25.flags & _1fN)) {
                            this._0Tz = (((("error: register operand " + _local21) + " (") + _local17[_local21]) + ") only allowed in fragment programs.");
                            _local18 = true;
                            break;
                        }
                        ;
                    }
                    ;
                    _local17[_local21] = _local17[_local21].slice((_local17[_local21].search(_local25.name) + _local25.name.length));
                    _local26 = ((_local22) ? _local23[0].match(/\d+/) : _local17[_local21].match(/\d+/));
                    _local27 = 0;
                    if (_local26) {
                        _local27 = uint(_local26[0]);
                    }
                    ;
                    if (_local25.range < _local27) {
                        this._0Tz = (((((("error: register operand " + _local21) + " (") + _local17[_local21]) + ") index exceeds limit of ") + (_local25.range + 1)) + ".");
                        _local18 = true;
                        break;
                    }
                    ;
                    _local28 = 0;
                    _local29 = _local17[_local21].match(/(\.[xyzw]{1,4})/);
                    _local30 = (((_local21 == 0)) && (!((_local16.flags & _1ku))));
                    _local31 = (((_local21 == 2)) && ((_local16.flags & _1ID)));
                    _local32 = 0;
                    _local33 = 0;
                    _local34 = 0;
                    if (((_local30) && (_local22))) {
                        this._0Tz = "error: relative can not be destination";
                        _local18 = true;
                        break;
                    }
                    ;
                    if (_local29) {
                        _local28 = 0;
                        _local36 = _local29[0].length;
                        _local37 = 1;
                        while (_local37 < _local36) {
                            _local35 = (_local29[0].charCodeAt(_local37) - "x".charCodeAt(0));
                            if (_local35 > 2) {
                                _local35 = 3;
                            }
                            ;
                            if (_local30) {
                                _local28 = (_local28 | (1 << _local35));
                            } else {
                                _local28 = (_local28 | (_local35 << ((_local37 - 1) << 1)));
                            }
                            ;
                            _local37++;
                        }
                        ;
                        if (!_local30) {
                            while (_local37 <= 4) {
                                _local28 = (_local28 | (_local35 << ((_local37 - 1) << 1)));
                                _local37++;
                            }
                            ;
                        }
                        ;
                    } else {
                        _local28 = ((_local30) ? 15 : 228);
                    }
                    ;
                    if (_local22) {
                        _local38 = _local23[0].match(/[A-Za-z]{1,2}/ig);
                        _local39 = _0D[_local38[0]];
                        if (_local39 == null) {
                            this._0Tz = "error: bad index register";
                            _local18 = true;
                            break;
                        }
                        ;
                        _local32 = _local39.emitCode;
                        _local40 = _local23[0].match(/(\.[xyzw]{1,1})/);
                        if (_local40.length == 0) {
                            this._0Tz = "error: bad index register select";
                            _local18 = true;
                            break;
                        }
                        ;
                        _local33 = (_local40[0].charCodeAt(1) - "x".charCodeAt(0));
                        if (_local33 > 2) {
                            _local33 = 3;
                        }
                        ;
                        _local41 = _local23[0].match(/\+\d{1,3}/ig);
                        if (_local41.length > 0) {
                            _local34 = _local41[0];
                        }
                        ;
                        if ((((_local34 < 0)) || ((_local34 > 0xFF)))) {
                            this._0Tz = (("error: index offset " + _local34) + " out of bounds. [0..255]");
                            _local18 = true;
                            break;
                        }
                        ;
                        if (_arg3) {
                            trace(((((((((((("RELATIVE: type=" + _local32) + "==") + _local38[0]) + " sel=") + _local33) + "==") + _local40[0]) + " idx=") + _local27) + " offset=") + _local34));
                        }
                        ;
                    }
                    ;
                    if (_arg3) {
                        trace((((((("  emit argcode=" + _local25) + "[") + _local27) + "][") + _local28) + "]"));
                    }
                    ;
                    if (_local30) {
                        this._qE.writeShort(_local27);
                        this._qE.writeByte(_local28);
                        this._qE.writeByte(_local25.emitCode);
                        _local19 = (_local19 - 32);
                    } else {
                        if (_local31) {
                            if (_arg3) {
                                trace("  emit sampler");
                            }
                            ;
                            _local42 = 5;
                            _local43 = _local14.length;
                            _local44 = 0;
                            _local37 = 0;
                            while (_local37 < _local43) {
                                if (_arg3) {
                                    trace(("    opt: " + _local14[_local37]));
                                }
                                ;
                                _local45 = _mW[_local14[_local37]];
                                if (_local45 == null) {
                                    _local44 = Number(_local14[_local37]);
                                    if (_arg3) {
                                        trace(("    bias: " + _local44));
                                    }
                                    ;
                                } else {
                                    if (_local45.flag != _0BM) {
                                        _local42 = (_local42 & ~((15 << _local45.flag)));
                                    }
                                    ;
                                    _local42 = (_local42 | (uint(_local45.mask) << uint(_local45.flag)));
                                }
                                ;
                                _local37++;
                            }
                            ;
                            this._qE.writeShort(_local27);
                            this._qE.writeByte(int((_local44 * 8)));
                            this._qE.writeByte(0);
                            this._qE.writeUnsignedInt(_local42);
                            if (_arg3) {
                                trace(("    bits: " + (_local42 - 5)));
                            }
                            ;
                            _local19 = (_local19 - 64);
                        } else {
                            if (_local21 == 0) {
                                this._qE.writeUnsignedInt(0);
                                _local19 = (_local19 - 32);
                            }
                            ;
                            this._qE.writeShort(_local27);
                            this._qE.writeByte(_local34);
                            this._qE.writeByte(_local28);
                            this._qE.writeByte(_local25.emitCode);
                            this._qE.writeByte(_local32);
                            this._qE.writeShort(((_local22) ? (_local33 | (1 << 15)) : 0));
                            _local19 = (_local19 - 64);
                        }
                        ;
                    }
                    ;
                    _local21++;
                }
                ;
                _local21 = 0;
                while (_local21 < _local19) {
                    this._qE.writeByte(0);
                    _local21 = (_local21 + 8);
                }
                ;
                if (_local18) break;
            }
            ;
            _local9++;
        }
        ;
        if (this._0Tz != "") {
            this._0Tz = (this._0Tz + ((("\n  at line " + _local9) + " ") + _local6[_local9]));
            this._qE.length = 0;
            trace(this._0Tz);
        }
        ;
        if (this._1lx) {
            _local46 = "generated bytecode:";
            _local47 = this._qE.length;
            _local48 = 0;
            while (_local48 < _local47) {
                if (!(_local48 % 16)) {
                    _local46 = (_local46 + "\n");
                }
                ;
                if (!(_local48 % 4)) {
                    _local46 = (_local46 + " ");
                }
                ;
                _local49 = this._qE[_local48].toString(16);
                if (_local49.length < 2) {
                    _local49 = ("0" + _local49);
                }
                ;
                _local46 = (_local46 + _local49);
                _local48++;
            }
            ;
            trace(_local46);
        }
        ;
        if (_arg3) {
            trace((("AGALMiniAssembler.assemble time: " + ((getTimer() - _local4) / 1000)) + "s"));
        }
        ;
        return (this._qE);
    }


}
}//package _19L

class OpCode {

    private var _emitCode:uint;
    private var _flags:uint;
    private var _name:String;
    private var _numRegister:uint;

    public function OpCode(_arg1:String, _arg2:uint, _arg3:uint, _arg4:uint) {
        this._name = _arg1;
        this._numRegister = _arg2;
        this._emitCode = _arg3;
        this._flags = _arg4;
    }

    public function get emitCode():uint {
        return (this._emitCode);
    }

    public function get flags():uint {
        return (this._flags);
    }

    public function get name():String {
        return (this._name);
    }

    public function get numRegister():uint {
        return (this._numRegister);
    }

    public function toString():String {
        return ((((((((('[OpCode name="' + this._name) + '", numRegister=') + this._numRegister) + ", emitCode=") + this._emitCode) + ", flags=") + this._flags) + "]"));
    }


}
class Register {

    private var _emitCode:uint;
    private var _name:String;
    private var _longName:String;
    private var _flags:uint;
    private var _range:uint;

    public function Register(_arg1:String, _arg2:String, _arg3:uint, _arg4:uint, _arg5:uint) {
        this._name = _arg1;
        this._longName = _arg2;
        this._emitCode = _arg3;
        this._range = _arg4;
        this._flags = _arg5;
    }

    public function get emitCode():uint {
        return (this._emitCode);
    }

    public function get longName():String {
        return (this._longName);
    }

    public function get name():String {
        return (this._name);
    }

    public function get flags():uint {
        return (this._flags);
    }

    public function get range():uint {
        return (this._range);
    }

    public function toString():String {
        return ((((((((((('[Register name="' + this._name) + '", longName="') + this._longName) + '", emitCode=') + this._emitCode) + ", range=") + this._range) + ", flags=") + this._flags) + "]"));
    }


}
class Sampler {

    private var _flag:uint;
    private var _mask:uint;
    private var _name:String;

    public function Sampler(_arg1:String, _arg2:uint, _arg3:uint) {
        this._name = _arg1;
        this._flag = _arg2;
        this._mask = _arg3;
    }

    public function get flag():uint {
        return (this._flag);
    }

    public function get mask():uint {
        return (this._mask);
    }

    public function get name():String {
        return (this._name);
    }

    public function toString():String {
        return ((((((('[Sampler name="' + this._name) + '", flag="') + this._flag) + '", mask=') + this.mask) + "]"));
    }


}

