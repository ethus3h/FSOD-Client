// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZR._0Lx

package _ZR {
import _1VR.Menu;

import _Z0.ToolTip;

import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.GameObject;
import com.company.util.Trig;
import com.company.util._Tn;

import flash.display.DisplayObjectContainer;
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.Point;
import flash.geom.Rectangle;

public class _0Lx extends Sprite {

    public static const _15:int = 8;
    public static const _1Mg:int = 11;
    public static const _0Xp:int = 3;

    private static var _Bk:Menu = null;

    public static function _i2():void {
        if (_Bk != null) {
            if (_Bk.parent != null) {
                _Bk.parent.removeChild(_Bk);
            }
            ;
            _Bk = null;
        }
        ;
    }

    public function _0Lx(_arg1:uint, _arg2:uint, _arg3:Boolean) {
        this._05L = new Vector.<GameObject>();
        this._vu = new Shape();
        this._pZ = new Point();
        super();
        this._1tC = _arg1;
        this._102 = _arg2;
        this._vK = _arg3;
        addChild(this._vu);
        this._1R5();
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        visible = false;
    }
    public var _uv:DisplayObjectContainer;
    public var _1tC:uint;
    public var _102:uint;
    public var go_:GameObject = null;
    public var _05L:Vector.<GameObject>;
    public var _cL:Boolean = false;
    protected var _Ly:ToolTip = null;
    private var _vK:Boolean;
    private var _vu:Shape;
    private var _pZ:Point;

    public function _1bQ(_arg1:GameObject):void {
        if (this.go_ != _arg1) {
            this.go_ = _arg1;
        }
        ;
        this._05L.length = 0;
        if (this.go_ == null) {
            visible = false;
        }
        ;
    }

    public function _1dJ(_arg1:GameObject):void {
        this._05L.push(_arg1);
    }

    public function draw(_arg1:int, _arg2:_18q):void {
        var _local3:Rectangle;
        var _local4:Number;
        var _local5:Number;
        if (this.go_ == null) {
            visible = false;
            return;
        }
        ;
        this.go_._0IF(_arg2);
        _local3 = _arg2._0Ug;
        _local4 = this.go_._1Pg[0];
        _local5 = this.go_._1Pg[1];
        if (!_Tn._1Kj(_arg2._0Ug, 0, 0, _local4, _local5, this._pZ)) {
            this.go_ = null;
            visible = false;
            return;
        }
        ;
        x = this._pZ.x;
        y = this._pZ.y;
        var _local6:Number = Trig._EZ((270 - (Trig._RN * Math.atan2(_local4, _local5))));
        if (this._pZ.x < (_local3.left + 5)) {
            if (_local6 > 45) {
                _local6 = 45;
            }
            ;
            if (_local6 < -45) {
                _local6 = -45;
            }
            ;
        } else {
            if (this._pZ.x > (_local3.right - 5)) {
                if (_local6 > 0) {
                    if (_local6 < 135) {
                        _local6 = 135;
                    }
                    ;
                } else {
                    if (_local6 > -135) {
                        _local6 = -135;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        if (this._pZ.y < (_local3.top + 5)) {
            if (_local6 < 45) {
                _local6 = 45;
            }
            ;
            if (_local6 > 135) {
                _local6 = 135;
            }
            ;
        } else {
            if (this._pZ.y > (_local3.bottom - 5)) {
                if (_local6 > -45) {
                    _local6 = -45;
                }
                ;
                if (_local6 < -135) {
                    _local6 = -135;
                }
                ;
            }
            ;
        }
        ;
        this._vu.rotation = _local6;
        if (this._Ly != null) {
            this._1m(this._Ly);
        }
        ;
        visible = true;
    }

    protected function _1jT(_arg1:ToolTip):void {
        this._WJ();
        this._Ly = _arg1;
        if (this._Ly != null) {
            addChild(this._Ly);
            this._1m(this._Ly);
        }
        ;
    }

    protected function _WJ():void {
        if (this._Ly != null) {
            if (this._Ly.parent != null) {
                this._Ly.parent.removeChild(this._Ly);
            }
            ;
            this._Ly = null;
        }
        ;
    }

    protected function _yx(_arg1:Menu):void {
        this._WJ();
        _Bk = _arg1;
        this._uv.addChild(_Bk);
    }

    private function _1m(_arg1:ToolTip):void {
        var _local8:Number;
        var _local9:Number;
        var _local2:Number = this._vu.rotation;
        var _local3:int = ((_0Xp + _1Mg) + 12);
        var _local4:Number = (_local3 * Math.cos((_local2 * Trig._1HC)));
        var _local5:Number = (_local3 * Math.sin((_local2 * Trig._1HC)));
        var _local6:Number = _arg1._1Rd;
        var _local7:Number = _arg1._0Gk;
        if ((((_local2 >= 45)) && ((_local2 <= 135)))) {
            _local8 = (_local4 + (_local6 / Math.tan((_local2 * Trig._1HC))));
            _arg1.x = (((_local4 + _local8) / 2) - (_local6 / 2));
            _arg1.y = _local5;
        } else {
            if ((((_local2 <= -45)) && ((_local2 >= -135)))) {
                _local8 = (_local4 - (_local6 / Math.tan((_local2 * Trig._1HC))));
                _arg1.x = (((_local4 + _local8) / 2) - (_local6 / 2));
                _arg1.y = (_local5 - _local7);
            } else {
                if ((((_local2 < 45)) && ((_local2 > -45)))) {
                    _arg1.x = _local4;
                    _local9 = (_local5 + (_local7 * Math.tan((_local2 * Trig._1HC))));
                    _arg1.y = (((_local5 + _local9) / 2) - (_local7 / 2));
                } else {
                    _arg1.x = (_local4 - _local6);
                    _local9 = (_local5 - (_local7 * Math.tan((_local2 * Trig._1HC))));
                    _arg1.y = (((_local5 + _local9) / 2) - (_local7 / 2));
                }
                ;
            }
            ;
        }
        ;
    }

    private function _1R5():void {
        var _local1:Graphics = this._vu.graphics;
        _local1.clear();
        var _local2:int = ((((this._vK) || (this._cL))) ? _1Mg : _15);
        _local1.lineStyle(1, this._1tC);
        _local1.beginFill(this._102);
        _local1.moveTo(_0Xp, 0);
        _local1.lineTo((_local2 + _0Xp), _local2);
        _local1.lineTo((_local2 + _0Xp), -(_local2));
        _local1.lineTo(_0Xp, 0);
        _local1.endFill();
        _local1.lineStyle();
    }

    protected function onMouseOver(_arg1:MouseEvent):void {
        this._cL = true;
        this._1R5();
    }

    protected function onMouseOut(_arg1:MouseEvent):void {
        this._cL = false;
        this._1R5();
    }

    protected function onMouseDown(_arg1:MouseEvent):void {
        _arg1.stopImmediatePropagation();
    }


}
}//package _ZR

