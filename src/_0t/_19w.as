// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._19w

package _0t {
import com.company.assembleegameclient.map._0Y2;
import com.company.assembleegameclient.map._0d7;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.util.AssetLibrary;
import com.company.util.IntPoint;
import com.company.util.PointUtil;
import com.company.util._1N;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.geom.Matrix;
import flash.geom.Rectangle;
import flash.ui.Keyboard;
import flash.utils.Dictionary;

class _19w extends Sprite {

    public static const _nI:int = 0x0200;
    public static const _1fE:int = 16;
    public static const _5s:int = 0x0200;
    public static const _1RS:Number = 0.0625;
    public static const _1My:Number = 16;

    private static var _UG:Class = _19H;
    private static var _0Hd:BitmapData = new _UG().bitmapData;

    public function _19w() {
        this._25 = new Dictionary();
        this._E8 = new _1q9((_nI * _1fE), (_nI * _1fE), true, 0);
        this._12j = new _0Iy(_nI, _nI, true, 0);
        this.map_ = new _0Iy(_5s, _5s, true, 0);
        this._17a = new Shape();
        super();
        graphics.beginBitmapFill(_0Hd, null, true);
        graphics.drawRect(0, 0, _5s, _5s);
        addChild(new Bitmap(this.map_));
        addChild(this._17a);
        this._0 = new IntPoint(((_nI / 2) - (this._0kw() / 2)), ((_nI / 2) - (this._0kw() / 2)));
        this._0ZC = AssetLibrary._Rb("invisible", 0);
        this._XQ = AssetLibrary._Rb("lofiObj3", 0xFF);
        this.draw();
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var _25:Dictionary;
    public var _E8:_1q9;
    public var _12j:BitmapData;
    public var map_:BitmapData;
    public var _17a:Shape;
    public var _0:IntPoint;
    public var _1Hy:Number = 1;
    public var _0lg:Boolean = false;
    private var _1zJ:IntPoint = null;
    private var _Ri:IntPoint = null;
    private var _15J:int = 0;
    private var _0je:int = 0;
    private var _0ZC:BitmapData;
    private var _XQ:BitmapData;

    public function getType(_arg1:int, _arg2:int, _arg3:int):int {
        var _local4:_Kr = this._1s0(_arg1, _arg2);
        if (_local4 == null) {
            return (-1);
        }
        ;
        return (_local4._W[_arg3]);
    }

    public function _1s0(_arg1:int, _arg2:int):_Kr {
        return (this._25[(_arg1 + (_arg2 * _nI))]);
    }

    public function _0Rs(_arg1:int, _arg2:int, _arg3:int, _arg4:int):void {
        var _local5:_Kr = this._1av(_arg1, _arg2);
        if (_local5._W[_arg3] == _arg4) {
            return;
        }
        ;
        _local5._W[_arg3] = _arg4;
        this._0PN(_arg1, _arg2, _local5);
    }

    public function _0vX(_arg1:int, _arg2:int):String {
        var _local3:_Kr = this._1s0(_arg1, _arg2);
        if (_local3 == null) {
            return (null);
        }
        ;
        return (_local3._1KD);
    }

    public function _03E(_arg1:int, _arg2:int, _arg3:String):void {
        var _local4:_Kr = this._1av(_arg1, _arg2);
        _local4._1KD = _arg3;
    }

    public function _oI():Vector.<IntPoint> {
        var _local2:String;
        var _local3:int;
        var _local1:Vector.<IntPoint> = new Vector.<IntPoint>();
        for (_local2 in this._25) {
            _local3 = int(_local2);
            _local1.push(new IntPoint((_local3 % _nI), (_local3 / _nI)));
        }
        ;
        return (_local1);
    }

    public function _0mx(_arg1:int, _arg2:int, _arg3:_Kr):void {
        _arg3 = _arg3.clone();
        this._25[(_arg1 + (_arg2 * _nI))] = _arg3;
        this._0PN(_arg1, _arg2, _arg3);
    }

    public function _0WK(_arg1:int, _arg2:int):void {
        this._0Nq(_arg1, _arg2);
        this._0PN(_arg1, _arg2, null);
    }

    public function clear():void {
        var _local1:String;
        var _local2:int;
        for (_local1 in this._25) {
            _local2 = int(_local1);
            this._0WK((_local2 % _nI), (_local2 / _nI));
        }
        ;
    }

    public function _Dt():Rectangle {
        var _local5:String;
        var _local6:_Kr;
        var _local7:int;
        var _local8:int;
        var _local9:int;
        var _local1:int = _nI;
        var _local2:int = _nI;
        var _local3:int;
        var _local4:int;
        for (_local5 in this._25) {
            _local6 = this._25[_local5];
            if (!_local6.isEmpty()) {
                _local7 = int(_local5);
                _local8 = (_local7 % _nI);
                _local9 = (_local7 / _nI);
                if (_local8 < _local1) {
                    _local1 = _local8;
                }
                ;
                if (_local9 < _local2) {
                    _local2 = _local9;
                }
                ;
                if ((_local8 + 1) > _local3) {
                    _local3 = (_local8 + 1);
                }
                ;
                if ((_local9 + 1) > _local4) {
                    _local4 = (_local9 + 1);
                }
                ;
            }
            ;
        }
        ;
        if (_local1 > _local3) {
            return (null);
        }
        ;
        return (new Rectangle(_local1, _local2, (_local3 - _local1), (_local4 - _local2)));
    }

    public function _d2():Rectangle {
        var _local1:IntPoint = this._0km();
        if (this._1zJ == null) {
            return (new Rectangle(_local1.x_, _local1.y_, 1, 1));
        }
        ;
        return (new Rectangle(Math.min(_local1.x_, this._1zJ.x_), Math.min(_local1.y_, this._1zJ.y_), (Math.abs((_local1.x_ - this._1zJ.x_)) + 1), (Math.abs((_local1.y_ - this._1zJ.y_)) + 1)));
    }

    public function _0i6():void {
        var _local1:Rectangle = this._d2();
        this._15J = _local1.width;
        this._0je = _local1.height;
    }

    public function _1vD():void {
        this._0je = 0;
        this._15J = 0;
    }

    public function draw():void {
        var _local2:Matrix;
        var _local3:int;
        var _local4:BitmapData;
        var _local1:int = (_5s / this._1Hy);
        this.map_.fillRect(this.map_.rect, 0);
        this._E8._AU(new Rectangle((this._0.x_ * _1fE), (this._0.y_ * _1fE), _local1, _local1), this.map_, this.map_.rect);
        _local2 = new Matrix();
        _local2.identity();
        _local3 = (_1fE * this._1Hy);
        if (this._1Hy > 2) {
            _local4 = new _0Iy((_5s / _local3), (_5s / _local3));
            _local4.copyPixels(this._12j, new Rectangle(this._0.x_, this._0.y_, _local1, _local1), PointUtil._0Q4);
            _local2.scale(_local3, _local3);
            this.map_.draw(_local4, _local2);
        } else {
            _local2.translate(-(this._0.x_), -(this._0.y_));
            _local2.scale(_local3, _local3);
            this.map_.draw(this._12j, _local2, null, null, this.map_.rect);
        }
        ;
        this._0f2();
    }

    private function _0kw():int {
        return ((_5s / (_1fE * this._1Hy)));
    }

    private function _Rs(_arg1:Number):void {
        if ((((((_arg1 > 1)) && ((this._1Hy >= _1My)))) || ((((_arg1 < 1)) && ((this._1Hy <= _1RS)))))) {
            return;
        }
        ;
        var _local2:IntPoint = this._0km();
        this._1Hy = (this._1Hy * _arg1);
        var _local3:IntPoint = this._0km();
        this._0Qa((_local2.x_ - _local3.x_), (_local2.y_ - _local3.y_));
    }

    private function _1OL():Boolean {
        return ((((this._1zJ == null)) && ((this._Ri == null))));
    }

    private function _0F0():void {
        if (!this._1OL()) {
            return;
        }
        ;
        this._Rs(2);
        this.draw();
    }

    private function _lV():void {
        if (!this._1OL()) {
            return;
        }
        ;
        this._Rs(0.5);
        this.draw();
    }

    private function moveLeft():void {
        if (!this._1OL()) {
            return;
        }
        ;
        this._0Qa(-1, 0);
        this.draw();
    }

    private function moveRight():void {
        if (!this._1OL()) {
            return;
        }
        ;
        this._0Qa(1, 0);
        this.draw();
    }

    private function moveUp():void {
        if (!this._1OL()) {
            return;
        }
        ;
        this._0Qa(0, -1);
        this.draw();
    }

    private function moveDown():void {
        if (!this._1OL()) {
            return;
        }
        ;
        this._0Qa(0, 1);
        this.draw();
    }

    private function _0Qa(_arg1:int, _arg2:int):void {
        var _local3:int;
        var _local4:int = (_nI - this._0kw());
        this._0.x_ = Math.max(_local3, Math.min(_local4, (this._0.x_ + _arg1)));
        this._0.y_ = Math.max(_local3, Math.min(_local4, (this._0.y_ + _arg2)));
    }

    private function _0km():IntPoint {
        var _local1:int = Math.max(0, Math.min((_5s - 1), mouseX));
        var _local2:int = Math.max(0, Math.min((_5s - 1), mouseY));
        return (new IntPoint((this._0.x_ + (_local1 / (_1fE * this._1Hy))), (this._0.y_ + (_local2 / (_1fE * this._1Hy)))));
    }

    private function _0HN(_arg1:IntPoint):IntPoint {
        return (new IntPoint((((_arg1.x_ - this._0.x_) * _1fE) * this._1Hy), (((_arg1.y_ - this._0.y_) * _1fE) * this._1Hy)));
    }

    private function _8A(_arg1:int):Number {
        return (((_arg1 * this._1Hy) * _1fE));
    }

    private function _iJ():Rectangle {
        var _local1:Rectangle = this._d2();
        var _local2:IntPoint = this._0HN(new IntPoint(_local1.x, _local1.y));
        _local1.x = _local2.x_;
        _local1.y = _local2.y_;
        _local1.width = (this._8A(_local1.width) - 1);
        _local1.height = (this._8A(_local1.height) - 1);
        return (_local1);
    }

    private function _1av(_arg1:int, _arg2:int):_Kr {
        var _local3:int = (_arg1 + (_arg2 * _nI));
        var _local4:_Kr = this._25[_local3];
        if (_local4 != null) {
            return (_local4);
        }
        ;
        _local4 = new _Kr();
        this._25[_local3] = _local4;
        return (_local4);
    }

    private function _0Nq(_arg1:int, _arg2:int):void {
        delete this._25[(_arg1 + (_arg2 * _nI))];
    }

    private function _0PN(_arg1:int, _arg2:int, _arg3:_Kr):void {
        var _local5:BitmapData;
        var _local6:BitmapData;
        var _local7:uint;
        var _local4:Rectangle = new Rectangle((_arg1 * _1fE), (_arg2 * _1fE), _1fE, _1fE);
        this._E8._0m5(_local4);
        this._12j.setPixel32(_arg1, _arg2, 0);
        if (_arg3 == null) {
            return;
        }
        ;
        if (_arg3._W[_0J9._0Xy] != -1) {
            _local5 = _0d7.getBitmapData(_arg3._W[_0J9._0Xy]);
            this._E8.copyTo(_local5, _local5.rect, _local4);
        }
        ;
        if (_arg3._W[_0J9._46] != -1) {
            _local6 = ObjectLibrary.getTextureFromType(_arg3._W[_0J9._46]);
            if ((((_local6 == null)) || ((_local6 == this._0ZC)))) {
                this._E8.copyTo(this._XQ, this._XQ.rect, _local4);
            } else {
                this._E8.copyTo(_local6, _local6.rect, _local4);
            }
            ;
        }
        ;
        if (_arg3._W[_0J9._ik] != -1) {
            _local7 = _0Y2.getColor(_arg3._W[_0J9._ik]);
            this._12j.setPixel32(_arg1, _arg2, (0x5F000000 | _local7));
        }
        ;
    }

    private function _0f2():void {
        var _local1:Rectangle = this._iJ();
        var _local2:Graphics = this._17a.graphics;
        _local2.clear();
        _local2.lineStyle(1, 0xFFFFFF);
        _local2.beginFill(0xFFFFFF, 0.1);
        _local2.drawRect(_local1.x, _local1.y, _local1.width, _local1.height);
        _local2.endFill();
        _local2.lineStyle();
    }

    private function onAddedToStage(_arg1:Event):void {
        addEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
        addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        addEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        stage.addEventListener(KeyboardEvent.KEY_UP, this._1Gn);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
        removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        removeEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        stage.removeEventListener(KeyboardEvent.KEY_UP, this._1Gn);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        switch (_arg1.keyCode) {
            case Keyboard.SHIFT:
                if (this._1zJ != null) break;
                this._1zJ = this._0km();
                break;
            case Keyboard.CONTROL:
                if (this._Ri != null) {
                    break;
                }
                ;
                this._Ri = this._0km();
                break;
            case Keyboard.LEFT:
                this.moveLeft();
                break;
            case Keyboard.RIGHT:
                this.moveRight();
                break;
            case Keyboard.UP:
                this.moveUp();
                break;
            case Keyboard.DOWN:
                this.moveDown();
                break;
            case _1N._00s:
                this._lV();
                break;
            case _1N._14M:
                this._0F0();
                break;
        }
        ;
        this.draw();
    }

    private function _1Gn(_arg1:KeyboardEvent):void {
        switch (_arg1.keyCode) {
            case Keyboard.SHIFT:
                this._1zJ = null;
                break;
            case Keyboard.CONTROL:
                this._Ri = null;
                break;
        }
        ;
        this.draw();
    }

    private function _0YS(_arg1:MouseEvent):void {
        if (_arg1.delta > 0) {
            this._0F0();
        } else {
            if (_arg1.delta < 0) {
                this._lV();
            }
            ;
        }
        ;
    }

    private function onMouseDown(_arg1:MouseEvent):void {
        var _local7:int;
        var _local2:Rectangle = this._d2();
        var _local3:Vector.<IntPoint> = new Vector.<IntPoint>();
        var _local4:int = Math.max((_local2.x + this._15J), _local2.right);
        var _local5:int = Math.max((_local2.y + this._0je), _local2.bottom);
        var _local6:int = _local2.x;
        while (_local6 < _local4) {
            _local7 = _local2.y;
            while (_local7 < _local5) {
                _local3.push(new IntPoint(_local6, _local7));
                _local7++;
            }
            ;
            _local6++;
        }
        ;
        dispatchEvent(new _7I(_local3));
    }

    private function onMouseMove(_arg1:MouseEvent):void {
        var _local2:IntPoint;
        if (!_arg1.shiftKey) {
            this._1zJ = null;
        } else {
            if (this._1zJ == null) {
                this._1zJ = this._0km();
            }
            ;
        }
        ;
        if (!_arg1.ctrlKey) {
            this._Ri = null;
        } else {
            if (this._Ri == null) {
                this._Ri = this._0km();
            }
            ;
        }
        ;
        if (_arg1.buttonDown) {
            dispatchEvent(new _7I(new <IntPoint>[this._0km()]));
        }
        ;
        if (this._Ri != null) {
            _local2 = this._0km();
            this._0Qa((this._Ri.x_ - _local2.x_), (this._Ri.y_ - _local2.y_));
            this.draw();
        } else {
            this._0f2();
        }
        ;
    }


}
}//package _0t-

