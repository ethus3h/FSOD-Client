// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Projectile

package com.company.assembleegameclient.objects {
import _GI.HitEffect;
import _GI._0rj;

import com.company.assembleegameclient.engine3d._0Z2;
import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.tutorial.Tutorial;
import com.company.assembleegameclient.tutorial.doneAction;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0CH;
import com.company.assembleegameclient.util._1Gt;
import com.company.assembleegameclient.util._1Os;
import com.company.util.Trig;
import com.company.util._1WM;

import flash.display.BitmapData;
import flash.display.GradientType;
import flash.display.GraphicsGradientFill;
import flash.display.GraphicsPath;
import flash.display.IGraphicsData;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Vector3D;
import flash.utils.Dictionary;

public class Projectile extends BasicObject {

    private static var _0at:Dictionary = new Dictionary();

    public static function _1j(_arg1:int, _arg2:uint):int {
        return (_0at[((_arg2 << 24) | _arg1)]);
    }

    public static function _Mo(_arg1:int, _arg2:uint):int {
        var _local3:int = _1LK();
        _0at[((_arg2 << 24) | _arg1)] = _local3;
        return (_local3);
    }

    public static function _0mk(_arg1:int, _arg2:uint):void {
        delete _0at[((_arg2 << 24) | _arg1)];
    }

    public static function dispose():void {
        _0at = new Dictionary();
    }

    public function Projectile() {
        this._0xr = new _0Z2(100);
        this._H2 = new Point();
        this._0ug = new Vector3D();
        this._1wM = new GraphicsGradientFill(GradientType.RADIAL, [0, 0], [0.5, 0], null, new Matrix());
        this._zB = new GraphicsPath(_1WM._5r, new Vector.<Number>());
        super();
    }
    public var props_:ObjectProperties;
    public var _o0:ObjectProperties;
    public var _18U:_0HW;
    public var texture_:BitmapData;
    public var bulletId_:uint;
    public var ownerId_:int;
    public var containerType_:int;
    public var bulletType_:uint;
    public var _sb:Boolean;
    public var _11G:Boolean;
    public var damage_:int;
    public var _lv:String;
    public var _0Ob:Number;
    public var _15H:Number;
    public var startTime_:int;
    public var angle_:Number = 0;
    public var _18f:Dictionary;
    public var _0xr:_0Z2;
    protected var _1wM:GraphicsGradientFill;
    protected var _zB:GraphicsPath;
    private var _H2:Point;
    private var _0ug:Vector3D;

    override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean {
        var _local4:Player;
        this._0Ob = _arg2;
        this._15H = _arg3;
        if (!super.addTo(_arg1, _arg2, _arg3)) {
            return (false);
        }
        ;
        if (((!(this._o0.flying_)) && (_ml.sink_))) {
            z_ = 0.1;
        } else {
            _local4 = (_arg1.goDict_[this.ownerId_] as Player);
            if (((!((_local4 == null))) && ((_local4._UE > 0)))) {
                z_ = (0.5 - (0.4 * (_local4._UE / Parameters._Hw)));
            }
            ;
        }
        ;
        return (true);
    }

    override public function removeFromMap():void {
        super.removeFromMap();
        _0mk(this.ownerId_, this.bulletId_);
        this._18f = null;
        _0CH._0Ez(this);
    }

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local5:Vector.<uint>;
        var _local7:Player;
        var _local8:Boolean;
        var _local9:Boolean;
        var _local10:Boolean;
        var _local11:int;
        var _local12:Boolean;
        var _local3:int = (_arg1 - this.startTime_);
        if (_local3 > this._18U.lifetime_) {
            return (false);
        }
        ;
        var _local4:Point = this._H2;
        this._1ML(_local3, _local4);
        if (((!(this.moveTo(_local4.x, _local4.y))) || ((_ml.tileType_ == 0xFFFF)))) {
            if (this._11G) {
                map_.gs_.gsc_.squareHit(_arg1, this.bulletId_, this.ownerId_);
            } else {
                if (_ml.obj_ != null) {
                    _local5 = _1Gt._17q(this.texture_);
                    map_.addObj(new HitEffect(_local5, 100, 3, this.angle_, this._18U.speed_), _local4.x, _local4.y);
                }
                ;
            }
            ;
            return (false);
        }
        ;
        if (((((!((_ml.obj_ == null))) && (((!(_ml.obj_.props_.isEnemy_)) || (!(this._sb)))))) && (((_ml.obj_.props_.enemyOccupySquare_) || (((!(this._18U._7g)) && (_ml.obj_.props_.occupySquare_))))))) {
            if (this._11G) {
                map_.gs_.gsc_.otherHit(_arg1, this.bulletId_, this.ownerId_, _ml.obj_.objectId_);
            } else {
                _local5 = _1Gt._17q(this.texture_);
                map_.addObj(new HitEffect(_local5, 100, 3, this.angle_, this._18U.speed_), _local4.x, _local4.y);
            }
            ;
            return (false);
        }
        ;
        var _local6:GameObject = this._QR(_local4.x, _local4.y);
        if (_local6 != null) {
            _local7 = map_.player_;
            _local8 = !((_local7 == null));
            _local9 = _local6.props_.isEnemy_;
            _local10 = ((((_local8) && (!(_local7.isPaused())))) && (((this._11G) || (((_local9) && ((this.ownerId_ == _local7.objectId_)))))));
            if (_local10) {
                _local11 = GameObject._DU(this.damage_, _local6._05c, this._18U._120, _local6.condition_);
                _local12 = false;
                if (_local6._1wA <= _local11) {
                    _local12 = true;
                    if (_local6.props_.isEnemy_) {
                        doneAction(map_.gs_, Tutorial._1cT);
                    }
                    ;
                }
                ;
                if (_local6 == _local7) {
                    map_.gs_.gsc_.playerHit(this.bulletId_, this.ownerId_);
                    _local6.damage(this.containerType_, _local11, this._18U.effects_, false, this);
                } else {
                    if (_local6.props_.isEnemy_) {
                        map_.gs_.gsc_.enemyHit(_arg1, this.bulletId_, _local6.objectId_, _local12);
                        _local6.damage(this.containerType_, _local11, this._18U.effects_, _local12, this);
                    } else {
                        if (!this._18U._1AG) {
                            map_.gs_.gsc_.otherHit(_arg1, this.bulletId_, this.ownerId_, _local6.objectId_);
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
            if (this._18U._1AG) {
                this._18f[_local6] = true;
            } else {
                return (false);
            }
            ;
        }
        ;
        return (true);
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var _local6:uint;
        var _local7:uint;
        var _local8:int;
        var _local9:int;
        if (!Parameters._IH) {
            return;
        }
        ;
        var _local4:BitmapData = this.texture_;
        if (Parameters._1la != 0) {
            switch (Parameters._1la) {
                case 1:
                    _local6 = 16777100;
                    _local7 = 0xFFFFFF;
                    break;
                case 2:
                    _local6 = 16777100;
                    _local7 = 16777100;
                    break;
                case 3:
                    _local6 = 0xFF0000;
                    _local7 = 0xFF0000;
                    break;
                case 4:
                    _local6 = 0xFF;
                    _local7 = 0xFF;
                    break;
                case 5:
                    _local6 = 0xFFFFFF;
                    _local7 = 0xFFFFFF;
                    break;
                case 6:
                    _local6 = 0;
                    _local7 = 0;
                    break;
            }
            ;
            _local4 = TextureRedrawer.redraw(_local4, 120, true, _local7);
        }
        ;
        var _local5:Number = (((this.props_.rotation_ == 0)) ? 0 : (_arg3 / this.props_.rotation_));
        this._0ug.x = x_;
        this._0ug.y = y_;
        this._0ug.z = z_;
        this._0xr.draw(_arg1, this._0ug, (((this.angle_ - _arg2.angleRad_) + this.props_._0tE) + _local5), _arg2.wToS_, _arg2, _local4);
        if (this._18U._0a8) {
            _local8 = (((this._18U._Vx) != -1) ? this._18U._Vx : 600);
            _local9 = 0;
            for (; _local9 < 3; _local9++) {
                if (((!((map_ == null))) && (!((map_.player_.objectId_ == this.ownerId_))))) {
                    if ((((this._18U._1Cm == -1)) && (((Math.random() * 100) > this._18U._1Cm)))) {
                        continue;
                    }
                    ;
                }
                ;
                map_.addObj(new _0rj(100, this._18U._0MV, _local8, 0.5, _1Os._1Bg(3), _1Os._1Bg(3)), x_, y_);
            }
            ;
        }
        ;
    }

    override public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        if (!Parameters._IH) {
            return;
        }
        ;
        var _local4:Number = (this.props_._1aU / 400);
        var _local5:Number = (30 * _local4);
        var _local6:Number = (15 * _local4);
        this._1wM.matrix.createGradientBox((_local5 * 2), (_local6 * 2), 0, (_1Pg[0] - _local5), (_1Pg[1] - _local6));
        _arg1.push(this._1wM);
        this._zB.data.length = 0;
        Vector.<Number>(this._zB.data).push((_1Pg[0] - _local5), (_1Pg[1] - _local6), (_1Pg[0] + _local5), (_1Pg[1] - _local6), (_1Pg[0] + _local5), (_1Pg[1] + _local6), (_1Pg[0] - _local5), (_1Pg[1] + _local6));
        _arg1.push(this._zB);
        _arg1.push(_1WM.END_FILL);
    }

    public function reset(_arg1:int, _arg2:int, _arg3:int, _arg4:int, _arg5:Number, _arg6:int, _arg7:String = "", _arg8:String = ""):void {
        var _local11:Number;
        clear();
        this.containerType_ = _arg1;
        this.bulletType_ = _arg2;
        this.ownerId_ = _arg3;
        this.bulletId_ = _arg4;
        this.angle_ = Trig._pc(_arg5);
        this.startTime_ = _arg6;
        objectId_ = _Mo(this.ownerId_, this.bulletId_);
        z_ = 0.5;
        this._o0 = ObjectLibrary._x9[this.containerType_];
        this._18U = this._o0._zu[_arg2];
        var _local9:String = ((((!((_arg7 == ""))) && ((this._18U.objectId_ == _arg8)))) ? _arg7 : this._18U.objectId_);
        this.props_ = ObjectLibrary._04P(_local9);
        _Ci = (this.props_._1aU > 0);
        var _local10:_1kQ = ObjectLibrary._mQ[this.props_.type_];
        this.texture_ = _local10.getTexture(objectId_);
        this._11G = this._o0.isEnemy_;
        this._sb = !(this._11G);
        this._lv = this._o0._1eA;
        this._18f = ((this._18U._1AG) ? new Dictionary() : null);
        if (this._18U.size_ >= 0) {
            _local11 = this._18U.size_;
        } else {
            _local11 = ObjectLibrary._qa(this.containerType_);
        }
        ;
        this._0xr.setSize((8 * (_local11 / 100)));
        this.damage_ = 0;
    }

    public function _06E(_arg1:int):void {
        this.damage_ = _arg1;
    }

    public function moveTo(_arg1:Number, _arg2:Number):Boolean {
        var _local3:Square = map_.getSquare(_arg1, _arg2);
        if (_local3 == null) {
            return (false);
        }
        ;
        x_ = _arg1;
        y_ = _arg2;
        _ml = _local3;
        return (true);
    }

    public function _QR(_arg1:Number, _arg2:Number):GameObject {
        var _local5:GameObject;
        var _local6:Number;
        var _local7:Number;
        var _local8:Number;
        var _local9:Number;
        var _local3:Number = Number.MAX_VALUE;
        var _local4:GameObject;
        for each (_local5 in map_.goDict_) {
            if (_local5._1vY()) {
            } else {
                if (!_local5._AF()) {
                    if (((((this._sb) && (_local5.props_.isEnemy_))) || (((this._11G) && (_local5.props_._0U9))))) {
                        if (((_local5._0HD) || (_local5.isPaused()))) {
                        } else {
                            _local6 = (((_local5.x_ > _arg1)) ? (_local5.x_ - _arg1) : (_arg1 - _local5.x_));
                            _local7 = (((_local5.y_ > _arg2)) ? (_local5.y_ - _arg2) : (_arg2 - _local5.y_));
                            if (!(((_local6 > _local5.radius_)) || ((_local7 > _local5.radius_)))) {
                                if (!((this._18U._1AG) && (!((this._18f[_local5] == null))))) {
                                    if (_local5 == map_.player_) {
                                        return (_local5);
                                    }
                                    ;
                                    _local8 = Math.sqrt(((_local6 * _local6) + (_local7 * _local7)));
                                    _local9 = ((_local6 * _local6) + (_local7 * _local7));
                                    if (_local9 < _local3) {
                                        _local3 = _local9;
                                        _local4 = _local5;
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
                }
                ;
            }
            ;
        }
        ;
        return (_local4);
    }

    private function _1ML(_arg1:int, _arg2:Point):void {
        var _local5:Number;
        var _local6:Number;
        var _local7:Number;
        var _local8:Number;
        var _local9:Number;
        var _local10:Number;
        var _local11:Number;
        var _local12:Number;
        var _local13:Number;
        var _local14:Number;
        _arg2.x = this._0Ob;
        _arg2.y = this._15H;
        var _local3:Number = (_arg1 * (this._18U.speed_ / 10000));
        var _local4:Number = ((((this.bulletId_ % 2)) == 0) ? 0 : Math.PI);
        if (this._18U._vV) {
            _local5 = (6 * Math.PI);
            _local6 = (Math.PI / 64);
            _local7 = (this.angle_ + (_local6 * Math.sin((_local4 + ((_local5 * _arg1) / 1000)))));
            _arg2.x = (_arg2.x + (_local3 * Math.cos(_local7)));
            _arg2.y = (_arg2.y + (_local3 * Math.sin(_local7)));
        } else {
            if (this._18U._0wZ) {
                _local8 = (((_arg1 / this._18U.lifetime_) * 2) * Math.PI);
                _local9 = (Math.sin(_local8) * (((this.bulletId_ % 2)) ? 1 : -1));
                _local10 = (Math.sin((2 * _local8)) * ((((this.bulletId_ % 4)) < 2) ? 1 : -1));
                _local11 = Math.sin(this.angle_);
                _local12 = Math.cos(this.angle_);
                _arg2.x = (_arg2.x + (((_local9 * _local12) - (_local10 * _local11)) * this._18U._06H));
                _arg2.y = (_arg2.y + (((_local9 * _local11) + (_local10 * _local12)) * this._18U._06H));
            } else {
                if (this._18U._wg) {
                    _local13 = ((this._18U.lifetime_ * (this._18U.speed_ / 10000)) / 2);
                    if (_local3 > _local13) {
                        _local3 = (_local13 - (_local3 - _local13));
                    }
                    ;
                }
                ;
                _arg2.x = (_arg2.x + (_local3 * Math.cos(this.angle_)));
                _arg2.y = (_arg2.y + (_local3 * Math.sin(this.angle_)));
                if (this._18U._5p != 0) {
                    _local14 = (this._18U._5p * Math.sin((_local4 + ((((_arg1 / this._18U.lifetime_) * this._18U._1q4) * 2) * Math.PI))));
                    _arg2.x = (_arg2.x + (_local14 * Math.cos((this.angle_ + (Math.PI / 2)))));
                    _arg2.y = (_arg2.y + (_local14 * Math.sin((this.angle_ + (Math.PI / 2)))));
                }
                ;
            }
            ;
        }
        ;
    }


}
}//package com.company.assembleegameclient.objects

