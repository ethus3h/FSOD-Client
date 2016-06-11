// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.ConditionEffect

package com.company.assembleegameclient.util {
import _6u._TG;

import _Jm._0R9;

import com.company.util.AssetLibrary;
import com.company.util.PointUtil;

import flash.display.BitmapData;
import flash.filters.BitmapFilterQuality;
import flash.filters.GlowFilter;
import flash.geom.Matrix;

public class ConditionEffect {

    public static const _0Lz:uint = 0;
    public static const _1t9:uint = 1;
    public static const _1Pt:uint = 2;
    public static const _0Xu:uint = 3;
    public static const _1Dv:uint = 4;
    public static const _0Mn:uint = 5;
    public static const _1Vs:uint = 6;
    public static const _1s:uint = 7;
    public static const _0Vl:uint = 8;
    public static const _qF:uint = 9;
    public static const _Dx:uint = 10;
    public static const _0cz:uint = 11;
    public static const _00J:uint = 12;
    public static const _oK:uint = 13;
    public static const _1mk:uint = 14;
    public static const _0XA:uint = 15;
    public static const _0zR:uint = 16;
    public static const _03M:uint = 17;
    public static const _19:uint = 18;
    public static const _0oA:uint = 19;
    public static const _1qd:uint = 20;
    public static const _Il:uint = 21;
    public static const _tW:uint = 22;
    public static const _126:uint = 23;
    public static const _c:uint = 24;
    public static const _1Iq:uint = 25;
    public static const _aN:uint = 26;
    public static const _Xu:uint = 27;
    public static const _vO:uint = 28;
    public static const _Kp:uint = 29;
    public static const _1HL:uint = 30;
    public static const _1it:uint = 31;
    public static const _4l:uint = 32;
    public static const _0C3:uint = 33;
    public static const _1ub:uint = 34;
    public static const _0KQ:uint = 35;
    public static const _18n:uint = 36;
    public static const _Up:uint = 37;
    public static const _129:uint = 38;
    public static const _16n:uint = 39;
    public static const _TM:uint = 40;
    public static const _r8:uint = 41;
    public static const _U3:uint = 42;
    public static const _E9:uint = 43;
    public static const _20f:uint = 44;
    public static const _1Uk:uint = 45;
    public static const _0ne:uint = 46;
    public static const _9M:uint = 47;
    public static const _HY:uint = 99;
    public static const _1o:uint = (1 << (_1t9 - 1));
    public static const _1nS:uint = (1 << (_1Pt - 1));
    public static const _1Ey:uint = (1 << (_0Xu - 1));
    public static const _0PQ:uint = (1 << (_1Dv - 1));
    public static const _If:uint = (1 << (_0Mn - 1));
    public static const _1Cc:uint = (1 << (_1Vs - 1));
    public static const _0Cg:uint = (1 << (_1s - 1));
    public static const _0aB:uint = (1 << (_0Vl - 1));
    public static const _1jV:uint = (1 << (_qF - 1));
    public static const _0Lb:uint = (1 << (_Dx - 1));
    public static const _RC:uint = (1 << (_0cz - 1));
    public static const _1C9:uint = (1 << (_00J - 1));
    public static const _1Nx:uint = (1 << (_oK - 1));
    public static const _1Za:uint = (1 << (_1mk - 1));
    public static const _kr:uint = (1 << (_0XA - 1));
    public static const _Si:uint = (1 << (_0zR - 1));
    public static const _0IG:uint = (1 << (_03M - 1));
    public static const _0y1:uint = (1 << (_19 - -1));
    public static const _13k:uint = (1 << (_0oA - 1));
    public static const _0D8:uint = (1 << (_1qd - 1));
    public static const _19Q:uint = (1 << (_Il - 1));
    public static const _0zM:uint = (1 << (_tW - 1));
    public static const _rm:uint = (1 << (_126 - 1));
    public static const _0BC:uint = (1 << (_c - -1));
    public static const _2N:uint = (1 << (_1Iq - 1));
    public static const _1HD:uint = (1 << (_aN - 1));
    public static const _1o2:uint = (1 << (_Xu - 1));
    public static const _15Q:uint = (1 << (_vO - 1));
    public static const _0Y:uint = (1 << (_Kp - 1));
    public static const _15u:uint = (1 << (_1HL - 1));
    public static const _0g7:uint = (1 << (_1it - 1));
    public static const _0iN:uint = (1 << (_4l - _OT));
    public static const _1u8:uint = (1 << (_0C3 - _OT));
    public static const _1Io:uint = (1 << (_1ub - _OT));
    public static const _136:uint = (1 << (_0KQ - _OT));
    public static const _0WL:uint = (1 << (_18n - _OT));
    public static const _08K:uint = (1 << (_Up - _OT));
    public static const _Z:uint = (1 << (_129 - _OT));
    public static const _0dL:uint = (1 << (_16n - _OT));
    public static const _0U:uint = (1 << (_TM - _OT));
    public static const _1VJ:uint = (1 << (_r8 - _OT));
    public static const _0PU:uint = (1 << (_U3 - _OT));
    public static const _0kW:uint = (1 << (_E9 - _OT));
    public static const _0fk:uint = (1 << (_20f - _OT));
    public static const _0Fu:uint = (1 << (_1Uk - _OT));
    public static const _9a:uint = (1 << (_0ne - _OT));
    public static const _1Ov:uint = (1 << (_9M - _OT));
    public static const _1YU:uint = ((_0Lb | _0aB) | _19Q);
    public static const _11S:uint = 0;
    public static const _T1:uint = 1;
    public static const _1dd:uint = 2;
    public static const _OT:uint = 32;
    private static const GLOW_FILTER:GlowFilter = new GlowFilter(0, 0.3, 6, 6, 2, BitmapFilterQuality.LOW, false, false);

    public static var effects_:Vector.<ConditionEffect> = new <ConditionEffect>[new ConditionEffect("Nothing", 0, null, _TG._1Wg), new ConditionEffect("Dead", _1o, null, _TG._1NS), new ConditionEffect("Quiet", _1nS, [32], _TG._0SJ), new ConditionEffect("Weak", _1Ey, [34, 35, 36, 37], _TG._0Ll), new ConditionEffect("Slowed", _0PQ, [1], _TG._1vQ), new ConditionEffect("Sick", _If, [39], _TG._17b), new ConditionEffect("Dazed", _1Cc, [44], _TG._0NO), new ConditionEffect("Stunned", _0Cg, [45], _TG._1He), new ConditionEffect("Blind", _0aB, [41], _TG._pn), new ConditionEffect("Hallucinating", _1jV, [42], _TG._ao), new ConditionEffect("Drunk", _0Lb, [43], _TG._0x), new ConditionEffect("Confused", _RC, [2], _TG._1SQ), new ConditionEffect("Stun Immune", _1C9, null, _TG._07z), new ConditionEffect("Invisible", _1Nx, null, _TG._1zn), new ConditionEffect("Paralyzed", _1Za, [53, 54], _TG._0ts), new ConditionEffect("Speedy", _kr, [0], _TG._1FT), new ConditionEffect("Bleeding", _Si, [46], _TG._1F0), new ConditionEffect("Armor Broken Immune", _0IG, null, _TG._1U0), new ConditionEffect("Healing", _0y1, [47], _TG._1BX), new ConditionEffect("Damaging", _13k, [49], _TG._vB), new ConditionEffect("Berserk", _0D8, [50], _TG._06Z), new ConditionEffect("Paused", _19Q, null, _TG._6d), new ConditionEffect("Stasis", _0zM, null, _TG._Su), new ConditionEffect("Stasis Immune", _rm, null, _TG._11B), new ConditionEffect("Invincible", _0BC, null, _TG._0pa), new ConditionEffect("Invulnerable", _2N, [17], _TG._Ab), new ConditionEffect("Armored", _1HD, [16], _TG._0LE), new ConditionEffect("Armor Broken", _1o2, [55], _TG._jQ), new ConditionEffect("Hexed", _15Q, [42], _TG._07c), new ConditionEffect("Ninja Speedy", _0Y, [0], _TG._1LF), new ConditionEffect("Unstable", _15u, [56], _TG._18o), new ConditionEffect("Darkness", _0g7, [57], _TG._0i), new ConditionEffect("Slowed Immune", _0iN, null, _TG._1sQ), new ConditionEffect("Dazed Immune", _1u8, null, _TG._h5), new ConditionEffect("Paralyzed Immune", _1Io, null, _TG._1QU), new ConditionEffect("Petrify", _136, null, _TG._0Q2), new ConditionEffect("Petrify Immune", _0WL, null, _TG._07W), new ConditionEffect("Pet Disable", _08K, [27], _TG._Su, true), new ConditionEffect("Curse", _Z, [58], _TG._0xe), new ConditionEffect("Curse Immune", _0dL, null, _TG._1Dy), new ConditionEffect("HP Boost", _0U, [32], "HP Boost", true), new ConditionEffect("MP Boost", _1VJ, [33], "MP Boost", true), new ConditionEffect("Att Boost", _0PU, [34], "Att Boost", true), new ConditionEffect("Def Boost", _0kW, [35], "Def Boost", true), new ConditionEffect("Spd Boost", _0fk, [36], "Spd Boost", true), new ConditionEffect("Vit Boost", _0Fu, [38], "Vit Boost", true), new ConditionEffect("Wis Boost", _9a, [39], "Wis Boost", true), new ConditionEffect("Dex Boost", _1Ov, [37], "Dex Boost", true)];
    private static var _16I:Object = null;
    private static var _1vq:Object = null;
    private static var _81:Object = null;
    private static var _0YE:Object = null;

    public static function _Ry(_arg1:String):uint {
        var _local2:uint;
        if (_16I == null) {
            _16I = new Object();
            _local2 = 0;
            while (_local2 < effects_.length) {
                _16I[effects_[_local2].name_] = _local2;
                _local2++;
            }
            ;
        }
        ;
        return (_16I[_arg1]);
    }

    public static function _1Pl(_arg1:String):ConditionEffect {
        var _local2:ConditionEffect;
        for each (_local2 in effects_) {
            if (_local2.name_ == _arg1) {
                return (_local2);
            }
            ;
        }
        ;
        return (null);
    }

    public static function _0TI(_arg1:uint, _arg2:Vector.<BitmapData>, _arg3:int):void {
        var _local4:uint;
        var _local5:uint;
        var _local6:Vector.<BitmapData>;
        while (_arg1 != 0) {
            _local4 = (_arg1 & (_arg1 - 1));
            _local5 = (_arg1 ^ _local4);
            _local6 = _PP(_local5);
            if (_local6 != null) {
                _arg2.push(_local6[(_arg3 % _local6.length)]);
            }
            ;
            _arg1 = _local4;
        }
        ;
    }

    public static function getConditionEffectIcons2(_arg1:uint, _arg2:Vector.<BitmapData>, _arg3:int):void {
        var _local4:uint;
        var _local5:uint;
        var _local6:Vector.<BitmapData>;
        while (_arg1 != 0) {
            _local4 = (_arg1 & (_arg1 - 1));
            _local5 = (_arg1 ^ _local4);
            _local6 = getIconsFromBit2(_local5);
            if (_local6 != null) {
                _arg2.push(_local6[(_arg3 % _local6.length)]);
            }
            ;
            _arg1 = _local4;
        }
        ;
    }

    public static function _hT(_arg1:Vector.<BitmapData>, _arg2:int, _arg3:Boolean):void {
        var _local4:BitmapData;
        var _local5:Matrix;
        var _local6:Matrix;
        if (_1vq == null) {
            _1vq = {};
        }
        ;
        if (_1vq[_arg2]) {
            _local4 = _1vq[_arg2];
        } else {
            _local5 = new Matrix();
            _local5.translate(4, 4);
            _local6 = new Matrix();
            _local6.translate(1.5, 1.5);
            if (_arg3) {
                _local4 = new _0Iy(18, 18, true, 0);
                _local4.draw(AssetLibrary._Rb("lofiInterfaceBig", _arg2), _local6);
            } else {
                _local4 = new _0Iy(16, 16, true, 0);
                _local4.draw(AssetLibrary._Rb("lofiInterface2", _arg2), _local5);
            }
            ;
            _local4 = _0R9._ud(_local4, 0xFFFFFFFF);
            _local4.applyFilter(_local4, _local4.rect, PointUtil._0Q4, GLOW_FILTER);
            _1vq[_arg2] = _local4;
        }
        ;
        _arg1.push(_local4);
    }

    private static function _PP(_arg1:uint):Vector.<BitmapData> {
        var _local2:Matrix;
        var _local3:uint;
        var _local4:Vector.<BitmapData>;
        var _local5:int;
        var _local6:BitmapData;
        if (_81 == null) {
            _81 = new Object();
            _local2 = new Matrix();
            _local2.translate(4, 4);
            _local3 = 0;
            while (_local3 < 32) {
                _local4 = null;
                if (effects_[_local3].iconOffsets_ != null) {
                    _local4 = new Vector.<BitmapData>();
                    _local5 = 0;
                    while (_local5 < effects_[_local3].iconOffsets_.length) {
                        _local6 = new _0Iy(16, 16, true, 0);
                        _local6.draw(AssetLibrary._Rb("lofiInterface2", effects_[_local3].iconOffsets_[_local5]), _local2);
                        _local6 = _0R9._ud(_local6, 0xFFFFFFFF);
                        _local6.applyFilter(_local6, _local6.rect, PointUtil._0Q4, GLOW_FILTER);
                        _local4.push(_local6);
                        _local5++;
                    }
                    ;
                }
                ;
                _81[effects_[_local3].bit_] = _local4;
                _local3++;
            }
            ;
        }
        ;
        return (_81[_arg1]);
    }

    private static function getIconsFromBit2(_arg1:uint):Vector.<BitmapData> {
        var _local2:Vector.<BitmapData>;
        var _local3:BitmapData;
        var _local4:Matrix;
        var _local5:Matrix;
        var _local6:uint;
        var _local7:int;
        if (_0YE == null) {
            _0YE = [];
            _local2 = new Vector.<BitmapData>();
            _local4 = new Matrix();
            _local4.translate(4, 4);
            _local5 = new Matrix();
            _local5.translate(1.5, 1.5);
            _local6 = 32;
            while (_local6 < effects_.length) {
                _local2 = null;
                if (effects_[_local6].iconOffsets_ != null) {
                    _local2 = new Vector.<BitmapData>();
                    _local7 = 0;
                    while (_local7 < effects_[_local6].iconOffsets_.length) {
                        if (effects_[_local6].icon16Bit_) {
                            _local3 = new _0Iy(18, 18, true, 0);
                            _local3.draw(AssetLibrary._Rb("lofiInterfaceBig", effects_[_local6].iconOffsets_[_local7]), _local5);
                        } else {
                            _local3 = new _0Iy(16, 16, true, 0);
                            _local3.draw(AssetLibrary._Rb("lofiInterface2", effects_[_local6].iconOffsets_[_local7]), _local4);
                        }
                        ;
                        _local3 = _0R9._ud(_local3, 0xFFFFFFFF);
                        _local3.applyFilter(_local3, _local3.rect, PointUtil._0Q4, GLOW_FILTER);
                        _local2.push(_local3);
                        _local7++;
                    }
                    ;
                }
                ;
                _0YE[effects_[_local6].bit_] = _local2;
                _local6++;
            }
            ;
        }
        ;
        if (((!((_0YE == null))) && (!((_0YE[_arg1] == null))))) {
            return (_0YE[_arg1]);
        }
        ;
        return (null);
    }

    public function ConditionEffect(_arg1:String, _arg2:uint, _arg3:Array, _arg4:String = "", _arg5:Boolean = false) {
        this.name_ = _arg1;
        this.bit_ = _arg2;
        this.iconOffsets_ = _arg3;
        this._1WQ = _arg4;
        this.icon16Bit_ = _arg5;
    }
    public var name_:String;
    public var bit_:uint;
    public var iconOffsets_:Array;
    public var _1WQ:String;
    public var icon16Bit_:Boolean;


}
}//package com.company.assembleegameclient.util

