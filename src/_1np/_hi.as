// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1np._hi

package _1np {
import _08f.Console;
import _08f._0Rt;
import _08f._0eS;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.BlendMode;
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;
import flash.ui.Mouse;

public class _hi extends Sprite {

    public function _hi(_arg1:Console) {
        this._zF = _arg1;
        this._config = _arg1.config;
        buttonMode = true;
        this._0EO = new Array();
        this._0KU = new Shape();
        addChild(this._0KU);
        var _local2:Point = new Point();
        _local2 = globalToLocal(_local2);
        this._1tW = new Rectangle(((-(_arg1.stage.stageWidth) * 1.5) + _local2.x), ((-(_arg1.stage.stageHeight) * 1.5) + _local2.y), (_arg1.stage.stageWidth * 3), (_arg1.stage.stageHeight * 3));
        graphics.beginFill(this._config.style.backgroundColor, 0.2);
        graphics.drawRect(this._1tW.x, this._1tW.y, this._1tW.width, this._1tW.height);
        graphics.endFill();
        this._0N = this._zF.panels.mainPanel._kp("positionText", true);
        this._0N.autoSize = TextFieldAutoSize.LEFT;
        addChild(this._0N);
        this._1Oz = new Bitmap();
        this._1Oz.scaleY = (this._1Oz.scaleX = 2);
        addChild(this._1Oz);
        addEventListener(MouseEvent.CLICK, this._1rC, false, 0, true);
        addEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove, false, 0, true);
        this.onMouseMove();
        if (this._config._1y2) {
            Mouse.hide();
        }
        ;
        this._zF.report("<b>Ruler started. Click on two locations to measure.</b>", -1);
    }
    private var _zF:Console;
    private var _config:_0Rt;
    private var _1tW:Rectangle;
    private var _0KU:Shape;
    private var _0N:TextField;
    private var _1Oz:Bitmap;
    private var _0EO:Array;

    public function exit():void {
        this._zF = null;
        dispatchEvent(new Event(Event.COMPLETE));
    }

    private function _1jx(_arg1:Number, _arg2:Boolean = true):TextField {
        var _local3:TextFormat = new TextFormat(this._config.style.menuFont, this._config.style.menuFontSize, _arg1, _arg2, true, null, null, TextFormatAlign.RIGHT);
        var _local4:TextField = new TextField();
        _local4.autoSize = TextFieldAutoSize.RIGHT;
        _local4.selectable = false;
        _local4.defaultTextFormat = _local3;
        return (_local4);
    }

    private function round(_arg1:Number, _arg2:uint = 10):Number {
        return ((Math.round((_arg1 * _arg2)) / _arg2));
    }

    private function angle(_arg1:Point, _arg2:Point):Number {
        var _local3:Number = ((Math.atan2((_arg2.y - _arg1.y), (_arg2.x - _arg1.x)) / Math.PI) * 180);
        _local3 = (_local3 + 90);
        if (_local3 > 180) {
            _local3 = (_local3 - 360);
        }
        ;
        return (_local3);
    }

    private function _ue(_arg1:Graphics, _arg2:Number, _arg3:Point, _arg4:Number = 180, _arg5:Number = 0):Point {
        var _local12:Number;
        var _local13:Number;
        var _local14:Number;
        var _local15:Point;
        var _local6:Boolean;
        if (_arg4 < 0) {
            _local6 = true;
            _arg4 = Math.abs(_arg4);
        }
        ;
        var _local7:Number = ((_arg4 * Math.PI) / 180);
        var _local8:Number = ((_arg5 * Math.PI) / 180);
        var _local9:Point = this._Wm(_arg2, _local8);
        _local9.offset(_arg3.x, _arg3.y);
        _arg1.moveTo(_local9.x, _local9.y);
        var _local10:Number = 0;
        var _local11:int = 1;
        while (_local11 <= (_local7 + 1)) {
            _local12 = (((_local11 <= _local7)) ? _local11 : _local7);
            _local13 = (_local12 - _local10);
            _local14 = (1 + ((0.12 * _local13) * _local13));
            _local15 = this._Wm((_arg2 * _local14), (((_local12 - (_local13 / 2)) * ((_local6) ? -1 : 1)) + _local8));
            _local15.offset(_arg3.x, _arg3.y);
            _local9 = this._Wm(_arg2, ((_local12 * ((_local6) ? -1 : 1)) + _local8));
            _local9.offset(_arg3.x, _arg3.y);
            _arg1.curveTo(_local15.x, _local15.y, _local9.x, _local9.y);
            _local10 = _local12;
            _local11++;
        }
        ;
        return (_local9);
    }

    private function _Wm(_arg1:Number, _arg2:Number):Point {
        return (new Point((_arg1 * Math.cos(_arg2)), (_arg1 * Math.sin(_arg2))));
    }

    private function onMouseMove(_arg1:MouseEvent = null):void {
        var m:Matrix;
        var e = _arg1;
        this._0KU.graphics.clear();
        this._0KU.graphics.lineStyle(1, 0xAACC00, 1);
        this._0KU.graphics.moveTo(this._1tW.x, mouseY);
        this._0KU.graphics.lineTo((this._1tW.x + this._1tW.width), mouseY);
        this._0KU.graphics.moveTo(mouseX, this._1tW.y);
        this._0KU.graphics.lineTo(mouseX, (this._1tW.y + this._1tW.height));
        this._0KU.blendMode = BlendMode.INVERT;
        this._0N.text = (((("<low>" + mouseX) + ",") + mouseY) + "</low>");
        var bmd:BitmapData = new BitmapData(30, 30);
        try {
            m = new Matrix();
            m.tx = (-(stage.mouseX) + 15);
            m.ty = (-(stage.mouseY) + 15);
            bmd.draw(stage, m);
        } catch (err:Error) {
            bmd = null;
        }
        ;
        this._1Oz.bitmapData = bmd;
        var d:int = 10;
        this._0N.x = ((mouseX - this._0N.width) - d);
        this._0N.y = ((mouseY - this._0N.height) - d);
        this._1Oz.x = ((this._0N.x + this._0N.width) - this._1Oz.width);
        this._1Oz.y = (this._0N.y - this._1Oz.height);
        if (this._0N.x < 16) {
            this._0N.x = (mouseX + d);
            this._1Oz.x = this._0N.x;
        }
        ;
        if (this._0N.y < 38) {
            this._0N.y = (mouseY + d);
            this._1Oz.y = (this._0N.y + this._0N.height);
        }
        ;
    }

    private function _1rC(_arg1:MouseEvent):void {
        var _local2:Point;
        var _local4:Point;
        var _local5:Point;
        var _local6:Point;
        var _local7:Point;
        var _local8:Point;
        var _local9:Point;
        var _local10:Number;
        var _local11:Number;
        var _local12:Number;
        var _local13:TextField;
        var _local14:Number;
        var _local15:Number;
        _arg1.stopPropagation();
        var _local3:_0eS = this._config.style;
        if (this._0EO.length == 0) {
            _local2 = new Point(_arg1.localX, _arg1.localY);
            graphics.lineStyle(1, 0xFF0000);
            graphics.drawCircle(_local2.x, _local2.y, 3);
            this._0EO.push(_local2);
        } else {
            if (this._0EO.length == 1) {
                this._1Oz.bitmapData = null;
                if (this._config._1y2) {
                    Mouse.show();
                }
                ;
                removeChild(this._0KU);
                removeChild(this._0N);
                removeEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
                _local2 = this._0EO[0];
                _local4 = new Point(_arg1.localX, _arg1.localY);
                this._0EO.push(_local4);
                graphics.clear();
                graphics.beginFill(_local3.backgroundColor, 0.4);
                graphics.drawRect(this._1tW.x, this._1tW.y, this._1tW.width, this._1tW.height);
                graphics.endFill();
                graphics.lineStyle(1.5, 0xFF0000);
                graphics.drawCircle(_local2.x, _local2.y, 4);
                graphics.lineStyle(1.5, 0xFF9900);
                graphics.drawCircle(_local4.x, _local4.y, 4);
                _local5 = Point.interpolate(_local2, _local4, 0.5);
                graphics.lineStyle(1, 0xAAAAAA);
                graphics.drawCircle(_local5.x, _local5.y, 4);
                _local6 = _local2;
                _local7 = _local4;
                if (_local2.x > _local4.x) {
                    _local6 = _local4;
                    _local7 = _local2;
                }
                ;
                _local8 = _local2;
                _local9 = _local4;
                if (_local2.y > _local4.y) {
                    _local8 = _local4;
                    _local9 = _local2;
                }
                ;
                _local10 = (_local7.x - _local6.x);
                _local11 = (_local9.y - _local8.y);
                _local12 = Point.distance(_local2, _local4);
                _local13 = this._1jx(_local3.highColor);
                _local13.text = ((this.round(_local2.x) + ",") + this.round(_local2.y));
                _local13.x = _local2.x;
                _local13.y = (_local2.y - (((_local8 == _local2)) ? 14 : 0));
                addChild(_local13);
                _local13 = this._1jx(_local3.highColor);
                _local13.text = ((this.round(_local4.x) + ",") + this.round(_local4.y));
                _local13.x = _local4.x;
                _local13.y = (_local4.y - (((_local8 == _local4)) ? 14 : 0));
                addChild(_local13);
                if ((((_local10 > 40)) || ((_local11 > 25)))) {
                    _local13 = this._1jx(_local3.lowColor);
                    _local13.text = ((this.round(_local5.x) + ",") + this.round(_local5.y));
                    _local13.x = _local5.x;
                    _local13.y = _local5.y;
                    addChild(_local13);
                }
                ;
                graphics.lineStyle(1, 0xAACC00, 0.5);
                graphics.moveTo(this._1tW.x, _local8.y);
                graphics.lineTo((this._1tW.x + this._1tW.width), _local8.y);
                graphics.moveTo(this._1tW.x, _local9.y);
                graphics.lineTo((this._1tW.x + this._1tW.width), _local9.y);
                graphics.moveTo(_local6.x, this._1tW.y);
                graphics.lineTo(_local6.x, (this._1tW.y + this._1tW.height));
                graphics.moveTo(_local7.x, this._1tW.y);
                graphics.lineTo(_local7.x, (this._1tW.y + this._1tW.height));
                _local14 = this.round(this.angle(_local2, _local4), 100);
                _local15 = this.round(this.angle(_local4, _local2), 100);
                graphics.lineStyle(1, 0xAA0000, 0.8);
                this._ue(graphics, 10, _local2, _local14, -90);
                graphics.lineStyle(1, 0xCC8800, 0.8);
                this._ue(graphics, 10, _local4, _local15, -90);
                graphics.lineStyle(2, 0xFF00, 0.7);
                graphics.moveTo(_local2.x, _local2.y);
                graphics.lineTo(_local4.x, _local4.y);
                this._zF.report((((((((("Ruler results: (red) <b>[" + _local2.x) + ",") + _local2.y) + "]</b> to (orange) <b>[") + _local4.x) + ",") + _local4.y) + "]</b>"), -2);
                this._zF.report((("Distance: <b>" + this.round(_local12, 100)) + "</b>"), -2);
                this._zF.report((((("Mid point: <b>[" + _local5.x) + ",") + _local5.y) + "]</b>"), -2);
                this._zF.report((((("Width:<b>" + _local10) + "</b>, Height: <b>") + _local11) + "</b>"), -2);
                this._zF.report((("Angle from first point (red): <b>" + _local14) + "°</b>"), -2);
                this._zF.report((("Angle from second point (orange): <b>" + _local15) + "°</b>"), -2);
            } else {
                this.exit();
            }
            ;
        }
        ;
    }


}
}//package _1np

