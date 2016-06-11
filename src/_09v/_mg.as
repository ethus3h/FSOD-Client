// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_09v._mg

package _09v {
import _1VR._1IS;

import _Z0._0o5;

import com.company.assembleegameclient.map._0d7;
import com.company.assembleegameclient.map._1Px;
import com.company.assembleegameclient.objects.Character;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.GuildHallPortal;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects.Portal;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util.AssetLibrary;
import com.company.util.PointUtil;
import com.company.util._Tn;

import flash.display.BitmapData;
import flash.display.Graphics;
import flash.display.Shape;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.utils.Dictionary;

public class _mg extends _0xs {

    public static const _0s1:int = (5 * 5);//25

    private static var _qy:Dictionary = new Dictionary();

    public static function _19l(_arg1:GameObject):uint {
        var _local2:* = _arg1.objectType_;
        if (!_qy.hasOwnProperty(_local2)) {
            _qy[_local2] = _arg1.getColor();
        }
        ;
        return (_qy[_local2]);
    }

    public function _mg(_arg1:int, _arg2:int) {
        this._1r8 = new Vector.<Number>();
        this._0iF = new Matrix();
        this._1OA = new Matrix();
        this._0Ih = new Vector.<Player>();
        this._pZ = new Point();
        super();
        this._1pD = _arg1;
        this._height = _arg2;
        this._0EM();
        this._lF();
    }
    public var _1pD:int;
    public var _height:int;
    public var _3E:int = 0;
    public var _lI:Rectangle;
    public var active:Boolean = true;
    public var _rV:Point;
    public var _1uo:BitmapData;
    public var _1r8:Vector.<Number>;
    public var _j4:BitmapData;
    public var _mp:Shape;
    public var _1D:Shape;
    private var focus:GameObject;
    private var _z5:_0xK;
    private var _00n:Boolean = false;
    private var tooltip:_0o5 = null;
    private var menu:_1IS = null;
    private var _0iF:Matrix;
    private var _1OA:Matrix;
    private var _0Ih:Vector.<Player>;
    private var _pZ:Point;

    override public function setMap(_arg1:_1Px):void {
        this.map = _arg1;
        this._1q();
    }

    override public function setFocus(_arg1:GameObject):void {
        this.focus = _arg1;
    }

    override public function setGroundTile(_arg1:int, _arg2:int, _arg3:uint):void {
        var _local4:uint = _0d7.getColor(_arg3);
        this._1uo.setPixel(_arg1, _arg2, _local4);
    }

    override public function setGameObjectTile(_arg1:int, _arg2:int, _arg3:GameObject):void {
        var _local4:uint = _19l(_arg3);
        this._1uo.setPixel(_arg1, _arg2, _local4);
    }

    override public function draw():void {
        var _local7:Graphics;
        var _local10:GameObject;
        var _local15:uint;
        var _local16:Player;
        var _local17:Number;
        var _local18:Number;
        var _local19:Number;
        var _local20:Number;
        var _local21:Number;
        this._mp.graphics.clear();
        this._1D.graphics.clear();
        if (!this.focus) {
            return;
        }
        ;
        if (!this.active) {
            return;
        }
        ;
        var _local1:Number = this._1r8[this._3E];
        this._0iF.identity();
        this._0iF.translate(-(this.focus.x_), -(this.focus.y_));
        this._0iF.scale(_local1, _local1);
        var _local2:Point = this._0iF.transformPoint(PointUtil._0Q4);
        var _local3:Point = this._0iF.transformPoint(this._rV);
        var _local4:Number = 0;
        if (_local2.x > this._lI.left) {
            _local4 = (this._lI.left - _local2.x);
        } else {
            if (_local3.x < this._lI.right) {
                _local4 = (this._lI.right - _local3.x);
            }
            ;
        }
        ;
        var _local5:Number = 0;
        if (_local2.y > this._lI.top) {
            _local5 = (this._lI.top - _local2.y);
        } else {
            if (_local3.y < this._lI.bottom) {
                _local5 = (this._lI.bottom - _local3.y);
            }
            ;
        }
        ;
        this._0iF.translate(_local4, _local5);
        _local2 = this._0iF.transformPoint(PointUtil._0Q4);
        var _local6:Rectangle = new Rectangle();
        _local6.x = Math.max(this._lI.x, _local2.x);
        _local6.y = Math.max(this._lI.y, _local2.y);
        _local6.right = Math.min(this._lI.right, (_local2.x + (this._rV.x * _local1)));
        _local6.bottom = Math.min(this._lI.bottom, (_local2.y + (this._rV.y * _local1)));
        _local7 = this._mp.graphics;
        _local7.beginBitmapFill(this._1uo, this._0iF, false);
        _local7.drawRect(_local6.x, _local6.y, _local6.width, _local6.height);
        _local7.endFill();
        _local7 = this._1D.graphics;
        var _local8:Number = (mouseX - (this._1pD / 2));
        var _local9:Number = (mouseY - (this._height / 2));
        this._0Ih.length = 0;
        for each (_local10 in map.goDict_) {
            if (!((_local10.props_._02) || ((_local10 == this.focus)))) {
                _local16 = (_local10 as Player);
                if (_local16 != null) {
                    if (_local16.isPaused()) {
                        _local15 = 0x7F7F7F;
                    } else {
                        if (_local16._0Mq) {
                            _local15 = 0xFF00;
                        } else {
                            if (_local16.starred_) {
                                _local15 = 4240365;
                            } else {
                                _local15 = 0xFFFF00;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                } else {
                    if ((_local10 is Character)) {
                        if (_local10.props_.isEnemy_) {
                            _local15 = 0xFF0000;
                        } else {
                            _local15 = _19l(_local10);
                        }
                        ;
                    } else {
                        if ((((_local10 is Portal)) || ((_local10 is GuildHallPortal)))) {
                            _local15 = 0xFF;
                        } else {
                            continue;
                        }
                        ;
                    }
                    ;
                }
                ;
                _local17 = (((this._0iF.a * _local10.x_) + (this._0iF.c * _local10.y_)) + this._0iF.tx);
                _local18 = (((this._0iF.b * _local10.x_) + (this._0iF.d * _local10.y_)) + this._0iF.ty);
                if ((((((((_local17 <= (-(this._1pD) / 2))) || ((_local17 >= (this._1pD / 2))))) || ((_local18 <= (-(this._height) / 2))))) || ((_local18 >= (this._height / 2))))) {
                    _Tn._1Kj(this._lI, 0, 0, _local17, _local18, this._pZ);
                    _local17 = this._pZ.x;
                    _local18 = this._pZ.y;
                }
                ;
                if (((((!((_local16 == null))) && (this._00n))) && ((((this.menu == null)) || ((this.menu.parent == null)))))) {
                    _local19 = (_local8 - _local17);
                    _local20 = (_local9 - _local18);
                    _local21 = ((_local19 * _local19) + (_local20 * _local20));
                    if (_local21 < _0s1) {
                        this._0Ih.push(_local16);
                    }
                    ;
                }
                ;
                _local7.beginFill(_local15);
                _local7.drawRect((_local17 - 2), (_local18 - 2), 4, 4);
                _local7.endFill();
            }
            ;
        }
        ;
        if (this._0Ih.length != 0) {
            if (this.tooltip == null) {
                this.tooltip = new _0o5(this._0Ih);
                _uv.addChild(this.tooltip);
            } else {
                if (!this._5k(this.tooltip._0Ih, this._0Ih)) {
                    this.tooltip._15j(this._0Ih);
                }
                ;
            }
            ;
        } else {
            if (this.tooltip != null) {
                if (this.tooltip.parent != null) {
                    this.tooltip.parent.removeChild(this.tooltip);
                }
                ;
                this.tooltip = null;
            }
            ;
        }
        ;
        var _local11:Number = this.focus.x_;
        var _local12:Number = this.focus.y_;
        var _local13:Number = (((this._0iF.a * _local11) + (this._0iF.c * _local12)) + this._0iF.tx);
        var _local14:Number = (((this._0iF.b * _local11) + (this._0iF.d * _local12)) + this._0iF.ty);
        this._1OA.identity();
        this._1OA.translate(-4, -5);
        this._1OA.scale((8 / this._j4.width), (32 / this._j4.height));
        this._1OA.rotate(Parameters.data_.cameraAngle);
        this._1OA.translate(_local13, _local14);
        _local7.beginBitmapFill(this._j4, this._1OA, false);
        _local7.drawRect((_local13 - 16), (_local14 - 16), 32, 32);
        _local7.endFill();
    }

    override public function zoomIn():void {
        this._3E = this._z5._1X3((this._3E - 1));
    }

    override public function zoomOut():void {
        this._3E = this._z5._1X3((this._3E + 1));
    }

    override public function deactivate():void {
    }

    public function dispose():void {
        this._1uo.dispose();
        this._1uo = null;
        this._116();
    }

    private function _1q():void {
        this._lI = new Rectangle((-(this._1pD) / 2), (-(this._height) / 2), this._1pD, this._height);
        this._rV = new Point(map.width_, map.height_);
        this._1uo = new _0Iy(this._rV.x, this._rV.y, false, 0);
        var _local1:Number = Math.max((this._1pD / this._rV.x), (this._height / this._rV.y));
        var _local2:Number = 4;
        while (_local2 > _local1) {
            this._1r8.push(_local2);
            _local2 = (_local2 / 2);
        }
        ;
        this._1r8.push(_local1);
        ((this._z5) && (this._z5._1T7(this._1r8.length)));
    }

    private function _0EM():void {
        this._j4 = AssetLibrary._Rb("lofiInterface", 54).clone();
        this._j4.colorTransform(this._j4.rect, new ColorTransform(0, 0, 1));
        graphics.clear();
        graphics.beginFill(0x1B1B1B);
        graphics.drawRect(0, 0, this._1pD, this._height);
        graphics.endFill();
        this._mp = new Shape();
        this._mp.x = (this._1pD / 2);
        this._mp.y = (this._height / 2);
        addChild(this._mp);
        this._1D = new Shape();
        this._1D.x = (this._1pD / 2);
        this._1D.y = (this._height / 2);
        addChild(this._1D);
        this._z5 = new _0xK();
        this._z5.x = (this._1pD - 20);
        this._z5._Wu.add(this._0wN);
        this._z5._1T7(this._1r8.length);
        addChild(this._z5);
    }

    private function _lF():void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        addEventListener(MouseEvent.CLICK, this._10q);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    private function _0wN(_arg1:int):void {
        this._3E = _arg1;
    }

    private function _0su():void {
        this.menu = new _1IS(map, this.tooltip._0Ih);
        this.menu.x = (this.tooltip.x + 12);
        this.menu.y = this.tooltip.y;
        _uv.addChild(this.menu);
    }

    private function _116():void {
        this._WJ();
        this._i2();
    }

    private function _WJ():void {
        if (this.tooltip != null) {
            if (this.tooltip.parent != null) {
                this.tooltip.parent.removeChild(this.tooltip);
            }
            ;
            this.tooltip = null;
        }
        ;
    }

    private function _i2():void {
        if (this.menu != null) {
            if (this.menu.parent != null) {
                this.menu.parent.removeChild(this.menu);
            }
            ;
            this.menu = null;
        }
        ;
    }

    private function _5k(_arg1:Vector.<Player>, _arg2:Vector.<Player>):Boolean {
        var _local3:int = _arg1.length;
        if (_local3 != _arg2.length) {
            return (false);
        }
        ;
        var _local4:int;
        while (_local4 < _local3) {
            if (_arg1[_local4] != _arg2[_local4]) {
                return (false);
            }
            ;
            _local4++;
        }
        ;
        return (true);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this.active = false;
        this._116();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._00n = true;
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._00n = false;
    }

    private function _10q(_arg1:MouseEvent):void {
        if ((((((((this.tooltip == null)) || ((this.tooltip.parent == null)))) || ((this.tooltip._0Ih == null)))) || ((this.tooltip._0Ih.length == 0)))) {
            return;
        }
        ;
        this._i2();
        this._0su();
        this._WJ();
    }


}
}//package _09v

