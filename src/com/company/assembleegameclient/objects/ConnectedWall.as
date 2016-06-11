// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ConnectedWall

package com.company.assembleegameclient.objects {
import _1ES._return;

import com.company.assembleegameclient.engine3d.ObjectFace3D;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;
import flash.geom.Vector3D;

public class ConnectedWall extends ConnectedObject {

    public function ConnectedWall(_arg1:XML) {
        super(_arg1);
        this._Sq = _arg1;
        if (_arg1.hasOwnProperty("BaseIndent")) {
            this._HC = (0.5 - Number(_arg1.BaseIndent));
        }
        ;
        if (_arg1.hasOwnProperty("TopIndent")) {
            this._0un = (0.5 - Number(_arg1.TopIndent));
        }
        ;
        if (_arg1.hasOwnProperty("Height")) {
            this.h_ = Number(_arg1.Height);
        }
        ;
        this._0Ys = !(_arg1.hasOwnProperty("NoWallTextureRepeat"));
        this._1Dz = !(_arg1.hasOwnProperty("NoTopTextureRepeat"));
    }
    protected var _Sq:XML;
    protected var _HC:Number = 0.5;
    protected var _0un:Number = 0.25;
    protected var h_:Number = 1;
    protected var _0Ys:Boolean;
    protected var _1Dz:Boolean;

    override protected function buildDot():void {
        var _local1:Vector3D = new Vector3D(-(this._HC), -(this._HC), 0);
        var _local2:Vector3D = new Vector3D(this._HC, -(this._HC), 0);
        var _local3:Vector3D = new Vector3D(this._HC, this._HC, 0);
        var _local4:Vector3D = new Vector3D(-(this._HC), this._HC, 0);
        var _local5:Vector3D = new Vector3D(-(this._0un), -(this._0un), this.h_);
        var _local6:Vector3D = new Vector3D(this._0un, -(this._0un), this.h_);
        var _local7:Vector3D = new Vector3D(this._0un, this._0un, this.h_);
        var _local8:Vector3D = new Vector3D(-(this._0un), this._0un, this.h_);
        this._1t4(_local6, _local5, _local1, _local2, texture_, true, true);
        this._1t4(_local7, _local6, _local2, _local3, texture_, true, true);
        this._1t4(_local5, _local8, _local4, _local1, texture_, true, true);
        this._1t4(_local8, _local7, _local3, _local4, texture_, true, true);
        var _local9:BitmapData = texture_;
        if (this._Sq.hasOwnProperty("DotTexture")) {
            _local9 = AssetLibrary._Rb(String(this._Sq.DotTexture.File), int(this._Sq.DotTexture.Index));
        }
        ;
        this._Bn([_local5, _local6, _local7, _local8], new <Number>[0.25, 0.25, 0.75, 0.25, 0.25, 0.75], _local9);
    }

    override protected function buildShortLine():void {
        var _local1:Vector3D = new Vector3D(-(this._HC), -0.5, 0);
        var _local2:Vector3D = new Vector3D(this._HC, -0.5, 0);
        var _local3:Vector3D = new Vector3D(this._HC, this._HC, 0);
        var _local4:Vector3D = new Vector3D(-(this._HC), this._HC, 0);
        var _local5:Vector3D = new Vector3D(-(this._0un), -0.5, this.h_);
        var _local6:Vector3D = new Vector3D(this._0un, -0.5, this.h_);
        var _local7:Vector3D = new Vector3D(this._0un, this._0un, this.h_);
        var _local8:Vector3D = new Vector3D(-(this._0un), this._0un, this.h_);
        this._1t4(_local7, _local6, _local2, _local3, texture_, true, false);
        this._1t4(_local5, _local8, _local4, _local1, texture_, false, true);
        this._1t4(_local8, _local7, _local3, _local4, texture_, true, true);
        var _local9:BitmapData = texture_;
        if (this._Sq.hasOwnProperty("ShortLineTexture")) {
            _local9 = AssetLibrary._Rb(String(this._Sq.ShortLineTexture.File), int(this._Sq.ShortLineTexture.Index));
        }
        ;
        this._Bn([_local5, _local6, _local7, _local8], new <Number>[0.25, 0, 0.75, 0, 0.25, 0.75], _local9);
    }

    override protected function buildL():void {
        var _local1:Vector3D = new Vector3D(-(this._HC), -0.5, 0);
        var _local2:Vector3D = new Vector3D(this._HC, -0.5, 0);
        var _local3:Vector3D = new Vector3D(this._HC, -(this._HC), 0);
        var _local4:Vector3D = new Vector3D(0.5, -(this._HC), 0);
        var _local5:Vector3D = new Vector3D(0.5, this._HC, 0);
        var _local6:Vector3D = new Vector3D(-(this._HC), this._HC, 0);
        var _local7:Vector3D = new Vector3D(-(this._0un), -0.5, this.h_);
        var _local8:Vector3D = new Vector3D(this._0un, -0.5, this.h_);
        var _local9:Vector3D = new Vector3D(this._0un, -(this._0un), this.h_);
        var _local10:Vector3D = new Vector3D(0.5, -(this._0un), this.h_);
        var _local11:Vector3D = new Vector3D(0.5, this._0un, this.h_);
        var _local12:Vector3D = new Vector3D(-(this._0un), this._0un, this.h_);
        this._t4(_local9, _local8, _local2, _local3, texture_, N2, true, true, true);
        this._t4(_local10, _local9, _local3, _local4, texture_, N2, false, true, false);
        this._1t4(_local12, _local11, _local5, _local6, texture_, true, false);
        this._1t4(_local7, _local12, _local6, _local1, texture_, false, true);
        var _local13:BitmapData = texture_;
        if (this._Sq.hasOwnProperty("LTexture")) {
            _local13 = AssetLibrary._Rb(String(this._Sq.LTexture.File), int(this._Sq.LTexture.Index));
        }
        ;
        this._Bn([_local7, _local8, _local9, _local10, _local11, _local12], new <Number>[0.25, 0, 0.75, 0, 0.25, 0.75], _local13);
    }

    override protected function buildLine():void {
        var _local1:Vector3D = new Vector3D(-(this._HC), -0.5, 0);
        var _local2:Vector3D = new Vector3D(this._HC, -0.5, 0);
        var _local3:Vector3D = new Vector3D(this._HC, 0.5, 0);
        var _local4:Vector3D = new Vector3D(-(this._HC), 0.5, 0);
        var _local5:Vector3D = new Vector3D(-(this._0un), -0.5, this.h_);
        var _local6:Vector3D = new Vector3D(this._0un, -0.5, this.h_);
        var _local7:Vector3D = new Vector3D(this._0un, 0.5, this.h_);
        var _local8:Vector3D = new Vector3D(-(this._0un), 0.5, this.h_);
        this._1t4(_local7, _local6, _local2, _local3, texture_, false, false);
        this._1t4(_local5, _local8, _local4, _local1, texture_, false, false);
        var _local9:BitmapData = texture_;
        if (this._Sq.hasOwnProperty("LineTexture")) {
            _local9 = AssetLibrary._Rb(String(this._Sq.LineTexture.File), int(this._Sq.LineTexture.Index));
        }
        ;
        this._Bn([_local5, _local6, _local7, _local8], new <Number>[0.25, 0, 0.75, 0, 0.25, 1], _local9);
    }

    override protected function buildT():void {
        var _local1:Vector3D = new Vector3D(-(this._HC), -0.5, 0);
        var _local2:Vector3D = new Vector3D(this._HC, -0.5, 0);
        var _local3:Vector3D = new Vector3D(this._HC, -(this._HC), 0);
        var _local4:Vector3D = new Vector3D(0.5, -(this._HC), 0);
        var _local5:Vector3D = new Vector3D(0.5, this._HC, 0);
        var _local6:Vector3D = new Vector3D(-0.5, this._HC, 0);
        var _local7:Vector3D = new Vector3D(-0.5, -(this._HC), 0);
        var _local8:Vector3D = new Vector3D(-(this._HC), -(this._HC), 0);
        var _local9:Vector3D = new Vector3D(-(this._0un), -0.5, this.h_);
        var _local10:Vector3D = new Vector3D(this._0un, -0.5, this.h_);
        var _local11:Vector3D = new Vector3D(this._0un, -(this._0un), this.h_);
        var _local12:Vector3D = new Vector3D(0.5, -(this._0un), this.h_);
        var _local13:Vector3D = new Vector3D(0.5, this._0un, this.h_);
        var _local14:Vector3D = new Vector3D(-0.5, this._0un, this.h_);
        var _local15:Vector3D = new Vector3D(-0.5, -(this._0un), this.h_);
        var _local16:Vector3D = new Vector3D(-(this._0un), -(this._0un), this.h_);
        this._t4(_local11, _local10, _local2, _local3, texture_, N2, true);
        this._t4(_local12, _local11, _local3, _local4, texture_, N2, false);
        this._1t4(_local14, _local13, _local5, _local6, texture_, false, false);
        this._t4(_local16, _local15, _local7, _local8, texture_, N0, true);
        this._t4(_local9, _local16, _local8, _local1, texture_, N0, false);
        var _local17:BitmapData = texture_;
        if (this._Sq.hasOwnProperty("TTexture")) {
            _local17 = AssetLibrary._Rb(String(this._Sq.TTexture.File), int(this._Sq.TTexture.Index));
        }
        ;
        this._Bn([_local9, _local10, _local11, _local12, _local13, _local14, _local15, _local16], new <Number>[0.25, 0, 0.75, 0, 0.25, 0.25], _local17);
    }

    override protected function buildCross():void {
        var _local1:Vector3D = new Vector3D(-(this._HC), -0.5, 0);
        var _local2:Vector3D = new Vector3D(this._HC, -0.5, 0);
        var _local3:Vector3D = new Vector3D(this._HC, -(this._HC), 0);
        var _local4:Vector3D = new Vector3D(0.5, -(this._HC), 0);
        var _local5:Vector3D = new Vector3D(0.5, this._HC, 0);
        var _local6:Vector3D = new Vector3D(this._HC, this._HC, 0);
        var _local7:Vector3D = new Vector3D(this._HC, 0.5, 0);
        var _local8:Vector3D = new Vector3D(-(this._HC), 0.5, 0);
        var _local9:Vector3D = new Vector3D(-(this._HC), this._HC, 0);
        var _local10:Vector3D = new Vector3D(-0.5, this._HC, 0);
        var _local11:Vector3D = new Vector3D(-0.5, -(this._HC), 0);
        var _local12:Vector3D = new Vector3D(-(this._HC), -(this._HC), 0);
        var _local13:Vector3D = new Vector3D(-(this._0un), -0.5, this.h_);
        var _local14:Vector3D = new Vector3D(this._0un, -0.5, this.h_);
        var _local15:Vector3D = new Vector3D(this._0un, -(this._0un), this.h_);
        var _local16:Vector3D = new Vector3D(0.5, -(this._0un), this.h_);
        var _local17:Vector3D = new Vector3D(0.5, this._0un, this.h_);
        var _local18:Vector3D = new Vector3D(this._0un, this._0un, this.h_);
        var _local19:Vector3D = new Vector3D(this._0un, 0.5, this.h_);
        var _local20:Vector3D = new Vector3D(-(this._0un), 0.5, this.h_);
        var _local21:Vector3D = new Vector3D(-(this._0un), this._0un, this.h_);
        var _local22:Vector3D = new Vector3D(-0.5, this._0un, this.h_);
        var _local23:Vector3D = new Vector3D(-0.5, -(this._0un), this.h_);
        var _local24:Vector3D = new Vector3D(-(this._0un), -(this._0un), this.h_);
        this._t4(_local15, _local14, _local2, _local3, texture_, N2, true);
        this._t4(_local16, _local15, _local3, _local4, texture_, N2, false);
        this._t4(_local18, _local17, _local5, _local6, texture_, N4, true);
        this._t4(_local19, _local18, _local6, _local7, texture_, N4, false);
        this._t4(_local21, _local20, _local8, _local9, texture_, N6, true);
        this._t4(_local22, _local21, _local9, _local10, texture_, N6, false);
        this._t4(_local24, _local23, _local11, _local12, texture_, N0, true);
        this._t4(_local13, _local24, _local12, _local1, texture_, N0, false);
        var _local25:BitmapData = texture_;
        if (this._Sq.hasOwnProperty("CrossTexture")) {
            _local25 = AssetLibrary._Rb(String(this._Sq.CrossTexture.File), int(this._Sq.CrossTexture.Index));
        }
        ;
        this._Bn([_local13, _local14, _local15, _local16, _local17, _local18, _local19, _local20, _local21, _local22, _local23, _local24], new <Number>[0.25, 0, 0.75, 0, 0.25, 0.25], _local25);
    }

    protected function _1t4(_arg1:Vector3D, _arg2:Vector3D, _arg3:Vector3D, _arg4:Vector3D, _arg5:BitmapData, _arg6:Boolean, _arg7:Boolean):void {
        var _local11:Number;
        var _local12:Number;
        var _local13:Vector.<Number>;
        var _local8:int = (_1bD.vL_.length / 3);
        _1bD.vL_.push(_arg1.x, _arg1.y, _arg1.z, _arg2.x, _arg2.y, _arg2.z, _arg3.x, _arg3.y, _arg3.z, _arg4.x, _arg4.y, _arg4.z);
        var _local9:Number = ((_arg6) ? (-((this._HC - this._0un)) / ((1 - (this._HC - this._0un)) - ((_arg7) ? (this._HC - this._0un) : 0))) : 0);
        _1bD.uvts_.push(0, 0, 0, 1, 0, 0, 1, 1, 0, _local9, 1, 0);
        var _local10:ObjectFace3D = new ObjectFace3D(_1bD, new <int>[_local8, (_local8 + 1), (_local8 + 2), (_local8 + 3)]);
        _local10.texture_ = _arg5;
        _local10.bitmapFill_.repeat = this._0Ys;
        _1bD.faces_.push(_local10);
        if ((((_return._bT(_local10.bitmapFill_) == null)) && (Parameters._0g5()))) {
            _local11 = 0;
            _local12 = 0;
            if (_arg6) {
                _local11 = _local9;
            }
            ;
            if (_arg7) {
                _local12 = -(_local9);
            }
            ;
            if ((((((((_local12 == 0)) && ((_local11 == 0)))) && (_arg7))) && ((_arg4.x == -0.5)))) {
                _local12 = 0.34;
            }
            ;
            _local13 = Vector.<Number>([-0.5, 0.5, 0, 0, 0, 0.5, 0.5, 0, 1, 0, (-0.5 + _local11), -0.5, 0, 0, 1, (0.5 + _local12), -0.5, 0, 1, 1]);
            _return._0vz(_local10.bitmapFill_, _local13);
        }
        ;
    }

    protected function _t4(_arg1:Vector3D, _arg2:Vector3D, _arg3:Vector3D, _arg4:Vector3D, _arg5:BitmapData, _arg6:Vector3D, _arg7:Boolean, _arg8:Boolean = false, _arg9:Boolean = false):void {
        var _local12:Vector.<Number>;
        var _local10:int = (_1bD.vL_.length / 3);
        _1bD.vL_.push(_arg1.x, _arg1.y, _arg1.z, _arg2.x, _arg2.y, _arg2.z, _arg3.x, _arg3.y, _arg3.z, _arg4.x, _arg4.y, _arg4.z);
        if (_arg7) {
            _1bD.uvts_.push((-0.5 + this._0un), 0, 0, 0, 0, 0, 0, 0, 0, (-0.5 + this._HC), 1, 0);
        } else {
            _1bD.uvts_.push(1, 0, 0, (1.5 - this._0un), 0, 0, 0, 0, 0, 1, 1, 0);
        }
        ;
        var _local11:ObjectFace3D = new ObjectFace3D(_1bD, new <int>[_local10, (_local10 + 1), (_local10 + 2), (_local10 + 3)]);
        _local11.texture_ = _arg5;
        _local11.bitmapFill_.repeat = this._0Ys;
        _local11.normalL_ = _arg6;
        if (((!(Parameters._0g5())) && (!(_arg8)))) {
            _1bD.faces_.push(_local11);
        } else {
            if (_arg8) {
                if (_arg9) {
                    _local12 = Vector.<Number>([-0.75, 0.5, 0, 0, 0, -0.5, 0.5, 0, 1, 0, -0.75, -0.5, 0, 0, 1, -0.5, -0.5, 0, 1, 1]);
                } else {
                    _local12 = Vector.<Number>([0.5, 0.5, 0, 0, 0, 0.75, 0.5, 0, 1, 0, 0.5, -0.5, 0, 0, 1, 0.75, -0.5, 0, 1, 1]);
                }
                ;
                _return._0vz(_local11.bitmapFill_, _local12);
                _1bD.faces_.push(_local11);
            }
            ;
        }
        ;
    }

    protected function _Bn(_arg1:Array, _arg2:Vector.<Number>, _arg3:BitmapData):void {
        var _local8:ObjectFace3D;
        var _local10:Vector.<Number>;
        var _local11:int;
        var _local12:Array;
        var _local13:Array;
        var _local14:Array;
        var _local15:int;
        var _local16:int;
        var _local17:int;
        var _local4:int = (_1bD.vL_.length / 3);
        var _local5:Vector.<int> = new Vector.<int>();
        var _local6:uint;
        while (_local6 < _arg1.length) {
            _1bD.vL_.push(_arg1[_local6].x, _arg1[_local6].y, _arg1[_local6].z);
            _local5.push((_local4 + _local6));
            if (_local6 == 0) {
                _1bD.uvts_.push(_arg2[0], _arg2[1], 0);
            } else {
                if (_local6 == 1) {
                    _1bD.uvts_.push(_arg2[2], _arg2[3], 0);
                } else {
                    if (_local6 == (_arg1.length - 1)) {
                        _1bD.uvts_.push(_arg2[4], _arg2[5], 0);
                    } else {
                        _1bD.uvts_.push(0, 0, 0);
                    }
                    ;
                }
                ;
            }
            ;
            _local6++;
        }
        ;
        var _local7:ObjectFace3D = new ObjectFace3D(_1bD, _local5);
        _local7.texture_ = _arg3;
        _local7.bitmapFill_.repeat = this._1Dz;
        _1bD.faces_.push(_local7);
        if ((((_local5.length == 6)) && (Parameters._0g5()))) {
            _local8 = new ObjectFace3D(_1bD, _local5);
            _local8.texture_ = _arg3;
            _local8.bitmapFill_.repeat = this._1Dz;
            _1bD.faces_.push(_local8);
        }
        ;
        var _local9:int;
        if ((((((_local5.length == 4)) && ((_return._bT(_local7.bitmapFill_) == null)))) && (Parameters._0g5()))) {
            _local10 = new Vector.<Number>();
            _local9 = 0;
            while (_local9 < _local5.length) {
                if (_local9 == 3) {
                    _local11 = 2;
                } else {
                    if (_local9 == 2) {
                        _local11 = 3;
                    } else {
                        _local11 = _local9;
                    }
                    ;
                }
                ;
                _local10.push(_1bD.vL_[(_local5[_local11] * 3)], (_1bD.vL_[((_local5[_local11] * 3) + 1)] * -1), _1bD.vL_[((_local5[_local11] * 3) + 2)], _1bD.uvts_[(_local5[(((_local11) != 2) ? _local11 : (_local11 - 1))] * 3)], _1bD.uvts_[((_local5[(((_local11) != 2) ? _local11 : (_local11 + 1))] * 3) + 1)]);
                _local9++;
            }
            ;
            _return._0vz(_local7.bitmapFill_, _local10);
        } else {
            if ((((((_local5.length == 6)) && ((_return._bT(_local7.bitmapFill_) == null)))) && (Parameters._0g5()))) {
                _local12 = [0, 1, 5, 2];
                _local13 = [2, 3, 5, 4];
                _local14 = [5, 0, 2, 1];
                _local15 = 0;
                while (_local15 < 2) {
                    if (_local15 == 1) {
                        _local12 = _local13;
                    }
                    ;
                    _local10 = new Vector.<Number>();
                    _local16 = 0;
                    _local17 = 0;
                    for each (_local9 in _local12) {
                        if (_local15 == 1) {
                            _local17 = _local14[_local16];
                        } else {
                            _local17 = _local9;
                        }
                        ;
                        _local10.push(_1bD.vL_[(_local5[_local9] * 3)], (_1bD.vL_[((_local5[_local9] * 3) + 1)] * -1), _1bD.vL_[((_local5[_local9] * 3) + 2)], _1bD.uvts_[(_local5[(((_local17) != 2) ? _local17 : (_local17 - 1))] * 3)], _1bD.uvts_[((_local5[(((_local17) != 2) ? _local17 : (_local17 + 1))] * 3) + 1)]);
                        _local16++;
                    }
                    ;
                    if (_local15 == 1) {
                        _return._0vz(_local8.bitmapFill_, _local10);
                    } else {
                        _return._0vz(_local7.bitmapFill_, _local10);
                    }
                    ;
                    _local15++;
                }
                ;
            }
            ;
        }
        ;
    }


}
}//package com.company.assembleegameclient.objects

