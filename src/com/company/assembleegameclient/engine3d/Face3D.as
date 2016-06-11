// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.engine3d.Face3D

package com.company.assembleegameclient.engine3d {
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util._1WM;
import com.company.util._1y8;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsPath;
import flash.display.GraphicsPathCommand;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.geom.Utils3D;
import flash.geom.Vector3D;

public class Face3D {

    private static const _0ux:GraphicsSolidFill = new GraphicsSolidFill(0, 1);

    public function Face3D(_arg1:BitmapData, _arg2:Vector.<Number>, _arg3:Vector.<Number>, _arg4:Boolean = false, _arg5:Boolean = false) {
        var _local7:Vector3D;
        this.vout_ = new Vector.<Number>();
        this.bitmapFill_ = new GraphicsBitmapFill(null, null, false, false);
        this.path_ = new GraphicsPath(new Vector.<int>(), null);
        super();
        this._1b5 = _arg1;
        this._0Wb = _arg2;
        this._0rI = _arg3;
        this._1dE = _arg4;
        if (_arg5) {
            _local7 = new Vector3D();
            _s7._M6(_arg2, _local7);
            this._0NA = _0Kf._0H9(_local7, 0.75);
        }
        ;
        this.path_.commands.push(GraphicsPathCommand.MOVE_TO);
        var _local6:int = 3;
        while (_local6 < this._0Wb.length) {
            this.path_.commands.push(GraphicsPathCommand.LINE_TO);
            _local6 = (_local6 + 3);
        }
        ;
        this.path_.data = this.vout_;
    }
    public var _1b5:BitmapData;
    public var _0Wb:Vector.<Number>;
    public var _0rI:Vector.<Number>;
    public var vout_:Vector.<Number>;
    public var _1dE:Boolean;
    public var _0NA:Number = 1;
    public var _1dg:Boolean = false;
    public var bitmapFill_:GraphicsBitmapFill;
    private var _fj:Boolean = true;
    private var _0CC:TextureMatrix = null;
    private var path_:GraphicsPath;

    public function dispose():void {
        this._1b5 = null;
        this._0Wb = null;
        this._0rI = null;
        this.vout_ = null;
        this._0CC = null;
        this.bitmapFill_ = null;
        this.path_.commands = null;
        this.path_.data = null;
        this.path_ = null;
    }

    public function _0x(_arg1:BitmapData):void {
        if (this._1b5 == _arg1) {
            return;
        }
        ;
        this._1b5 = _arg1;
        this._fj = true;
    }

    public function _1uV(_arg1:Vector.<Number>):void {
        this._0rI = _arg1;
        this._fj = true;
    }

    public function _1R3():Number {
        var _local1:Number = -(Number.MAX_VALUE);
        var _local2:int = this.vout_.length;
        var _local3:int;
        while (_local3 < _local2) {
            if (this.vout_[(_local3 + 1)] > _local1) {
                _local1 = this.vout_[(_local3 + 1)];
            }
            ;
            _local3 = (_local3 + 2);
        }
        ;
        return (_local1);
    }

    public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q):Boolean {
        var _local10:Vector.<Number>;
        var _local11:Number;
        var _local12:Number;
        var _local13:Number;
        var _local14:Number;
        var _local15:int;
        Utils3D.projectVectors(_arg2.wToS_, this._0Wb, this.vout_, this._0rI);
        if (this._1dE) {
            _local10 = this.vout_;
            _local11 = (_local10[2] - _local10[0]);
            _local12 = (_local10[3] - _local10[1]);
            _local13 = (_local10[4] - _local10[0]);
            _local14 = (_local10[5] - _local10[1]);
            if (((_local11 * _local14) - (_local12 * _local13)) > 0) {
                return (false);
            }
            ;
        }
        ;
        var _local3:Number = (_arg2._0Ug.x - 10);
        var _local4:Number = (_arg2._0Ug.y - 10);
        var _local5:Number = (_arg2._0Ug.right + 10);
        var _local6:Number = (_arg2._0Ug.bottom + 10);
        var _local7:Boolean = true;
        var _local8:int = this.vout_.length;
        var _local9:int;
        while (_local9 < _local8) {
            _local15 = (_local9 + 1);
            if ((((((((this.vout_[_local9] >= _local3)) && ((this.vout_[_local9] <= _local5)))) && ((this.vout_[_local15] >= _local4)))) && ((this.vout_[_local15] <= _local6)))) {
                _local7 = false;
                break;
            }
            ;
            _local9 = (_local9 + 2);
        }
        ;
        if (_local7) {
            return (false);
        }
        ;
        if (this._1dg) {
            _arg1.push(_0ux);
            _arg1.push(this.path_);
            _arg1.push(_1WM.END_FILL);
            return (true);
        }
        ;
        if (this._fj) {
            this._1yI();
        }
        ;
        this._0CC.calculateTextureMatrix(this.vout_);
        this.bitmapFill_.bitmapData = this._0CC.texture_;
        this.bitmapFill_.matrix = this._0CC.tToS_;
        _arg1.push(this.bitmapFill_);
        _arg1.push(this.path_);
        _arg1.push(_1WM.END_FILL);
        return (true);
    }

    public function contains(_arg1:Number, _arg2:Number):Boolean {
        if (_1y8._0eO(this.vout_[0], this.vout_[1], this.vout_[2], this.vout_[3], this.vout_[4], this.vout_[5], _arg1, _arg2)) {
            return (true);
        }
        ;
        if ((((this.vout_.length == 8)) && (_1y8._0eO(this.vout_[0], this.vout_[1], this.vout_[4], this.vout_[5], this.vout_[6], this.vout_[7], _arg1, _arg2)))) {
            return (true);
        }
        ;
        return (false);
    }

    private function _1yI():void {
        var _local1:BitmapData = TextureRedrawer._01(this._1b5, this._0NA);
        if (this._0CC == null) {
            this._0CC = new TextureMatrix(_local1, this._0rI);
        } else {
            this._0CC.texture_ = _local1;
            this._0CC._0NW(this._0rI);
        }
        ;
        this._fj = false;
    }


}
}//package com.company.assembleegameclient.engine3d

