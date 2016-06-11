// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.Map

package com.company.assembleegameclient.map {
import _058.Background;

import _0CT._8w;

import _1E._03e;

import _1ES._04E;
import _1ES._0jA;
import _1ES._return;

import _1Em._1zd;

import _1VI._TT;

import _ZR._20n;

import _in._0cG;
import _in._1oz;

import _qd._Fy;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.BasicObject;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects._1CH;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.ConditionEffect;

import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.filters.BlurFilter;
import flash.filters.ColorMatrixFilter;
import flash.geom.ColorTransform;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.utils.Dictionary;

import kabam.rotmg.assets._0vi;

public class Map extends _1Px {

    public static const _0wt:String = "Cloth Bazaar";
    public static const _1Bv:String = "Nexus";
    public static const _oB:String = "Daily Quest Room";
    public static const PET_YARD_1:String = "Pet Yard";
    public static const PET_YARD_2:String = "Pet Yard 2";
    public static const PET_YARD_3:String = "Pet Yard 3";
    public static const PET_YARD_4:String = "Pet Yard 4";
    public static const PET_YARD_5:String = "Pet Yard 5";
    public static const _05t:String = "Guild Hall";
    public static const _kl:String = "Nexus_Explanation";
    public static const _ou:String = "Vault";
    private static const _0s7:Array = ["sortVal_", "objectId_"];
    private static const _0Q0:Array = [Array.NUMERIC, Array.NUMERIC];
    protected static const _09:ColorMatrixFilter = new ColorMatrixFilter([0.05, 0.05, 0.05, 0, 0, 0.05, 0.05, 0.05, 0, 0, 0.05, 0.05, 0.05, 0, 0, 0.05, 0.05, 0.05, 1, 0]);

    public static var _1N8:Boolean = false;
    public static var texture:BitmapData;
    protected static var _0qD:ColorTransform = new ColorTransform((0xFF / 0xFF), (55 / 0xFF), (0 / 0xFF), 0);

    public function Map(_arg1:_0p2) {
        this._uX = new Vector.<BasicObject>();
        this._0El = new Vector.<int>();
        this._XU = new Dictionary();
        this._io = new _0vi.DarknessBackground();
        this.graphicsData_ = new Vector.<IGraphicsData>();
        this._0tU = new Vector.<IGraphicsData>();
        this._0CL = new Vector.<_TT>();
        this._0kp = new Array();
        this._1XK = new Array();
        this._1b2 = new Vector.<Square>();
        this._Es = new Vector.<Square>();
        super();
        gs_ = _arg1;
        _Rd = new _0Ht();
        _0XD = new _0U0();
        mapOverlay_ = new _1zd();
        partyOverlay_ = new _20n(this);
        party_ = new _1CH(this);
        quest_ = new Quest(this);
        this._1Wu = _8w._1Sz().getInstance(_Fy);
        _8w._1Sz().getInstance(_03e).gameObjects = goDict_;
        this._XU[PET_YARD_1] = true;
        this._XU[PET_YARD_2] = true;
        this._XU[PET_YARD_3] = true;
        this._XU[PET_YARD_4] = true;
        this._XU[PET_YARD_5] = true;
        this._XU["Nexus"] = true;
        this._XU["Tomb of the Ancients"] = true;
        this._XU["Mad Lab"] = true;
        this._XU["Guild Hall"] = true;
        this._XU["Guild Hall 2"] = true;
        this._XU["Guild Hall 3"] = true;
        this._XU["Guild Hall 4"] = true;
        this._XU["Cloth Bazaar"] = true;
        _IB = Parameters._0g5();
    }
    public var _0kp:Array;
    public var _1XK:Array;
    public var _1b2:Vector.<Square>;
    public var _Es:Vector.<Square>;
    private var _1Wu:_Fy;
    private var _LB:Boolean = false;
    private var _uX:Vector.<BasicObject>;
    private var _0El:Vector.<int>;
    private var _XU:Dictionary;
    private var _Yo:Boolean = false;
    private var _io:DisplayObject;
    private var graphicsData_:Vector.<IGraphicsData>;
    private var _0tU:Vector.<IGraphicsData>;
    private var _0CL:Vector.<_TT>;

    override public function setProps(_arg1:int, _arg2:int, _arg3:String, _arg4:int, _arg5:Boolean, _arg6:Boolean):void {
        width_ = _arg1;
        height_ = _arg2;
        name_ = _arg3;
        _0Zz = _arg4;
        allowPlayerTeleport_ = _arg5;
        showDisplays_ = _arg6;
        this._Mg(name_);
    }

    override public function initialize():void {
        squares_.length = (width_ * height_);
        background_ = Background._05z(_0Zz);
        if (background_ != null) {
            addChild(background_);
        }
        ;
        addChild(map_);
        addChild(_Rd);
        addChild(_0XD);
        addChild(mapOverlay_);
        addChild(partyOverlay_);
        isPetYard = (name_.substr(0, 8) == "Pet Yard");
    }

    override public function dispose():void {
        var _local1:Square;
        var _local2:GameObject;
        var _local3:BasicObject;
        gs_ = null;
        background_ = null;
        map_ = null;
        _Rd = null;
        _0XD = null;
        mapOverlay_ = null;
        partyOverlay_ = null;
        for each (_local1 in _0Fz) {
            _local1.dispose();
        }
        ;
        _0Fz.length = 0;
        _0Fz = null;
        squares_.length = 0;
        squares_ = null;
        for each (_local2 in goDict_) {
            _local2.dispose();
        }
        ;
        goDict_ = null;
        for each (_local3 in _1NM) {
            _local3.dispose();
        }
        ;
        _1NM = null;
        merchLookup_ = null;
        player_ = null;
        party_ = null;
        quest_ = null;
        this._uX = null;
        this._0El = null;
        _1oz._13J();
        _return.dispose();
        _0cG.getInstance().dispose();
    }

    override public function update(_arg1:int, _arg2:int):void {
        var _local3:BasicObject;
        var _local4:int;
        this._LB = true;
        for each (_local3 in goDict_) {
            if (!_local3.update(_arg1, _arg2)) {
                this._0El.push(_local3.objectId_);
            }
            ;
        }
        ;
        for each (_local3 in _1NM) {
            if (!_local3.update(_arg1, _arg2)) {
                this._0El.push(_local3.objectId_);
            }
            ;
        }
        ;
        this._LB = false;
        for each (_local3 in this._uX) {
            this.internalAddObj(_local3);
        }
        ;
        this._uX.length = 0;
        for each (_local4 in this._0El) {
            this.internalRemoveObj(_local4);
        }
        ;
        this._0El.length = 0;
        party_.update(_arg1, _arg2);
    }

    override public function pSTopW(_arg1:Number, _arg2:Number):Point {
        var _local3:Square;
        for each (_local3 in this._1b2) {
            if (((!((_local3.faces_.length == 0))) && (_local3.faces_[0].face_.contains(_arg1, _arg2)))) {
                return (new Point(_local3.center_.x, _local3.center_.y));
            }
            ;
        }
        ;
        return (null);
    }

    override public function setGroundTile(_arg1:int, _arg2:int, _arg3:uint):void {
        var _local8:int;
        var _local9:int;
        var _local10:Square;
        var _local4:Square = this.getSquare(_arg1, _arg2);
        _local4._1ex(_arg3);
        var _local5:int = (((_arg1 < (width_ - 1))) ? (_arg1 + 1) : _arg1);
        var _local6:int = (((_arg2 < (height_ - 1))) ? (_arg2 + 1) : _arg2);
        var _local7:int = (((_arg1 > 0)) ? (_arg1 - 1) : _arg1);
        while (_local7 <= _local5) {
            _local8 = (((_arg2 > 0)) ? (_arg2 - 1) : _arg2);
            while (_local8 <= _local6) {
                _local9 = (_local7 + (_local8 * width_));
                _local10 = squares_[_local9];
                if (((!((_local10 == null))) && (((_local10.props_._0Ed) || (!((_local10.tileType_ == _arg3))))))) {
                    _local10.faces_.length = 0;
                }
                ;
                _local8++;
            }
            ;
            _local7++;
        }
        ;
    }

    override public function addObj(_arg1:BasicObject, _arg2:Number, _arg3:Number):void {
        _arg1.x_ = _arg2;
        _arg1.y_ = _arg3;
        if (this._LB) {
            this._uX.push(_arg1);
        } else {
            this.internalAddObj(_arg1);
        }
        ;
    }

    override public function removeObj(_arg1:int):void {
        if (this._LB) {
            this._0El.push(_arg1);
        } else {
            this.internalRemoveObj(_arg1);
        }
        ;
    }

    override public function draw(_arg1:_18q, _arg2:int):void {
        var _local6:Square;
        var _local13:GameObject;
        var _local14:BasicObject;
        var _local15:int;
        var _local16:Number;
        var _local17:Number;
        var _local18:Number;
        var _local19:Number;
        var _local20:Number;
        var _local21:uint;
        var _local22:_04E;
        var _local23:int;
        var _local24:Array;
        var _local25:Number;
        if (_IB != Parameters._0g5()) {
            if ((((((_IB == true)) && (!((WebMain._0b2.stage3Ds[0].context3D == null))))) && (!(((!((WebMain._0b2.stage3Ds[0].context3D == null))) && (!((WebMain._0b2.stage3Ds[0].context3D.driverInfo.toLowerCase().indexOf("disposed") == -1)))))))) {
                WebMain._0b2.stage3Ds[0].context3D.clear();
                WebMain._0b2.stage3Ds[0].context3D.present();
            } else {
                map_.graphics.clear();
            }
            ;
            signalRenderSwitch.dispatch(_IB);
            _IB = Parameters._0g5();
        }
        ;
        var _local3:Rectangle = _arg1._0Ug;
        x = -(_local3.x);
        y = -(_local3.y);
        var _local4:Number = ((-(_local3.y) - (_local3.height / 2)) / 50);
        var _local5:Point = new Point((_arg1.x_ + (_local4 * Math.cos((_arg1.angleRad_ - (Math.PI / 2))))), (_arg1.y_ + (_local4 * Math.sin((_arg1.angleRad_ - (Math.PI / 2))))));
        if (background_ != null) {
            background_.draw(_arg1, _arg2);
        }
        ;
        this._0kp.length = 0;
        this._1XK.length = 0;
        this._1b2.length = 0;
        this._Es.length = 0;
        var _local7:int = _arg1.maxDist_;
        var _local8:int = Math.max(0, (_local5.x - _local7));
        var _local9:int = Math.min((width_ - 1), (_local5.x + _local7));
        var _local10:int = Math.max(0, (_local5.y - _local7));
        var _local11:int = Math.min((height_ - 1), (_local5.y + _local7));
        this.graphicsData_.length = 0;
        this._0tU.length = 0;
        this._0CL.length = 0;
        var _local12:int = _local8;
        while (_local12 <= _local9) {
            _local15 = _local10;
            while (_local15 <= _local11) {
                _local6 = squares_[(_local12 + (_local15 * width_))];
                if (_local6 != null) {
                    _local16 = (_local5.x - _local6.center_.x);
                    _local17 = (_local5.y - _local6.center_.y);
                    _local18 = ((_local16 * _local16) + (_local17 * _local17));
                    if (_local18 > _arg1._0Dp) {
                    } else {
                        _local6._kG = _arg2;
                        _local6.draw(this.graphicsData_, _arg1, _arg2);
                        this._1b2.push(_local6);
                        if (_local6._1GU != null) {
                            this._Es.push(_local6);
                        }
                        ;
                    }
                    ;
                }
                ;
                _local15++;
            }
            ;
            _local12++;
        }
        ;
        for each (_local13 in goDict_) {
            _local13._07t = false;
            if (!_local13._0HD) {
                _local6 = _local13._ml;
                if ((((_local6 == null)) || (!((_local6._kG == _arg2))))) {
                } else {
                    _local13._07t = true;
                    _local13._0IF(_arg1);
                    if (_local13.props_._0GP) {
                        if (_local13.props_._1ns) {
                            _local13.draw(this.graphicsData_, _arg1, _arg2);
                        } else {
                            this._1XK.push(_local13);
                        }
                        ;
                    } else {
                        this._0kp.push(_local13);
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        for each (_local14 in _1NM) {
            _local14._07t = false;
            _local6 = _local14._ml;
            if ((((_local6 == null)) || (!((_local6._kG == _arg2))))) {
            } else {
                _local14._07t = true;
                _local14._0IF(_arg1);
                this._0kp.push(_local14);
            }
            ;
        }
        ;
        if (this._1XK.length > 0) {
            this._1XK.sortOn(_0s7, _0Q0);
            for each (_local14 in this._1XK) {
                _local14.draw(this.graphicsData_, _arg1, _arg2);
            }
            ;
        }
        ;
        this._0kp.sortOn(_0s7, _0Q0);
        if (Parameters.data_.drawShadows) {
            for each (_local14 in this._0kp) {
                if (!_local14._Ci) {
                } else {
                    _local14.drawShadow(this.graphicsData_, _arg1, _arg2);
                }
                ;
            }
            ;
        }
        ;
        for each (_local14 in this._0kp) {
            _local14.draw(this.graphicsData_, _arg1, _arg2);
            if (Parameters._0g5()) {
                _local14.draw3d(this._0CL);
            }
            ;
        }
        ;
        if (this._Es.length > 0) {
            for each (_local6 in this._Es) {
                _local6._1wm(this.graphicsData_, _arg1, _arg2);
            }
            ;
        }
        ;
        if (((((!((player_ == null))) && ((player_.breath_ >= 0)))) && ((player_.breath_ < Parameters._Vq)))) {
            _local19 = ((Parameters._Vq - player_.breath_) / Parameters._Vq);
            _local20 = (Math.abs(Math.sin((_arg2 / 300))) * 0.75);
            _0qD.alphaMultiplier = (_local19 * _local20);
            _Rd.transform.colorTransform = _0qD;
            _Rd.visible = true;
            _Rd.x = _local3.left;
            _Rd.y = _local3.top;
        } else {
            _Rd.visible = false;
        }
        ;
        if (((!((player_ == null))) && (!(Parameters._20Z)))) {
            _0XD.visible = true;
            _0XD.x = (_local3.right - 10);
            _0XD.y = _local3.top;
        } else {
            _0XD.visible = false;
        }
        ;
        if (((Parameters._0g5()) && (_0jA._t5))) {
            _local21 = this._1oi();
            _local22 = _8w._1Sz().getInstance(_04E);
            _local22.dispatch(this.graphicsData_, this._0CL, width_, height_, _arg1, _local21);
            _local23 = 0;
            while (_local23 < this.graphicsData_.length) {
                if ((((this.graphicsData_[_local23] is GraphicsBitmapFill)) && (_return._k8(GraphicsBitmapFill(this.graphicsData_[_local23]))))) {
                    this._0tU.push(this.graphicsData_[_local23]);
                    this._0tU.push(this.graphicsData_[(_local23 + 1)]);
                    this._0tU.push(this.graphicsData_[(_local23 + 2)]);
                } else {
                    if ((((this.graphicsData_[_local23] is GraphicsSolidFill)) && (_return._y2(GraphicsSolidFill(this.graphicsData_[_local23]))))) {
                        this._0tU.push(this.graphicsData_[_local23]);
                        this._0tU.push(this.graphicsData_[(_local23 + 1)]);
                        this._0tU.push(this.graphicsData_[(_local23 + 2)]);
                    }
                    ;
                }
                ;
                _local23++;
            }
            ;
            if (this._0tU.length > 0) {
                map_.graphics.clear();
                map_.graphics.drawGraphicsData(this._0tU);
                if (this._Yo) {
                    this._Yo = false;
                }
                ;
            } else {
                if (!this._Yo) {
                    map_.graphics.clear();
                    this._Yo = true;
                }
                ;
            }
            ;
            if ((_arg2 % 149) == 0) {
                _return._032();
            }
            ;
        } else {
            map_.graphics.clear();
            map_.graphics.drawGraphicsData(this.graphicsData_);
        }
        ;
        map_.filters.length = 0;
        if (((!((player_ == null))) && (!(((player_.condition_[ConditionEffect._11S] & ConditionEffect._1YU) == 0))))) {
            _local24 = [];
            if (player_.isDrunk()) {
                _local25 = (20 + (10 * Math.sin((_arg2 / 1000))));
                _local24.push(new BlurFilter(_local25, _local25));
            }
            ;
            if (player_.isBlind()) {
                _local24.push(_09);
            }
            ;
            map_.filters = _local24;
        } else {
            if (map_.filters.length > 0) {
                map_.filters = [];
            }
            ;
        }
        ;
        mapOverlay_.draw(_arg1, _arg2);
        partyOverlay_.draw(_arg1, _arg2);
        if (((player_) && (player_.isDarkness()))) {
            this._io.x = -300;
            this._io.y = ((Parameters.data_.centerOnPlayer) ? -525 : -515);
            this._io.alpha = 0.95;
            addChild(this._io);
        } else {
            if (contains(this._io)) {
                removeChild(this._io);
            }
            ;
        }
        ;
    }

    public function internalAddObj(_arg1:BasicObject):void {
        if (!_arg1.addTo(this, _arg1.x_, _arg1.y_)) {
            return;
        }
        ;
        var _local2:Dictionary = (((_arg1 is GameObject)) ? goDict_ : _1NM);
        if (_local2[_arg1.objectId_] != null) {
            return;
        }
        ;
        _local2[_arg1.objectId_] = _arg1;
    }

    public function internalRemoveObj(_arg1:int):void {
        var _local2:Dictionary = goDict_;
        var _local3:BasicObject = _local2[_arg1];
        if (_local3 == null) {
            _local2 = _1NM;
            _local3 = _local2[_arg1];
            if (_local3 == null) {
                return;
            }
            ;
        }
        ;
        _local3.removeFromMap();
        delete _local2[_arg1];
    }

    public function getSquare(_arg1:Number, _arg2:Number):Square {
        if ((((((((_arg1 < 0)) || ((_arg1 >= width_)))) || ((_arg2 < 0)))) || ((_arg2 >= height_)))) {
            return (null);
        }
        ;
        var _local3:int = (int(_arg1) + (int(_arg2) * width_));
        var _local4:Square = squares_[_local3];
        if (_local4 == null) {
            _local4 = new Square(this, int(_arg1), int(_arg2));
            squares_[_local3] = _local4;
            _0Fz.push(_local4);
        }
        ;
        return (_local4);
    }

    public function lookupSquare(_arg1:int, _arg2:int):Square {
        if ((((((((_arg1 < 0)) || ((_arg1 >= width_)))) || ((_arg2 < 0)))) || ((_arg2 >= height_)))) {
            return (null);
        }
        ;
        return (squares_[(_arg1 + (_arg2 * width_))]);
    }

    private function _Mg(_arg1:String):void {
        _1N8 = ((!((this._XU[_arg1] == null))) || ((WebMain._0b2.stage3Ds[0].context3D == null)));
    }

    private function _1oi():uint {
        var _local1:uint;
        if (((!((player_ == null))) && (!(((player_.condition_[ConditionEffect._11S] & ConditionEffect._1YU) == 0))))) {
            if (player_.isPaused()) {
                _local1 = _0jA.STAGE3D_FILTER_PAUSE;
            } else {
                if (player_.isBlind()) {
                    _local1 = _0jA.STAGE3D_FILTER_BLIND;
                } else {
                    if (player_.isDrunk()) {
                        _local1 = _0jA.STAGE3D_FILTER_DRUNK;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        return (_local1);
    }


}
}//package com.company.assembleegameclient.map

