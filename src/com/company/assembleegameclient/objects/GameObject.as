// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.GameObject

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0pG.Animations;
import _0pG._Qq;

import _0y9._JP;

import _11j._1ST;

import _1ES._return;

import _1Em._i9;

import _1L3._1FO;
import _1L3._IG;

import _1TG._0Yn;

import _1VI._TT;

import _6u._TG;

import _GI.ExplosionEffect;
import _GI.HitEffect;
import _GI._0Qd;
import _GI._1S9;

import _Jm._0R9;

import com.company.assembleegameclient.engine3d._1KR;
import com.company.assembleegameclient.engine3d._2c;
import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.ConditionEffect;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0zq;
import com.company.assembleegameclient.util._1Gt;
import com.company.util.AssetLibrary;
import com.company.util.BitmapUtil;
import com.company.util.ConversionUtil;
import com.company.util.MoreColorUtil;
import com.company.util._1V;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.GradientType;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsGradientFill;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.filters.ColorMatrixFilter;
import flash.geom.ColorTransform;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Vector3D;
import flash.utils.Dictionary;
import flash.utils.getQualifiedClassName;
import flash.utils.getTimer;

public class GameObject extends BasicObject {

    protected static const _ak:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Bu);
    protected static const _1oT:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._0pq);
    protected static const _2h:Matrix = new Matrix();
    private static const _6B:Number = 1E-5;
    private static const _0wF:Number = -(_6B);
    public static const get:int = 300;

    public static function _DU(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Vector.<uint>):int {
        var _local5:int = _arg2;
        if (((_arg3) || (!(((_arg4[ConditionEffect._11S] & ConditionEffect._1o2) == 0))))) {
            _local5 = 0;
        } else {
            if ((_arg4[ConditionEffect._11S] & ConditionEffect._1HD) != 0) {
                _local5 = (_local5 * 2);
            }
            ;
        }
        ;
        var _local6:int = ((_arg1 * 3) / 20);
        var _local7:int = Math.max(_local6, (_arg1 - _local5));
        if ((_arg4[ConditionEffect._11S] & ConditionEffect._2N) != 0) {
            _local7 = 0;
        }
        ;
        if ((_arg4[ConditionEffect._T1] & ConditionEffect._136) != 0) {
            _local7 = (_local7 * 0.9);
        }
        ;
        if ((_arg4[ConditionEffect._T1] & ConditionEffect._Z) != 0) {
            _local7 = (_local7 * 1.2);
        }
        ;
        return (_local7);
    }

    public function GameObject(_arg1:XML) {
        var _local4:int;
        this.props_ = ObjectLibrary._0pF;
        this.condition_ = new <uint>[0, 0];
        this._hQ = new Point();
        this._1LD = new Point();
        this.moveVec_ = new Vector3D();
        this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
        this.path_ = new GraphicsPath(_1WM._5r, null);
        this.vS_ = new Vector.<Number>();
        this._0rI = new Vector.<Number>();
        this._16d = new Matrix();
        super();
        if (_arg1 == null) {
            return;
        }
        ;
        this.objectType_ = int(_arg1.@type);
        this.props_ = ObjectLibrary._x9[this.objectType_];
        _Ci = (this.props_._1aU > 0);
        var _local2:_1kQ = ObjectLibrary._mQ[this.objectType_];
        this.texture_ = _local2.texture_;
        this.mask_ = _local2.mask_;
        this._0TX = _local2._0TX;
        this._1Lu = _local2._1Lu;
        if (_local2._V1 != null) {
            this.effect_ = _1S9._1eg(_local2._V1, this);
        }
        ;
        if (this.texture_ != null) {
            this._1XA = (this.texture_.height / 8);
        }
        ;
        if (_arg1.hasOwnProperty("Model")) {
            this._1bD = _2c._0s(String(_arg1.Model));
            this._r = _2c._d6(String(_arg1.Model));
            if (this.texture_ != null) {
                this._r._Zt(this.texture_);
            }
            ;
        }
        ;
        var _local3:_Qq = ObjectLibrary._118[this.objectType_];
        if (_local3 != null) {
            this._9k = new Animations(_local3);
        }
        ;
        z_ = this.props_.z_;
        this.flying_ = this.props_.flying_;
        if (_arg1.hasOwnProperty("MaxHitPoints")) {
            this._1wA = (this._022 = int(_arg1.MaxHitPoints));
        }
        ;
        if (_arg1.hasOwnProperty("Defense")) {
            this._05c = int(_arg1.Defense);
        }
        ;
        if (_arg1.hasOwnProperty("SlotTypes")) {
            this._0ac = ConversionUtil._0mJ(_arg1.SlotTypes);
            this._0Z = new Vector.<int>(this._0ac.length);
            _local4 = 0;
            while (_local4 < this._0Z.length) {
                this._0Z[_local4] = -1;
                _local4++;
            }
            ;
        }
        ;
        if (_arg1.hasOwnProperty("Tex1")) {
            this.tex1Id_ = int(_arg1.Tex1);
        }
        ;
        if (_arg1.hasOwnProperty("Tex2")) {
            this.tex2Id_ = int(_arg1.Tex2);
        }
        ;
        if (_arg1.hasOwnProperty("StunImmune")) {
            this._0Tx = true;
        }
        ;
        if (_arg1.hasOwnProperty("ParalyzeImmune")) {
            this._1Xh = true;
        }
        ;
        if (_arg1.hasOwnProperty("DazedImmune")) {
            this._CR = true;
        }
        ;
        this.props_._De();
    }
    public var _ar:BitmapData = null;
    public var _0Vr:_0Qd;
    public var props_:ObjectProperties;
    public var name_:String;
    public var radius_:Number = 0.5;
    public var _Zo:Number = 0;
    public var flying_:Boolean = false;
    public var _5E:Number = 0;
    public var _089:int = 0;
    public var _0TX:_0zq = null;
    public var texture_:BitmapData = null;
    public var mask_:BitmapData = null;
    public var _1Lu:Vector.<_1kQ> = null;
    public var _1bD:_1KR = null;
    public var _r:_TT = null;
    public var effect_:_1S9 = null;
    public var _9k:Animations = null;
    public var _0HD:Boolean = false;
    public var _022:int = 200;
    public var _1wA:int = 200;
    public var size_:int = 100;
    public var _ew:int = -1;
    public var _05c:int = 0;
    public var _0ac:Vector.<int> = null;
    public var _0Z:Vector.<int> = null;
    public var condition_:Vector.<uint>;
    public var _11k:Boolean = false;
    public var objectType_:int;
    public var _UE:int = 0;
    public var _1FR:BitmapData = null;
    public var _Zv:_NZ = null;
    public var _00Q:int = -1;
    protected var _0H:BitmapData = null;
    protected var _Y9:Dictionary = null;
    protected var tex1Id_:int = 0;
    protected var tex2Id_:int = 0;
    protected var _Lg:int = 0;
    protected var _1rq:int = -1;
    protected var _hQ:Point;
    protected var _1LD:Point;
    protected var moveVec_:Vector3D;
    protected var bitmapFill_:GraphicsBitmapFill;
    protected var path_:GraphicsPath;
    protected var vS_:Vector.<Number>;
    protected var _0rI:Vector.<Number>;
    protected var _16d:Matrix;
    protected var _1wM:GraphicsGradientFill = null;
    protected var _zB:GraphicsPath = null;
    private var _0Se:GraphicsBitmapFill = null;
    private var _1zT:GraphicsPath = null;
    private var _0U3:Boolean;
    private var _1Cu:Boolean = false;
    private var _o:Boolean;
    private var _0M0:Boolean = false;
    private var _C9:uint = 1;
    private var _1XA:Number = 1;
    private var _0Tx:Boolean = false;
    private var _1Xh:Boolean = false;
    private var _CR:Boolean = false;
    private var _0qL:GraphicsSolidFill = null;
    private var _1h2:GraphicsPath = null;
    private var _1mm:GraphicsSolidFill = null;
    private var _1xM:GraphicsPath = null;
    private var _3u:Vector.<BitmapData> = null;
    private var _1bI:Vector.<GraphicsBitmapFill> = null;
    private var _05F:Vector.<GraphicsPath> = null;

    override public function dispose():void {
        var _local1:Object;
        var _local2:BitmapData;
        var _local3:Dictionary;
        var _local4:Object;
        var _local5:BitmapData;
        super.dispose();
        this.texture_ = null;
        if (this._0H != null) {
            this._0H.dispose();
            this._0H = null;
        }
        ;
        if (this._Y9 != null) {
            for each (_local1 in this._Y9) {
                _local2 = (_local1 as BitmapData);
                if (_local2 != null) {
                    _local2.dispose();
                } else {
                    _local3 = (_local1 as Dictionary);
                    for each (_local4 in _local3) {
                        _local5 = (_local4 as BitmapData);
                        if (_local5 != null) {
                            _local5.dispose();
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
            this._Y9 = null;
        }
        ;
        if (this._1bD != null) {
            this._1bD.dispose();
            this._1bD = null;
        }
        ;
        if (this._r != null) {
            this._r.dispose();
            this._r = null;
        }
        ;
        this._0ac = null;
        this._0Z = null;
        if (this._ar != null) {
            this._ar.dispose();
            this._ar = null;
        }
        ;
        this._0Se = null;
        this._1zT = null;
        this.bitmapFill_ = null;
        this.path_.commands = null;
        this.path_.data = null;
        this.vS_ = null;
        this._0rI = null;
        this._16d = null;
        this._3u = null;
        this._1bI = null;
        this._05F = null;
        this._1wM = null;
        if (this._zB != null) {
            this._zB.commands = null;
            this._zB.data = null;
            this._zB = null;
        }
        ;
    }

    override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean {
        map_ = _arg1;
        this._hQ.x = (this._1LD.x = _arg2);
        this._hQ.y = (this._1LD.y = _arg3);
        if (!this.moveTo(_arg2, _arg3)) {
            map_ = null;
            return (false);
        }
        ;
        if (this.effect_ != null) {
            map_.addObj(this.effect_, _arg2, _arg3);
        }
        ;
        return (true);
    }

    override public function removeFromMap():void {
        if (((this.props_.static_) && (!((_ml == null))))) {
            if (_ml.obj_ == this) {
                _ml.obj_ = null;
            }
            ;
            _ml = null;
        }
        ;
        if (this.effect_ != null) {
            map_.removeObj(this.effect_.objectId_);
        }
        ;
        super.removeFromMap();
        this.dispose();
    }

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local4:int;
        var _local5:Number;
        var _local6:Number;
        var _local3:Boolean;
        if (!(((this.moveVec_.x == 0)) && ((this.moveVec_.y == 0)))) {
            if (this._1rq < map_.gs_.gsc_.lastTickId_) {
                this.moveVec_.x = 0;
                this.moveVec_.y = 0;
                this.moveTo(this._1LD.x, this._1LD.y);
            } else {
                _local4 = (_arg1 - this._Lg);
                _local5 = (this._hQ.x + (_local4 * this.moveVec_.x));
                _local6 = (this._hQ.y + (_local4 * this.moveVec_.y));
                this.moveTo(_local5, _local6);
                _local3 = true;
            }
            ;
        }
        ;
        if (this.props_._1o1 != null) {
            if (!_local3) {
                z_ = this.props_.z_;
                this.flying_ = this.props_.flying_;
            } else {
                z_ = this.props_._1o1.z_;
                this.flying_ = this.props_._1o1.flying_;
            }
            ;
        }
        ;
        return (true);
    }

    override public function draw3d(_arg1:Vector.<_TT>):void {
        if (this._r != null) {
            _arg1.push(this._r);
        }
        ;
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var _local8:BitmapData;
        var _local4:BitmapData = this.getTexture(_arg2, _arg3);
        if (this.props_._1ns) {
            if (_ml.faces_.length == 0) {
                return;
            }
            ;
            this.path_.data = _ml.faces_[0].face_.vout_;
            this.bitmapFill_.bitmapData = _local4;
            _ml.baseTexMatrix_.calculateTextureMatrix(this.path_.data);
            this.bitmapFill_.matrix = _ml.baseTexMatrix_.tToS_;
            _arg1.push(this.bitmapFill_);
            _arg1.push(this.path_);
            _arg1.push(_1WM.END_FILL);
            return;
        }
        ;
        if (((!((this._1bD == null))) && (!(Parameters._0g5())))) {
            this._1bD.draw(_arg1, _arg2, this.props_.color_, _local4);
            return;
        }
        ;
        if (((!((this._1bD == null))) && (Parameters._0g5()))) {
            _arg1.push(null);
            return;
        }
        ;
        var _local5:int = _local4.width;
        var _local6:int = _local4.height;
        var _local7:int = (_ml.sink_ + this._UE);
        if ((((_local7 > 0)) && (((this.flying_) || (((!((_ml.obj_ == null))) && (_ml.obj_.props_.protectFromSink_))))))) {
            _local7 = 0;
        }
        ;
        if (Parameters._0g5()) {
            if (_local7 != 0) {
                _return._dt(this.bitmapFill_, Math.max((((_local7 / _local6) * 1.65) - 0.02), 0));
                _local7 = (-(_local7) + 0.02);
            } else {
                if ((((_local7 == 0)) && (!((_return._16b(this.bitmapFill_) == 0))))) {
                    _return._VP(this.bitmapFill_);
                }
                ;
            }
            ;
        }
        ;
        this.vS_.length = 0;
        this.vS_.push((_1Pg[3] - (_local5 / 2)), ((_1Pg[4] - _local6) + _local7), (_1Pg[3] + (_local5 / 2)), ((_1Pg[4] - _local6) + _local7), (_1Pg[3] + (_local5 / 2)), _1Pg[4], (_1Pg[3] - (_local5 / 2)), _1Pg[4]);
        this.path_.data = this.vS_;
        if (this._Zv != null) {
            if (!this._Zv._va(_arg3)) {
                if (Parameters._0g5()) {
                    this._Zv._TI(_local4, _arg3);
                } else {
                    _local4 = this._Zv.apply(_local4, _arg3);
                }
                ;
            } else {
                this._Zv = null;
            }
            ;
        }
        ;
        if (((this._0U3) && (!(this._1Cu)))) {
            if (Parameters._0g5()) {
                _return._1Pk(_local4, new ColorTransform(-1, -1, -1, 1, 0xFF, 0xFF, 0xFF, 0));
            } else {
                _local8 = _local4.clone();
                _local8.colorTransform(_local8.rect, new ColorTransform(-1, -1, -1, 1, 0xFF, 0xFF, 0xFF, 0));
                _local8 = _1V._2b(_local8, new ColorMatrixFilter(MoreColorUtil._1Bu));
                _local4 = _local8;
            }
            ;
            this._1Cu = true;
        }
        ;
        if (((this._o) && (!(this._0M0)))) {
            if (Parameters._0g5()) {
                _return._1Pk(_local4, new ColorTransform(1, 1, 1, 1, 0xFF, 0xFF, 0xFF, 0));
            } else {
                _local8 = _local4.clone();
                _local8.colorTransform(_local8.rect, new ColorTransform(1, 1, 1, 1, 0xFF, 0xFF, 0xFF, 0));
                _local4 = _local8;
            }
            ;
            this._0M0 = true;
        }
        ;
        this.bitmapFill_.bitmapData = _local4;
        this._16d.identity();
        this._16d.translate(this.vS_[0], this.vS_[1]);
        this.bitmapFill_.matrix = this._16d;
        _arg1.push(this.bitmapFill_);
        _arg1.push(this.path_);
        _arg1.push(_1WM.END_FILL);
        if (((((((!(this.isPaused())) && (((this.condition_[ConditionEffect._11S]) || (this.condition_[ConditionEffect._T1]))))) && (!(Parameters._20Z)))) && (!((this is Pet))))) {
            this._0S3(_arg1, _arg2, _arg3);
        }
        ;
        if (((((this.props_._0eK) && (!((this.name_ == null))))) && (!((this.name_.length == 0))))) {
            this._9J(_arg1, _arg2);
        }
        ;
    }

    override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        if (this._1wM == null) {
            this._1wM = new GraphicsGradientFill(GradientType.RADIAL, [this.props_._0hm, this.props_._0hm], [0.5, 0], null, new Matrix());
            this._zB = new GraphicsPath(_1WM._5r, new Vector.<Number>());
        }
        ;
        var _local4:Number = (((this.size_ / 100) * (this.props_._1aU / 100)) * this._1XA);
        var _local5:Number = (30 * _local4);
        var _local6:Number = (15 * _local4);
        this._1wM.matrix.createGradientBox((_local5 * 2), (_local6 * 2), 0, (_1Pg[0] - _local5), (_1Pg[1] - _local6));
        _arg1.push(this._1wM);
        this._zB.data.length = 0;
        this._zB.data.push((_1Pg[0] - _local5), (_1Pg[1] - _local6), (_1Pg[0] + _local5), (_1Pg[1] - _local6), (_1Pg[0] + _local5), (_1Pg[1] + _local6), (_1Pg[0] - _local5), (_1Pg[1] + _local6));
        _arg1.push(this._zB);
        _arg1.push(_1WM.END_FILL);
    }

    public function setObjectId(_arg1:int):void {
        var _local2:_1kQ;
        objectId_ = _arg1;
        if (this._1Lu != null) {
            _local2 = this._1Lu[(objectId_ % this._1Lu.length)];
            this.texture_ = _local2.texture_;
            this.mask_ = _local2.mask_;
            this._0TX = _local2._0TX;
            if (this._r != null) {
                this._r._Zt(this.texture_);
            }
            ;
        }
        ;
    }

    public function _0dw(_arg1:int):void {
        var _local3:_1kQ;
        var _local2:_1kQ = ObjectLibrary._mQ[this.objectType_];
        if (_arg1 == 0) {
            _local3 = _local2;
        } else {
            _local3 = _local2.getAltTextureData(_arg1);
            if (_local3 == null) {
                return;
            }
            ;
        }
        ;
        this.texture_ = _local3.texture_;
        this.mask_ = _local3.mask_;
        this._0TX = _local3._0TX;
        if (this.effect_ != null) {
            map_.removeObj(this.effect_.objectId_);
            this.effect_ = null;
        }
        ;
        if (_local3._V1 != null) {
            this.effect_ = _1S9._1eg(_local3._V1, this);
            if (map_ != null) {
                map_.addObj(this.effect_, x_, y_);
            }
            ;
        }
        ;
    }

    public function setTex1(_arg1:int):void {
        if (_arg1 == this.tex1Id_) {
            return;
        }
        ;
        this.tex1Id_ = _arg1;
        this._Y9 = new Dictionary();
        this._0H = null;
    }

    public function setTex2(_arg1:int):void {
        if (_arg1 == this.tex2Id_) {
            return;
        }
        ;
        this.tex2Id_ = _arg1;
        this._Y9 = new Dictionary();
        this._0H = null;
    }

    public function _am(_arg1:int):void {
        _0Yn.play(this.props_._0L[_arg1]);
    }

    public function _rh():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1nS) == 0)));
    }

    public function _1Kz():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1Ey) == 0)));
    }

    public function _0sC():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0PQ) == 0)));
    }

    public function _0pN():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._If) == 0)));
    }

    public function _Nm():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1Cc) == 0)));
    }

    public function _0vt():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0Cg) == 0)));
    }

    public function isBlind():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0aB) == 0)));
    }

    public function isDrunk():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0Lb) == 0)));
    }

    public function _0zt():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._RC) == 0)));
    }

    public function _aP():Boolean {
        return (((!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1C9) == 0))) || (this._0Tx)));
    }

    public function _Rl():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1Nx) == 0)));
    }

    public function _11A():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1Za) == 0)));
    }

    public function _0oV():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._kr) == 0)));
    }

    public function _0TZ():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0Y) == 0)));
    }

    public function _1Fh():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1jV) == 0)));
    }

    public function _0k9():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0y1) == 0)));
    }

    public function _1lc():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._13k) == 0)));
    }

    public function _Gb():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0D8) == 0)));
    }

    public function isPaused():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._19Q) == 0)));
    }

    public function _AF():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0zM) == 0)));
    }

    public function _1vY():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0BC) == 0)));
    }

    public function _0n8():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._2N) == 0)));
    }

    public function _1wT():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1HD) == 0)));
    }

    public function _0g0():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._1o2) == 0)));
    }

    public function _0P():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0IG) == 0)));
    }

    public function _0bi():Boolean {
        return (!(((this.condition_[ConditionEffect._T1] & ConditionEffect._0iN) == 0)));
    }

    public function isUnstable():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._15u) == 0)));
    }

    public function _0qz():Boolean {
        return (!(((this.condition_[ConditionEffect._T1] & ConditionEffect._Up) == 0)));
    }

    public function isDarkness():Boolean {
        return (!(((this.condition_[ConditionEffect._11S] & ConditionEffect._0g7) == 0)));
    }

    public function _130():Boolean {
        return (((this._1Xh) || (!(((this.condition_[ConditionEffect._T1] & ConditionEffect._1Io) == 0)))));
    }

    public function _06G():Boolean {
        return (((this._CR) || (!(((this.condition_[ConditionEffect._T1] & ConditionEffect._1u8) == 0)))));
    }

    public function _0TK():Boolean {
        return (!(((this.condition_[ConditionEffect._T1] & ConditionEffect._136) == 0)));
    }

    public function _0tP():Boolean {
        return (!(((this.condition_[ConditionEffect._T1] & ConditionEffect._0WL) == 0)));
    }

    public function _09y():Boolean {
        return (!(((this.condition_[ConditionEffect._T1] & ConditionEffect._Z) == 0)));
    }

    public function _1OS():Boolean {
        return (!(((this.condition_[ConditionEffect._T1] & ConditionEffect._0dL) == 0)));
    }

    public function _WF(_arg1:int = 20):Boolean {
        var _local2:GameObject;
        var _local3:int;
        var _local4:int;
        for each (_local2 in map_.goDict_) {
            if ((((_local2 is Character)) && (_local2.props_.isEnemy_))) {
                _local3 = (((x_ > _local2.x_)) ? (x_ - _local2.x_) : (_local2.x_ - x_));
                _local4 = (((y_ > _local2.y_)) ? (y_ - _local2.y_) : (_local2.y_ - y_));
                if ((((_local3 < _arg1)) && ((_local4 < _arg1)))) {
                    return (false);
                }
                ;
            }
            ;
        }
        ;
        return (true);
    }

    public function getName():String {
        return ((((((this.name_ == null)) || ((this.name_ == "")))) ? ObjectLibrary._1w3[this.objectType_] : this.name_));
    }

    public function getColor():uint {
        return (BitmapUtil._1t(this.texture_));
    }

    public function _for():uint {
        var _local1:uint = this._C9;
        this._C9 = ((this._C9 + 1) % 128);
        return (_local1);
    }

    public function _17z(_arg1:_1ST):Number {
        var _local2:Number = (_arg1.x_ - x_);
        var _local3:Number = (_arg1.y_ - y_);
        return (Math.sqrt(((_local2 * _local2) + (_local3 * _local3))));
    }

    public function _0F2(_arg1:Boolean):void {
        if (_arg1) {
            this._0U3 = true;
        } else {
            this._0U3 = false;
            this._1Cu = false;
        }
        ;
    }

    public function _0cT(_arg1:Boolean):void {
        if (_arg1) {
            this._o = true;
        } else {
            this._o = false;
            this._0M0 = false;
        }
        ;
    }

    public function moveTo(_arg1:Number, _arg2:Number):Boolean {
        var _local3:Square = map_.getSquare(_arg1, _arg2);
        if (_local3 == null) {
            return (false);
        }
        ;
        x_ = _arg1;
        y_ = _arg2;
        if (this.props_.static_) {
            if (_ml != null) {
                _ml.obj_ = null;
            }
            ;
            _local3.obj_ = this;
        }
        ;
        _ml = _local3;
        if (this._1bD != null) {
            this._1bD.setPosition(x_, y_, 0, this.props_.rotation_);
        }
        ;
        if (this._r != null) {
            this._r.setPosition(x_, y_, 0, this.props_.rotation_);
        }
        ;
        return (true);
    }

    public function _1r5(_arg1:Number, _arg2:Number, _arg3:int):void {
        this.moveTo(_arg1, _arg2);
        this._Lg = _arg3;
        this._1LD.x = _arg1;
        this._1LD.y = _arg2;
        this._hQ.x = _arg1;
        this._hQ.y = _arg2;
        this.moveVec_.x = 0;
        this.moveVec_.y = 0;
    }

    public function _0TY(_arg1:Number, _arg2:Number, _arg3:int, _arg4:int):void {
        if (this._1rq < map_.gs_.gsc_.lastTickId_) {
            this.moveTo(this._1LD.x, this._1LD.y);
        }
        ;
        this._Lg = map_.gs_.lastUpdate_;
        this._1LD.x = _arg1;
        this._1LD.y = _arg2;
        this._hQ.x = x_;
        this._hQ.y = y_;
        this.moveVec_.x = ((this._1LD.x - this._hQ.x) / _arg3);
        this.moveVec_.y = ((this._1LD.y - this._hQ.y) / _arg3);
        this._1rq = _arg4;
    }

    public function damage(_arg1:int, _arg2:int, _arg3:Vector.<uint>, _arg4:Boolean, _arg5:Projectile):void {
        var _local8:int;
        var _local9:uint;
        var _local10:ConditionEffect;
        var _local11:_i9;
        var _local12:_IG;
        var _local13:_1FO;
        var _local14:String;
        var _local15:Boolean;
        var _local6:Boolean;
        if (_arg4) {
            this._0HD = true;
        } else {
            if (_arg3 != null) {
                _local8 = 0;
                for each (_local9 in _arg3) {
                    _local10 = null;
                    if (((((!((_arg5 == null))) && (_arg5._18U._use))) && (_arg5._18U._use[_local9]))) {
                        _local12 = _8w._1Sz().getInstance(_IG);
                        _local13 = _local12._0ER();
                        if (_local13 != null) {
                            _local10 = ConditionEffect.effects_[_local9];
                            this._1O3(_local8, _local10.name_);
                            _local8 = (_local8 + 500);
                        }
                        ;
                    } else {
                        switch (_local9) {
                            case ConditionEffect._0Lz:
                                break;
                            case ConditionEffect._1Pt:
                            case ConditionEffect._0Xu:
                            case ConditionEffect._0Mn:
                            case ConditionEffect._0Vl:
                            case ConditionEffect._qF:
                            case ConditionEffect._Dx:
                            case ConditionEffect._0cz:
                            case ConditionEffect._00J:
                            case ConditionEffect._oK:
                            case ConditionEffect._0XA:
                            case ConditionEffect._0zR:
                            case ConditionEffect._tW:
                            case ConditionEffect._126:
                            case ConditionEffect._Kp:
                            case ConditionEffect._1HL:
                            case ConditionEffect._1it:
                            case ConditionEffect._18n:
                                _local10 = ConditionEffect.effects_[_local9];
                                break;
                            case ConditionEffect._1Dv:
                                if (this._0bi()) {
                                    _local11 = new _i9(this, 0xFF0000, 3000);
                                    _local11.setStringBuilder(new _5R().setParams(_TG._087));
                                    map_.mapOverlay_.addStatusText(_local11);
                                } else {
                                    _local10 = ConditionEffect.effects_[_local9];
                                }
                                ;
                                break;
                            case ConditionEffect._Xu:
                                if (this._0P()) {
                                    _local11 = new _i9(this, 0xFF0000, 3000);
                                    _local11.setStringBuilder(new _5R().setParams(_TG._087));
                                    map_.mapOverlay_.addStatusText(_local11);
                                } else {
                                    _local10 = ConditionEffect.effects_[_local9];
                                }
                                ;
                                break;
                            case ConditionEffect._1s:
                                if (this._aP()) {
                                    _local11 = new _i9(this, 0xFF0000, 3000);
                                    _local11.setStringBuilder(new _5R().setParams(_TG._087));
                                    map_.mapOverlay_.addStatusText(_local11);
                                } else {
                                    _local10 = ConditionEffect.effects_[_local9];
                                }
                                ;
                                break;
                            case ConditionEffect._1Vs:
                                if (this._06G()) {
                                    _local11 = new _i9(this, 0xFF0000, 3000);
                                    _local11.setStringBuilder(new _5R().setParams(_TG._087));
                                    map_.mapOverlay_.addStatusText(_local11);
                                } else {
                                    _local10 = ConditionEffect.effects_[_local9];
                                }
                                ;
                                break;
                            case ConditionEffect._1mk:
                                if (this._130()) {
                                    _local11 = new _i9(this, 0xFF0000, 3000);
                                    _local11.setStringBuilder(new _5R().setParams(_TG._087));
                                    map_.mapOverlay_.addStatusText(_local11);
                                } else {
                                    _local10 = ConditionEffect.effects_[_local9];
                                }
                                ;
                                break;
                            case ConditionEffect._0KQ:
                                if (this._0tP()) {
                                    _local11 = new _i9(this, 0xFF0000, 3000);
                                    _local11.setStringBuilder(new _5R().setParams(_TG._087));
                                    map_.mapOverlay_.addStatusText(_local11);
                                } else {
                                    _local10 = ConditionEffect.effects_[_local9];
                                }
                                ;
                                break;
                            case ConditionEffect._129:
                                if (this._1OS()) {
                                    _local11 = new _i9(this, 0xFF0000, 3000);
                                    _local11.setStringBuilder(new _5R().setParams(_TG._087));
                                    map_.mapOverlay_.addStatusText(_local11);
                                } else {
                                    _local10 = ConditionEffect.effects_[_local9];
                                }
                                ;
                                break;
                            case ConditionEffect._HY:
                                _local6 = true;
                                break;
                        }
                        ;
                        if (_local10 != null) {
                            if (_local9 < ConditionEffect._OT) {
                                if ((this.condition_[ConditionEffect._11S] | _local10.bit_) == this.condition_[ConditionEffect._11S]) {
                                    continue;
                                }
                                ;
                                this.condition_[ConditionEffect._11S] = (this.condition_[ConditionEffect._11S] | _local10.bit_);
                            } else {
                                if ((this.condition_[ConditionEffect._T1] | _local10.bit_) == this.condition_[ConditionEffect._T1]) continue;
                                this.condition_[ConditionEffect._T1] = (this.condition_[ConditionEffect._T1] | _local10.bit_);
                            }
                            ;
                            _local14 = _local10._1WQ;
                            this._0go(_local8, _local14);
                            _local8 = (_local8 + 500);
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
        var _local7:Vector.<uint> = _1Gt._0uN(this.objectType_, this.texture_, this.props_._1ZF, this.props_._01Q);
        if (this._0HD) {
            map_.addObj(new ExplosionEffect(_local7, this.size_, 30), x_, y_);
        } else {
            if (_arg5 != null) {
                map_.addObj(new HitEffect(_local7, this.size_, 10, _arg5.angle_, _arg5._18U.speed_), x_, y_);
            } else {
                map_.addObj(new ExplosionEffect(_local7, this.size_, 10), x_, y_);
            }
            ;
        }
        ;
        if (_arg2 > 0) {
            _local15 = ((((this._0g0()) || (((!((_arg5 == null))) && (_arg5._18U._120))))) || (_local6));
            this._Th(_arg2, _local15);
        }
        ;
    }

    public function _0go(_arg1:int, _arg2:String):void {
        var _local3:_i9 = new _i9(this, 0xFF0000, 3000, _arg1);
        _local3.setStringBuilder(new _5R().setParams(_arg2));
        map_.mapOverlay_.addStatusText(_local3);
    }

    public function _1O3(_arg1:int, _arg2:String):void {
        var _local3:_i9 = new _i9(this, 0xFF0000, 3000, _arg1);
        _local3.setStringBuilder(new _1M(("Pet " + _arg2)));
        map_.mapOverlay_.addStatusText(_local3);
    }

    public function _Th(_arg1:int, _arg2:Boolean):void {
        var _local3:String = ("-" + _arg1);
        var _local4:_i9 = new _i9(this, ((_arg2) ? 0x9000FF : 0xFF0000), 1000);
        _local4.setStringBuilder(new _1M(_local3));
        map_.mapOverlay_.addStatusText(_local4);
    }

    public function _9J(_arg1:Vector.<IGraphicsData>, _arg2:_18q):void {
        if (this._ar == null) {
            this._ar = this.makeNameBitmapData();
            this._0Se = new GraphicsBitmapFill(null, new Matrix(), false, false);
            this._1zT = new GraphicsPath(_1WM._5r, new Vector.<Number>());
        }
        ;
        var _local3:int = ((this._ar.width / 2) + 1);
        var _local4:int = 30;
        var _local5:Vector.<Number> = this._1zT.data;
        _local5.length = 0;
        _local5.push((_1Pg[0] - _local3), _1Pg[1], (_1Pg[0] + _local3), _1Pg[1], (_1Pg[0] + _local3), (_1Pg[1] + _local4), (_1Pg[0] - _local3), (_1Pg[1] + _local4));
        this._0Se.bitmapData = this._ar;
        var _local6:Matrix = this._0Se.matrix;
        _local6.identity();
        _local6.translate(_local5[0], _local5[1]);
        _arg1.push(this._0Se);
        _arg1.push(this._1zT);
        _arg1.push(_1WM.END_FILL);
    }

    public function _0uO(_arg1:String, _arg2:int):void {
        this.texture_ = AssetLibrary._Rb(_arg1, _arg2);
        this._1XA = (this.texture_.height / 8);
    }

    public function getPortrait():BitmapData {
        var _local1:BitmapData;
        var _local2:int;
        if (this._0H == null) {
            _local1 = (((this.props_._0H) != null) ? this.props_._0H.getTexture() : this.texture_);
            _local2 = ((4 / _local1.width) * 100);
            this._0H = TextureRedrawer.resize(_local1, this.mask_, _local2, true, this.tex1Id_, this.tex2Id_);
            this._0H = _0R9._ud(this._0H, 0);
        }
        ;
        return (this._0H);
    }

    public function setAttack(_arg1:int, _arg2:Number):void {
        this._5E = _arg2;
        this._089 = getTimer();
    }

    public function _0S3(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var _local9:BitmapData;
        var _local10:GraphicsBitmapFill;
        var _local11:GraphicsPath;
        var _local12:Number;
        var _local13:Number;
        var _local14:Matrix;
        if (this._3u == null) {
            this._3u = new Vector.<BitmapData>();
            this._1bI = new Vector.<GraphicsBitmapFill>();
            this._05F = new Vector.<GraphicsPath>();
        }
        ;
        this._3u.length = 0;
        var _local4:int = (_arg3 / 500);
        ConditionEffect._0TI(this.condition_[ConditionEffect._11S], this._3u, _local4);
        ConditionEffect.getConditionEffectIcons2(this.condition_[ConditionEffect._T1], this._3u, _local4);
        var _local5:Number = _1Pg[3];
        var _local6:Number = this.vS_[1];
        var _local7:int = this._3u.length;
        var _local8:int;
        while (_local8 < _local7) {
            _local9 = this._3u[_local8];
            if (_local8 >= this._1bI.length) {
                this._1bI.push(new GraphicsBitmapFill(null, new Matrix(), false, false));
                this._05F.push(new GraphicsPath(_1WM._5r, new Vector.<Number>()));
            }
            ;
            _local10 = this._1bI[_local8];
            _local11 = this._05F[_local8];
            _local10.bitmapData = _local9;
            _local12 = ((_local5 - ((_local9.width * _local7) / 2)) + (_local8 * _local9.width));
            _local13 = (_local6 - (_local9.height / 2));
            _local11.data.length = 0;
            _local11.data.push(_local12, _local13, (_local12 + _local9.width), _local13, (_local12 + _local9.width), (_local13 + _local9.height), _local12, (_local13 + _local9.height));
            _local14 = _local10.matrix;
            _local14.identity();
            _local14.translate(_local12, _local13);
            _arg1.push(_local10);
            _arg1.push(_local11);
            _arg1.push(_1WM.END_FILL);
            _local8++;
        }
        ;
    }

    public function toString():String {
        return ((((((((((("[" + getQualifiedClassName(this)) + " id: ") + objectId_) + " type: ") + ObjectLibrary._1w3[this.objectType_]) + " pos: ") + x_) + ", ") + y_) + "]"));
    }

    protected function makeNameBitmapData():BitmapData {
        var _local1:_1vN = new _1M(this.name_);
        var _local2:_JP = _8w._1Sz().getInstance(_JP);
        return (_local2.make(_local1, 16, 0xFFFFFF, true, _2h, true));
    }

    protected function _():BitmapData {
        if (this._1FR == null) {
            this._1FR = AssetLibrary._Rb("lofiChar8x8", int((Math.random() * 239)));
        }
        ;
        return (this._1FR);
    }

    protected function getTexture(_arg1:_18q, _arg2:int):BitmapData {
        var _local6:Pet;
        var _local7:Number;
        var _local8:int;
        var _local9:_0T2;
        var _local10:int;
        var _local11:BitmapData;
        var _local12:int;
        var _local13:BitmapData;
        if ((this is Pet)) {
            _local6 = Pet(this);
            if (((!((this.condition_[ConditionEffect._11S] == 0))) && (!(this.isPaused())))) {
                if (_local6._0cg != 32912) {
                    _local6._0J7(32912);
                }
                ;
            } else {
                if (!_local6._Z2) {
                    _local6._35();
                }
                ;
            }
            ;
        }
        ;
        var _local3:BitmapData = this.texture_;
        var _local4:int = this.size_;
        var _local5:BitmapData;
        if (this._0TX != null) {
            _local7 = 0;
            _local8 = _0zq._c0;
            if (_arg2 < (this._089 + get)) {
                if (!this.props_._0ce) {
                    this._Zo = this._5E;
                }
                ;
                _local7 = (((_arg2 - this._089) % get) / get);
                _local8 = _0zq._4z;
            } else {
                if (((!((this.moveVec_.x == 0))) || (!((this.moveVec_.y == 0))))) {
                    _local10 = (0.5 / this.moveVec_.length);
                    _local10 = (_local10 + (400 - (_local10 % 400)));
                    if ((((((((this.moveVec_.x > _6B)) || ((this.moveVec_.x < _0wF)))) || ((this.moveVec_.y > _6B)))) || ((this.moveVec_.y < _0wF)))) {
                        this._Zo = Math.atan2(this.moveVec_.y, this.moveVec_.x);
                        _local8 = _0zq._1W2;
                    } else {
                        _local8 = _0zq._c0;
                    }
                    ;
                    _local7 = ((_arg2 % _local10) / _local10);
                }
                ;
            }
            ;
            _local9 = this._0TX.imageFromFacing(this._Zo, _arg1, _local8, _local7);
            _local3 = _local9.image_;
            _local5 = _local9.mask_;
        } else {
            if (this._9k != null) {
                _local11 = this._9k.getTexture(_arg2);
                if (_local11 != null) {
                    _local3 = _local11;
                }
                ;
            }
            ;
        }
        ;
        if (((this.props_._1ns) || (!((this._1bD == null))))) {
            return (_local3);
        }
        ;
        if (_arg1._0Fy) {
            _local12 = (((_local3 == null)) ? 8 : _local3.width);
            _local3 = this._();
            _local5 = null;
            _local4 = (this.size_ * Math.min(1.5, (_local12 / _local3.width)));
        }
        ;
        if (((this._09y()) && (!((this is Pet))))) {
            _local3 = _1V._2b(_local3, _1oT);
        }
        ;
        if (((((this._AF()) || (this._0TK()))) && (!((this is Pet))))) {
            _local3 = _1V._2b(_local3, _ak);
        }
        ;
        if ((((this.tex1Id_ == 0)) && ((this.tex2Id_ == 0)))) {
            _local3 = TextureRedrawer.redraw(_local3, _local4, false, 0);
        } else {
            _local13 = null;
            if (this._Y9 == null) {
                this._Y9 = new Dictionary();
            } else {
                _local13 = this._Y9[_local3];
            }
            ;
            if (_local13 == null) {
                _local13 = TextureRedrawer.resize(_local3, _local5, _local4, false, this.tex1Id_, this.tex2Id_);
                _local13 = _0R9._ud(_local13, 0);
                this._Y9[_local3] = _local13;
            }
            ;
            _local3 = _local13;
        }
        ;
        return (_local3);
    }

    protected function _1rR(_arg1:Vector.<IGraphicsData>, _arg2:int):void {
        var _local7:Number;
        var _local8:Number;
        if (this._1xM == null) {
            this._0qL = new GraphicsSolidFill();
            this._1h2 = new GraphicsPath(_1WM._5r, new Vector.<Number>());
            this._1mm = new GraphicsSolidFill(0x10FF00);
            this._1xM = new GraphicsPath(_1WM._5r, new Vector.<Number>());
        }
        ;
        var _local3:Number = this._022;
        if (this._1wA <= _local3) {
            _local7 = ((_local3 - this._1wA) / _local3);
            this._0qL.color = MoreColorUtil._j9(0x545454, 0xFF0000, (Math.abs(Math.sin((_arg2 / 300))) * _local7));
        } else {
            this._0qL.color = 0x545454;
        }
        ;
        var _local4:int = 20;
        var _local5:int = 4;
        var _local6:int = 6;
        this._1h2.data.length = 0;
        this._1h2.data.push((_1Pg[0] - _local4), (_1Pg[1] + _local5), (_1Pg[0] + _local4), (_1Pg[1] + _local5), (_1Pg[0] + _local4), ((_1Pg[1] + _local5) + _local6), (_1Pg[0] - _local4), ((_1Pg[1] + _local5) + _local6));
        _arg1.push(this._0qL);
        _arg1.push(this._1h2);
        _arg1.push(_1WM.END_FILL);
        if (this._1wA > 0) {
            _local8 = (((this._1wA / this._022) * 2) * _local4);
            this._1xM.data.length = 0;
            this._1xM.data.push((_1Pg[0] - _local4), (_1Pg[1] + _local5), ((_1Pg[0] - _local4) + _local8), (_1Pg[1] + _local5), ((_1Pg[0] - _local4) + _local8), ((_1Pg[1] + _local5) + _local6), (_1Pg[0] - _local4), ((_1Pg[1] + _local5) + _local6));
            _arg1.push(this._1mm);
            _arg1.push(this._1xM);
            _arg1.push(_1WM.END_FILL);
        }
        ;
        _return._01S(this._1mm, true);
        _return._01S(this._0qL, true);
    }


}
}//package com.company.assembleegameclient.objects

