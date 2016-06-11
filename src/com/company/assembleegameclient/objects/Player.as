// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Player

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0cA._0bz;

import _0y9._JP;

import _1CB._mz;

import _1E._1ne;

import _1ES._return;

import _1Em._i9;

import _1Fr._1IN;

import _1TG._0Yn;

import _1d9._0z0;

import _6u._TG;

import _GI.LevelUpEffect;
import _GI._0bI;

import _Jm._0R9;

import _gl._1X;
import _gl._1bu;
import _gl._qV;

import _md._1ty;

import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.tutorial.Tutorial;
import com.company.assembleegameclient.tutorial.doneAction;
import com.company.assembleegameclient.util.ConditionEffect;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0CH;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0ZU;
import com.company.assembleegameclient.util._0zq;
import com.company.util.ConversionUtil;
import com.company.util.IntPoint;
import com.company.util.MoreColorUtil;
import com.company.util.PointUtil;
import com.company.util.Trig;
import com.company.util._1V;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.geom.ColorTransform;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Vector3D;
import flash.utils.Dictionary;
import flash.utils.getTimer;

import kabam.rotmg.assets.services._1Ns;

public class Player extends Character {

    public static const _0jz:int = 10000;
    private static const _1OI:Number = 0.4;
    private static const _13r:Vector.<Point> = new <Point>[new Point(0, 0), new Point(1, 0), new Point(0, 1), new Point(1, 1)];
    private static const _0tG:Matrix = new Matrix(1, 0, 0, 1, 2, 2);
    private static const _use:Matrix = new Matrix(1, 0, 0, 1, 20, 1);
    private static const _0XP:Number = 0.004;
    private static const _1Of:Number = 0.0096;
    private static const _1zX:Number = 0.0015;
    private static const _0nv:Number = 0.008;
    private static const _0vY:Number = 0.5;
    private static const _Ec:Number = 2;

    public static var _1mi:Boolean = false;
    private static var _dp:Point = new Point();

    public static function _jT(_arg1:String, _arg2:XML):Player {
        var _local3:int = int(_arg2.ObjectType);
        var _local4:XML = ObjectLibrary._18H[_local3];
        var _local5:Player = new Player(_local4);
        _local5.name_ = _arg1;
        _local5._ew = int(_arg2.Level);
        _local5.exp_ = int(_arg2.Exp);
        _local5._0Z = ConversionUtil._0mJ(_arg2.Equipment);
        _local5._022 = int(_arg2.MaxHitPoints);
        _local5._1wA = int(_arg2.HitPoints);
        _local5._0sE = int(_arg2.MaxMagicPoints);
        _local5._0e = int(_arg2.MagicPoints);
        _local5._0jT = int(_arg2.Attack);
        _local5._05c = int(_arg2.Defense);
        _local5.speed_ = int(_arg2.Speed);
        _local5._1IQ = int(_arg2.Dexterity);
        _local5._oP = int(_arg2.HpRegen);
        _local5._1EO = int(_arg2.MpRegen);
        _local5.tex1Id_ = int(_arg2.Tex1);
        _local5.tex2Id_ = int(_arg2.Tex2);
        return (_local5);
    }

    public function Player(_arg1:XML) {
        this._139 = new IntPoint();
        var _local2:_0bz = _8w._1Sz();
        this._1u7 = _local2.getInstance(_0z0);
        this.factory = _local2.getInstance(_1Ns);
        super(_arg1);
        this._0i3 = int(_arg1.Attack.@max);
        this._12o = int(_arg1.Defense.@max);
        this._M = int(_arg1.Speed.@max);
        this._0uQ = int(_arg1.Dexterity.@max);
        this._1bK = int(_arg1.HpRegen.@max);
        this._zI = int(_arg1.MpRegen.@max);
        this._0Pv = int(_arg1.MaxHitPoints.@max);
        this._1hc = int(_arg1.MaxMagicPoints.@max);
        _Y9 = new Dictionary();
    }
    public var _1uv:int;
    public var _0cg:int;
    public var skin:_0zq;
    public var isShooting:Boolean;
    public var accountId_:String = "";
    public var credits_:int = 0;
    public var _58:int = 0;
    public var numStars_:int = 0;
    public var _01D:int = 0;
    public var _0LC:Boolean = false;
    public var _1GN:int = 0;
    public var _Pq:int = -1;
    public var _ZB:int = -1;
    public var guildName_:String = null;
    public var guildRank_:int = -1;
    public var _0Mq:Boolean = false;
    public var breath_:int = -1;
    public var _0sE:int = 200;
    public var _0e:Number = 0;
    public var _Pr:int = 1000;
    public var exp_:int = 0;
    public var _0jT:int = 0;
    public var speed_:int = 0;
    public var _1IQ:int = 0;
    public var _oP:int = 0;
    public var _1EO:int = 0;
    public var _0fM:int = 0;
    public var _08J:int = 0;
    public var _0P4:int = 0;
    public var _gU:int = 0;
    public var _H8:int = 0;
    public var _0HP:int = 0;
    public var _1jk:int = 0;
    public var _0oQ:int = 0;
    public var _in:int = 0;
    public var _0E6:int = 0;
    public var _0or:int = 0;
    public var _0i3:int = 0;
    public var _12o:int = 0;
    public var _M:int = 0;
    public var _0uQ:int = 0;
    public var _1bK:int = 0;
    public var _zI:int = 0;
    public var _0Pv:int = 0;
    public var _1hc:int = 0;
    public var _0kQ:Boolean = false;
    public var starred_:Boolean = false;
    public var _18i:Boolean = false;
    public var distSqFromThisPlayer_:Number = 0;
    public var _xX:int = 0;
    public var _0wu:int = 0;
    public var _6b:int = 0;
    public var _kw:int = 0;
    public var _1XI:int = 0;
    public var _Z2:Boolean = true;
    public var _3I:String = "";
    public var _2K:String = "";
    protected var _0TO:Number = 0;
    protected var _1Xc:Point = null;
    protected var _06Q:Number = 1;
    protected var _ac:_0bI = null;
    protected var _0ci:Merchant = null;
    private var _1u7:_0z0;
    private var factory:_1Ns;
    private var _139:IntPoint;
    private var _1Kw:GraphicsSolidFill = null;
    private var _1wl:GraphicsPath = null;
    private var _0uC:GraphicsSolidFill = null;
    private var _0he:GraphicsPath = null;

    override public function moveTo(_arg1:Number, _arg2:Number):Boolean {
        var _local3:Boolean = super.moveTo(_arg1, _arg2);
        if (map_.gs_.evalIsNotInCombatMapArea()) {
            this._0ci = this._yu();
        }
        ;
        return (_local3);
    }

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local3:Number;
        var _local4:Number;
        var _local5:Number;
        var _local6:Vector3D;
        var _local7:Number;
        var _local8:int;
        var _local9:Vector.<uint>;
        if (((this._1XI) && (!(isPaused())))) {
            this._1XI = (this._1XI - _arg2);
            if (this._1XI < 0) {
                this._1XI = 0;
            }
            ;
        }
        ;
        if (((this._kw) && (!(isPaused())))) {
            this._kw = (this._kw - _arg2);
            if (this._kw < 0) {
                this._kw = 0;
            }
            ;
        }
        ;
        if (((this._1uv) && (!(isPaused())))) {
            this._1uv = (this._1uv - _arg2);
            if (this._1uv < 0) {
                this._1uv = 0;
            }
            ;
        }
        ;
        if (((_0k9()) && (!(isPaused())))) {
            if (this._ac == null) {
                this._ac = new _0bI(this);
                map_.addObj(this._ac, x_, y_);
            }
            ;
        } else {
            if (this._ac != null) {
                map_.removeObj(this._ac.objectId_);
                this._ac = null;
            }
            ;
        }
        ;
        if ((((map_.player_ == this)) && (isPaused()))) {
            return (true);
        }
        ;
        if (this._1Xc != null) {
            _local3 = Parameters.data_.cameraAngle;
            if (this._0TO != 0) {
                _local3 = (_local3 + ((_arg2 * Parameters._0P9) * this._0TO));
                Parameters.data_.cameraAngle = _local3;
            }
            ;
            if (((!((this._1Xc.x == 0))) || (!((this._1Xc.y == 0))))) {
                _local4 = this._0sM();
                _local5 = Math.atan2(this._1Xc.y, this._1Xc.x);
                if (_ml.props_.slideAmount_ > 0) {
                    _local6 = new Vector3D();
                    _local6.x = (_local4 * Math.cos((_local3 + _local5)));
                    _local6.y = (_local4 * Math.sin((_local3 + _local5)));
                    _local6.z = 0;
                    _local7 = _local6.length;
                    _local6.scaleBy((-1 * (_ml.props_.slideAmount_ - 1)));
                    moveVec_.scaleBy(_ml.props_.slideAmount_);
                    if (moveVec_.length < _local7) {
                        moveVec_ = moveVec_.add(_local6);
                    }
                    ;
                } else {
                    moveVec_.x = (_local4 * Math.cos((_local3 + _local5)));
                    moveVec_.y = (_local4 * Math.sin((_local3 + _local5)));
                }
                ;
            } else {
                if ((((moveVec_.length > 0.00012)) && ((_ml.props_.slideAmount_ > 0)))) {
                    moveVec_.scaleBy(_ml.props_.slideAmount_);
                } else {
                    moveVec_.x = 0;
                    moveVec_.y = 0;
                }
                ;
            }
            ;
            if (((!((_ml == null))) && (_ml.props_.push_))) {
                moveVec_.x = (moveVec_.x - (_ml.props_.animate_.dx_ / 1000));
                moveVec_.y = (moveVec_.y - (_ml.props_.animate_.dy_ / 1000));
            }
            ;
            this._1QR((x_ + (_arg2 * moveVec_.x)), (y_ + (_arg2 * moveVec_.y)));
        } else {
            if (!super.update(_arg1, _arg2)) {
                return (false);
            }
            ;
        }
        ;
        if ((((((((((map_.player_ == this)) && ((_ml.props_.maxDamage_ > 0)))) && (((_ml.lastDamage_ + 500) < _arg1)))) && (!(_1vY())))) && ((((_ml.obj_ == null)) || (!(_ml.obj_.props_.protectFromGroundDamage_)))))) {
            _local8 = map_.gs_.gsc_.getNextDamage(_ml.props_.minDamage_, _ml.props_.maxDamage_);
            _local9 = new Vector.<uint>();
            _local9.push(ConditionEffect._HY);
            damage(-1, _local8, _local9, (_1wA <= _local8), null);
            map_.gs_.gsc_.groundDamage(_arg1, x_, y_);
            _ml.lastDamage_ = _arg1;
        }
        ;
        return (true);
    }

    override protected function makeNameBitmapData():BitmapData {
        var _local1:_1vN = new _1M(name_);
        var _local2:_JP = _8w._1Sz().getInstance(_JP);
        var _local3:BitmapData = _local2.make(_local1, 16, this._0Wo(), true, _use, true);
        _local3.draw(_0ZU._1CO(this.numStars_), _0tG);
        return (_local3);
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        super.draw(_arg1, _arg2, _arg3);
        if (this != map_.player_) {
            if (!Parameters._20Z) {
                _9J(_arg1, _arg2);
            }
            ;
        } else {
            if (this.breath_ >= 0) {
                this._1f5(_arg1, _arg3);
            }
            ;
        }
        ;
    }

    override protected function getTexture(_arg1:_18q, _arg2:int):BitmapData {
        var _local5:_0T2;
        var _local10:int;
        var _local11:Dictionary;
        var _local12:Number;
        var _local13:int;
        var _local14:ColorTransform;
        var _local3:Number = 0;
        var _local4:int = _0zq._c0;
        if (((this.isShooting) || ((_arg2 < (_089 + this._xX))))) {
            _Zo = _5E;
            _local3 = (((_arg2 - _089) % this._xX) / this._xX);
            _local4 = _0zq._4z;
        } else {
            if (((!((moveVec_.x == 0))) || (!((moveVec_.y == 0))))) {
                _local10 = (3.5 / this._0sM());
                if (((!((moveVec_.y == 0))) || (!((moveVec_.x == 0))))) {
                    _Zo = Math.atan2(moveVec_.y, moveVec_.x);
                }
                ;
                _local3 = ((_arg2 % _local10) / _local10);
                _local4 = _0zq._1W2;
            }
            ;
        }
        ;
        if (this._0Fs()) {
            ((this._Z2) && (this._3Y()));
        } else {
            if (!this._Z2) {
                this._0Fx();
            }
            ;
        }
        ;
        if (_arg1._0Fy) {
            _local5 = new _0T2(_(), null);
        } else {
            _local5 = _0TX.imageFromFacing(_Zo, _arg1, _local4, _local3);
        }
        ;
        var _local6:int = tex1Id_;
        var _local7:int = tex2Id_;
        var _local8:BitmapData;
        if (this._0ci) {
            _local11 = _Y9[this._0ci];
            if (_local11 == null) {
                _Y9[this._0ci] = new Dictionary();
            } else {
                _local8 = _local11[_local5];
            }
            ;
            _local6 = this._0ci.getTex1Id(tex1Id_);
            _local7 = this._0ci.getTex2Id(tex2Id_);
        } else {
            _local8 = _Y9[_local5];
        }
        ;
        if (_local8 == null) {
            _local8 = TextureRedrawer.resize(_local5.image_, _local5.mask_, size_, false, _local6, _local7);
            if (this._0ci != null) {
                _Y9[this._0ci][_local5] = _local8;
            } else {
                _Y9[_local5] = _local8;
            }
            ;
        }
        ;
        if (_1wA < (_022 * 0.2)) {
            _local12 = (int((Math.abs(Math.sin((_arg2 / 200))) * 10)) / 10);
            _local13 = 128;
            _local14 = new ColorTransform(1, 1, 1, 1, (_local12 * _local13), (-(_local12) * _local13), (-(_local12) * _local13));
            _local8 = _1V._EJ(_local8, _local14);
        }
        ;
        var _local9:BitmapData = _Y9[_local8];
        if (_local9 == null) {
            _local9 = _0R9._ud(_local8, (((this._ZB == -1)) ? 0 : 0xFF0000));
            _Y9[_local8] = _local9;
        }
        ;
        if (((((isPaused()) || (_AF()))) || (_0TK()))) {
            _local9 = _1V._2b(_local9, _ak);
        } else {
            if (_Rl()) {
                _local9 = _1V._iZ(_local9, 0.4);
            }
            ;
        }
        ;
        return (_local9);
    }

    override public function getPortrait():BitmapData {
        var _local1:_0T2;
        var _local2:int;
        if (_0H == null) {
            _local1 = _0TX.imageFromDir(_0zq.RIGHT, _0zq._c0, 0);
            _local2 = ((4 / _local1.image_.width) * 100);
            _0H = TextureRedrawer.resize(_local1.image_, _local1.mask_, _local2, true, tex1Id_, tex2Id_);
            _0H = _0R9._ud(_0H, 0);
        }
        ;
        return (_0H);
    }

    override public function setAttack(_arg1:int, _arg2:Number):void {
        var _local3:XML = ObjectLibrary._18H[_arg1];
        if ((((_local3 == null)) || (!(_local3.hasOwnProperty("RateOfFire"))))) {
            return;
        }
        ;
        var _local4:Number = Number(_local3.RateOfFire);
        this._xX = ((1 / this._od()) * (1 / _local4));
        super.setAttack(_arg1, _arg2);
    }

    public function _1Dq(_arg1:Number, _arg2:Number, _arg3:Number):void {
        var _local4:Number;
        if (this._1Xc == null) {
            this._1Xc = new Point();
        }
        ;
        this._0TO = _arg1;
        this._1Xc.x = _arg2;
        this._1Xc.y = _arg3;
        if (_0zt()) {
            _local4 = this._1Xc.x;
            this._1Xc.x = -(this._1Xc.y);
            this._1Xc.y = -(_local4);
            this._0TO = -(this._0TO);
        }
        ;
    }

    public function _Oi(_arg1:int):void {
        this.credits_ = _arg1;
    }

    public function setTokens(_arg1:int):void {
        this._58 = _arg1;
    }

    public function _1t8(_arg1:String):void {
        var _local3:GameObject;
        var _local4:Player;
        var _local5:Boolean;
        this.guildName_ = _arg1;
        var _local2:Player = map_.player_;
        if (_local2 == this) {
            for each (_local3 in map_.goDict_) {
                _local4 = (_local3 as Player);
                if (((!((_local4 == null))) && (!((_local4 == this))))) {
                    _local4._1t8(_local4.guildName_);
                }
                ;
            }
            ;
        } else {
            _local5 = ((((((!((_local2 == null))) && (!((_local2.guildName_ == null))))) && (!((_local2.guildName_ == ""))))) && ((_local2.guildName_ == this.guildName_)));
            if (_local5 != this._0Mq) {
                this._0Mq = _local5;
                _ar = null;
            }
            ;
        }
        ;
    }

    public function _Ym(_arg1:Player):Boolean {
        return (!(((_arg1.isPaused()) || (_arg1._Rl()))));
    }

    public function _U():int {
        var _local1:int = getTimer();
        return (Math.max(0, (this._6b - _local1)));
    }

    public function _0vG(_arg1:Player):Boolean {
        if (isPaused()) {
            this._1u7.dispatch(this._jC(_TG._Jz));
            return (false);
        }
        ;
        var _local2:int = this._U();
        if (_local2 > 0) {
            this._1u7.dispatch(this._jC(_TG._wX, {seconds: int(((_local2 / 1000) + 1))}));
            return (false);
        }
        ;
        if (!this._Ym(_arg1)) {
            if (_arg1._Rl()) {
                this._1u7.dispatch(this._jC(_TG._17V, {player: _arg1.name_}));
            } else {
                this._1u7.dispatch(this._jC(_TG._Ap, {player: _arg1.name_}));
            }
            ;
            return (false);
        }
        ;
        map_.gs_.gsc_.teleport(_arg1.objectId_);
        this._6b = (getTimer() + _0jz);
        return (true);
    }

    public function _0sA(_arg1:String, _arg2:Boolean = true):void {
        if (_arg2) {
            this._it();
        }
        ;
        var _local3:_mz = new _mz(this, new _5R().setParams(_arg1), 0xFF00, 2000);
        map_.mapOverlay_.addQueuedText(_local3);
    }

    public function _1pS(_arg1:Boolean):void {
        _0Yn.play("level_up");
        if (_arg1) {
            this._0sA(_TG._C, false);
            this._0sA(_TG._0Yh);
        } else {
            this._0sA(_TG._0Yh);
        }
        ;
    }

    public function _it(_arg1:uint = 0xFF00FF00):void {
        map_.addObj(new LevelUpEffect(this, _arg1, 20), x_, y_);
    }

    public function _0lH(_arg1:int):void {
        if (_ew == 20) {
            return;
        }
        ;
        var _local2:_i9 = new _i9(this, 0xFF00, 1000);
        _local2.setStringBuilder(new _5R().setParams(_TG._ZF, {exp: _arg1}));
        map_.mapOverlay_.addStatusText(_local2);
    }

    public function _1QR(_arg1:Number, _arg2:Number):Boolean {
        this._03G(_arg1, _arg2, _dp);
        return (this.moveTo(_dp.x, _dp.y));
    }

    public function _03G(_arg1:Number, _arg2:Number, _arg3:Point):void {
        if (((_11A()) || (_0TK()))) {
            _arg3.x = x_;
            _arg3.y = y_;
            return;
        }
        ;
        var _local4:Number = (_arg1 - x_);
        var _local5:Number = (_arg2 - y_);
        if ((((((((_local4 < _1OI)) && ((_local4 > -(_1OI))))) && ((_local5 < _1OI)))) && ((_local5 > -(_1OI))))) {
            this._1hC(_arg1, _arg2, _arg3);
            return;
        }
        ;
        var _local6:Number = (_1OI / Math.max(Math.abs(_local4), Math.abs(_local5)));
        var _local7:Number = 0;
        _arg3.x = x_;
        _arg3.y = y_;
        var _local8:Boolean;
        while (!(_local8)) {
            if ((_local7 + _local6) >= 1) {
                _local6 = (1 - _local7);
                _local8 = true;
            }
            ;
            this._1hC((_arg3.x + (_local4 * _local6)), (_arg3.y + (_local5 * _local6)), _arg3);
            _local7 = (_local7 + _local6);
        }
        ;
    }

    public function _1hC(_arg1:Number, _arg2:Number, _arg3:Point):void {
        var _local6:Number;
        var _local7:Number;
        var _local4:Boolean = ((((((x_ % 0.5) == 0)) && (!((_arg1 == x_))))) || (!((int((x_ / 0.5)) == int((_arg1 / 0.5))))));
        var _local5:Boolean = ((((((y_ % 0.5) == 0)) && (!((_arg2 == y_))))) || (!((int((y_ / 0.5)) == int((_arg2 / 0.5))))));
        if (((((!(_local4)) && (!(_local5)))) || (this._1Wo(_arg1, _arg2)))) {
            _arg3.x = _arg1;
            _arg3.y = _arg2;
            return;
        }
        ;
        if (_local4) {
            _local6 = (((_arg1) > x_) ? (int((_arg1 * 2)) / 2) : (int((x_ * 2)) / 2));
            if (int(_local6) > int(x_)) {
                _local6 = (_local6 - 0.01);
            }
            ;
        }
        ;
        if (_local5) {
            _local7 = (((_arg2) > y_) ? (int((_arg2 * 2)) / 2) : (int((y_ * 2)) / 2));
            if (int(_local7) > int(y_)) {
                _local7 = (_local7 - 0.01);
            }
            ;
        }
        ;
        if (!_local4) {
            _arg3.x = _arg1;
            _arg3.y = _local7;
            if (((!((_ml == null))) && (!((_ml.props_.slideAmount_ == 0))))) {
                this._1vo(false);
            }
            ;
            return;
        }
        ;
        if (!_local5) {
            _arg3.x = _local6;
            _arg3.y = _arg2;
            if (((!((_ml == null))) && (!((_ml.props_.slideAmount_ == 0))))) {
                this._1vo(true);
            }
            ;
            return;
        }
        ;
        var _local8:Number = (((_arg1) > x_) ? (_arg1 - _local6) : (_local6 - _arg1));
        var _local9:Number = (((_arg2) > y_) ? (_arg2 - _local7) : (_local7 - _arg2));
        if (_local8 > _local9) {
            if (this._1Wo(_arg1, _local7)) {
                _arg3.x = _arg1;
                _arg3.y = _local7;
                return;
            }
            ;
            if (this._1Wo(_local6, _arg2)) {
                _arg3.x = _local6;
                _arg3.y = _arg2;
                return;
            }
            ;
        } else {
            if (this._1Wo(_local6, _arg2)) {
                _arg3.x = _local6;
                _arg3.y = _arg2;
                return;
            }
            ;
            if (this._1Wo(_arg1, _local7)) {
                _arg3.x = _arg1;
                _arg3.y = _local7;
                return;
            }
            ;
        }
        ;
        _arg3.x = _local6;
        _arg3.y = _local7;
    }

    public function _1Wo(_arg1:Number, _arg2:Number):Boolean {
        var _local3:Square = map_.getSquare(_arg1, _arg2);
        if (((!((_ml == _local3))) && ((((_local3 == null)) || (!(_local3._0SI())))))) {
            return (false);
        }
        ;
        var _local4:Number = (_arg1 - int(_arg1));
        var _local5:Number = (_arg2 - int(_arg2));
        if (_local4 < 0.5) {
            if (this._2D((_arg1 - 1), _arg2)) {
                return (false);
            }
            ;
            if (_local5 < 0.5) {
                if (((this._2D(_arg1, (_arg2 - 1))) || (this._2D((_arg1 - 1), (_arg2 - 1))))) {
                    return (false);
                }
                ;
            } else {
                if (_local5 > 0.5) {
                    if (((this._2D(_arg1, (_arg2 + 1))) || (this._2D((_arg1 - 1), (_arg2 + 1))))) {
                        return (false);
                    }
                    ;
                }
                ;
            }
            ;
        } else {
            if (_local4 > 0.5) {
                if (this._2D((_arg1 + 1), _arg2)) {
                    return (false);
                }
                ;
                if (_local5 < 0.5) {
                    if (((this._2D(_arg1, (_arg2 - 1))) || (this._2D((_arg1 + 1), (_arg2 - 1))))) {
                        return (false);
                    }
                    ;
                } else {
                    if (_local5 > 0.5) {
                        if (((this._2D(_arg1, (_arg2 + 1))) || (this._2D((_arg1 + 1), (_arg2 + 1))))) {
                            return (false);
                        }
                        ;
                    }
                    ;
                }
                ;
            } else {
                if (_local5 < 0.5) {
                    if (this._2D(_arg1, (_arg2 - 1))) {
                        return (false);
                    }
                    ;
                } else {
                    if (_local5 > 0.5) {
                        if (this._2D(_arg1, (_arg2 + 1))) {
                            return (false);
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        return (true);
    }

    public function _2D(_arg1:Number, _arg2:Number):Boolean {
        var _local3:Square = map_.lookupSquare(_arg1, _arg2);
        return ((((((_local3 == null)) || ((_local3.tileType_ == 0xFF)))) || (((!((_local3.obj_ == null))) && (_local3.obj_.props_._0Sx)))));
    }

    public function _1Lj():void {
        if (map_ == null) {
            return;
        }
        ;
        var _local1:Square = map_.getSquare(x_, y_);
        if (_local1.props_._14m) {
            _UE = Math.min((_UE + 1), Parameters._Hw);
            this._06Q = (0.1 + ((1 - (_UE / Parameters._Hw)) * (_local1.props_.speed_ - 0.1)));
        } else {
            _UE = 0;
            this._06Q = _local1.props_.speed_;
        }
        ;
    }

    public function _od():Number {
        if (_Nm()) {
            return (_1zX);
        }
        ;
        var _local1:Number = (_1zX + ((this._1IQ / 75) * (_0nv - _1zX)));
        if (_Gb()) {
            _local1 = (_local1 * 1.5);
        }
        ;
        return (_local1);
    }

    public function useAltWeapon(_arg1:Number, _arg2:Number, _arg3:int):Boolean {
        var _local7:XML;
        var _local8:int;
        var _local9:Number;
        var _local10:int;
        var _local11:int;
        if ((((map_ == null)) || (isPaused()))) {
            return (false);
        }
        ;
        var _local4:int = _0Z[1];
        if (_local4 == -1) {
            return (false);
        }
        ;
        var _local5:XML = ObjectLibrary._18H[_local4];
        if ((((_local5 == null)) || (!(_local5.hasOwnProperty("Usable"))))) {
            return (false);
        }
        ;
        var _local6:Point = map_.pSTopW(_arg1, _arg2);
        if (_local6 == null) {
            _0Yn.play("error");
            return (false);
        }
        ;
        for each (_local7 in _local5.Activate) {
            if (_local7.toString() == _1X.TELEPORT) {
                if (!this._1Wo(_local6.x, _local6.y)) {
                    _0Yn.play("error");
                    return (false);
                }
                ;
            }
            ;
        }
        ;
        _local8 = getTimer();
        if (_arg3 == _qV._016) {
            if (_local8 < this._0wu) {
                _0Yn.play("error");
                return (false);
            }
            ;
            _local10 = int(_local5.MpCost);
            if (_local10 > this._0e) {
                _0Yn.play("no_mana");
                return (false);
            }
            ;
            _local11 = 500;
            if (_local5.hasOwnProperty("Cooldown")) {
                _local11 = (Number(_local5.Cooldown) * 1000);
            }
            ;
            this._0wu = (_local8 + _local11);
            map_.gs_.gsc_.useItem(_local8, objectId_, 1, _local4, _local6.x, _local6.y, _arg3);
            if (_local5.Activate == _1X.SHOOT) {
                _local9 = Math.atan2(_arg2, _arg1);
                this._uL(_local8, _local4, _local5, (Parameters.data_.cameraAngle + _local9), false);
            }
            ;
        } else {
            if (_local5.hasOwnProperty("MultiPhase")) {
                map_.gs_.gsc_.useItem(_local8, objectId_, 1, _local4, _local6.x, _local6.y, _arg3);
                _local10 = int(_local5.MpEndCost);
                if (_local10 <= this._0e) {
                    _local9 = Math.atan2(_arg2, _arg1);
                    this._uL(_local8, _local4, _local5, (Parameters.data_.cameraAngle + _local9), false);
                }
                ;
            }
            ;
        }
        ;
        return (true);
    }

    public function _Sn(_arg1:Number):void {
        this.shoot((Parameters.data_.cameraAngle + _arg1));
    }

    public function _0Fs():Boolean {
        return (!(((condition_[ConditionEffect._11S] & ConditionEffect._15Q) == 0)));
    }

    public function _pb():Boolean {
        var _local1:int = _0Z.length;
        var _local2:uint = 4;
        while (_local2 < _local1) {
            if (_0Z[_local2] <= 0) {
                return (false);
            }
            ;
            _local2++;
        }
        ;
        return (true);
    }

    public function nextAvailableInventorySlot():int {
        var _local1:int = ((this._0kQ) ? _0Z.length : (_0Z.length - _1bu._0KV));
        var _local2:uint = 4;
        while (_local2 < _local1) {
            if (_0Z[_local2] <= 0) {
                return (_local2);
            }
            ;
            _local2++;
        }
        ;
        return (-1);
    }

    public function swapInventoryIndex(_arg1:String):int {
        var _local2:int;
        var _local3:int;
        if (!this._0kQ) {
            return (-1);
        }
        ;
        if (_arg1 == _1IN._0Cj) {
            _local2 = _1bu._0RT;
            _local3 = (_1bu._0RT + _1bu._0KV);
        } else {
            _local2 = (_1bu._0RT + _1bu._0KV);
            _local3 = _0Z.length;
        }
        ;
        var _local4:uint = _local2;
        while (_local4 < _local3) {
            if (_0Z[_local4] <= 0) {
                return (_local4);
            }
            ;
            _local4++;
        }
        ;
        return (-1);
    }

    public function getPotionCount(_arg1:int):int {
        switch (_arg1) {
            case _1ne._0ip:
                return (this._0E6);
            case _1ne._0Kh:
                return (this._0or);
        }
        ;
        return (0);
    }

    public function getTex1():int {
        return (tex1Id_);
    }

    public function getTex2():int {
        return (tex2Id_);
    }

    protected function _1f5(_arg1:Vector.<IGraphicsData>, _arg2:int):void {
        var _local7:Number;
        var _local8:Number;
        if (this._0he == null) {
            this._1Kw = new GraphicsSolidFill();
            this._1wl = new GraphicsPath(_1WM._5r, new Vector.<Number>());
            this._0uC = new GraphicsSolidFill(2542335);
            this._0he = new GraphicsPath(_1WM._5r, new Vector.<Number>());
        }
        ;
        if (this.breath_ <= Parameters._Vq) {
            _local7 = ((Parameters._Vq - this.breath_) / Parameters._Vq);
            this._1Kw.color = MoreColorUtil._j9(0x545454, 0xFF0000, (Math.abs(Math.sin((_arg2 / 300))) * _local7));
        } else {
            this._1Kw.color = 0x545454;
        }
        ;
        var _local3:int = 20;
        var _local4:int = 8;
        var _local5:int = 6;
        var _local6:Vector.<Number> = (this._1wl.data as Vector.<Number>);
        _local6.length = 0;
        _local6.push((_1Pg[0] - _local3), (_1Pg[1] + _local4), (_1Pg[0] + _local3), (_1Pg[1] + _local4), (_1Pg[0] + _local3), ((_1Pg[1] + _local4) + _local5), (_1Pg[0] - _local3), ((_1Pg[1] + _local4) + _local5));
        _arg1.push(this._1Kw);
        _arg1.push(this._1wl);
        _arg1.push(_1WM.END_FILL);
        if (this.breath_ > 0) {
            _local8 = (((this.breath_ / 100) * 2) * _local3);
            this._0he.data.length = 0;
            _local6 = (this._0he.data as Vector.<Number>);
            _local6.length = 0;
            _local6.push((_1Pg[0] - _local3), (_1Pg[1] + _local4), ((_1Pg[0] - _local3) + _local8), (_1Pg[1] + _local4), ((_1Pg[0] - _local3) + _local8), ((_1Pg[1] + _local4) + _local5), (_1Pg[0] - _local3), ((_1Pg[1] + _local4) + _local5));
            _arg1.push(this._0uC);
            _arg1.push(this._0he);
            _arg1.push(_1WM.END_FILL);
        }
        ;
        _return._01S(this._0uC, true);
        _return._01S(this._1Kw, true);
    }

    private function _jC(_arg1:String, _arg2:Object = null):_1ty {
        return (_1ty.make(Parameters._0c, _arg1, -1, -1, "", false, _arg2));
    }

    private function _yu():Merchant {
        var _local3:Point;
        var _local4:Merchant;
        var _local1:int = ((((x_ - int(x_))) > 0.5) ? 1 : -1);
        var _local2:int = ((((y_ - int(y_))) > 0.5) ? 1 : -1);
        for each (_local3 in _13r) {
            this._139.x_ = (x_ + (_local1 * _local3.x));
            this._139.y_ = (y_ + (_local2 * _local3.y));
            _local4 = map_.merchLookup_[this._139];
            if (_local4 != null) {
                return ((((PointUtil._Fw(_local4.x_, _local4.y_, x_, y_) < 1)) ? _local4 : null));
            }
            ;
        }
        ;
        return (null);
    }

    private function _1vo(_arg1:Boolean):void {
        moveVec_.scaleBy(-0.5);
        if (_arg1) {
            moveVec_.y = (moveVec_.y * -1);
        } else {
            moveVec_.x = (moveVec_.x * -1);
        }
        ;
    }

    private function _0Wo():uint {
        if (this._0Mq) {
            return (Parameters._B2);
        }
        ;
        if (this._0LC) {
            if (this.starred_) {
                return (4240365);
            }
            ;
            return (Parameters._0e4);
        }
        ;
        return (0xFFFFFF);
    }

    private function _0sM():Number {
        if (_0sC()) {
            return ((_0XP * this._06Q));
        }
        ;
        var _local1:Number = (_0XP + ((this.speed_ / 75) * (_1Of - _0XP)));
        if (((_0oV()) || (_0TZ()))) {
            _local1 = (_local1 * 1.5);
        }
        ;
        _local1 = (_local1 * this._06Q);
        return (_local1);
    }

    private function _1HZ():Number {
        if (_1Kz()) {
            return (_0vY);
        }
        ;
        var _local1:Number = (_0vY + ((this._0jT / 75) * (_Ec - _0vY)));
        if (_1lc()) {
            _local1 = (_local1 * 1.5);
        }
        ;
        return (_local1);
    }

    private function _0Fx():void {
        var _local1:_0T2 = this.skin.imageFromAngle(0, _0zq._c0, 0);
        _0TX = this.skin;
        texture_ = _local1.image_;
        mask_ = _local1.mask_;
        this._Z2 = true;
    }

    private function _3Y():void {
        var _local1:Vector.<XML> = ObjectLibrary._8t;
        var _local2:uint = Math.floor((Math.random() * _local1.length));
        var _local3:int = _local1[_local2].@type;
        var _local4:_1kQ = ObjectLibrary._mQ[_local3];
        texture_ = _local4.texture_;
        mask_ = _local4.mask_;
        _0TX = _local4._0TX;
        this._Z2 = false;
    }

    private function shoot(_arg1:Number):void {
        if ((((((((map_ == null)) || (_0vt()))) || (isPaused()))) || (_0TK()))) {
            return;
        }
        ;
        var _local2:int = _0Z[0];
        if (_local2 == -1) {
            this._1u7.dispatch(_1ty.make(Parameters._0c, _TG._s));
            return;
        }
        ;
        var _local3:XML = ObjectLibrary._18H[_local2];
        var _local4:int = getTimer();
        var _local5:Number = Number(_local3.RateOfFire);
        this._xX = ((1 / this._od()) * (1 / _local5));
        if (_local4 < (_089 + this._xX)) {
            return;
        }
        ;
        doneAction(map_.gs_, Tutorial._0pQ);
        _5E = _arg1;
        _089 = _local4;
        this._uL(_089, _local2, _local3, _5E, true);
    }

    private function _uL(_arg1:int, _arg2:int, _arg3:XML, _arg4:Number, _arg5:Boolean):void {
        var _local11:uint;
        var _local12:Projectile;
        var _local13:int;
        var _local14:int;
        var _local15:Number;
        var _local16:int;
        var _local6:int = ((_arg3.hasOwnProperty("NumProjectiles")) ? int(_arg3.NumProjectiles) : 1);
        var _local7:Number = (((_arg3.hasOwnProperty("ArcGap")) ? Number(_arg3.ArcGap) : 11.25) * Trig._1HC);
        var _local8:Number = (_local7 * (_local6 - 1));
        var _local9:Number = (_arg4 - (_local8 / 2));
        this.isShooting = true;
        var _local10:int;
        while (_local10 < _local6) {
            _local11 = _for();
            _local12 = (_0CH._mN(Projectile) as Projectile);
            if (((_arg5) && (!((this._3I == ""))))) {
                _local12.reset(_arg2, 0, objectId_, _local11, _local9, _arg1, this._3I, this._2K);
            } else {
                _local12.reset(_arg2, 0, objectId_, _local11, _local9, _arg1);
            }
            ;
            _local13 = int(_local12._18U.minDamage_);
            _local14 = int(_local12._18U.maxDamage_);
            _local15 = ((_arg5) ? this._1HZ() : 1);
            _local16 = (map_.gs_.gsc_.getNextDamage(_local13, _local14) * _local15);
            if (_arg1 > (map_.gs_.moveRecords_.lastClearTime_ + 600)) {
                _local16 = 0;
            }
            ;
            _local12._06E(_local16);
            if ((((_local10 == 0)) && (!((_local12._lv == null))))) {
                _0Yn.play(_local12._lv, 0.75, false);
            }
            ;
            map_.addObj(_local12, (x_ + (Math.cos(_arg4) * 0.3)), (y_ + (Math.sin(_arg4) * 0.3)));
            map_.gs_.gsc_.playerShoot(_arg1, _local12);
            _local9 = (_local9 + _local7);
            _local10++;
        }
        ;
    }


}
}//package com.company.assembleegameclient.objects

