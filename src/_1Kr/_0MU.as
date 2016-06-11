// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Kr._0MU

package _1Kr {
import _0Mr._1M;

import _0Ql._ZQ;

import _0y9._06T;

import _1Sm._sy;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;
import com.company.util.MoreColorUtil;
import com.company.util._1WM;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.filters.ColorMatrixFilter;
import flash.filters.DropShadowFilter;
import flash.geom.Point;
import flash.utils.Timer;

public class _0MU extends Sprite {

    private static const _yf:uint = 250;
    private static const _1Sj:int = 3;

    public static var _0zu:int = 84;
    private static var _0GD:int = 24;
    private static var _15:int = 4;
    private static var _0oH:int = 13;
    private static var _KK:int = -6;

    public function _0MU(_arg1:Array, _arg2:int) {
        var _local3:BitmapData;
        this._075 = new GraphicsSolidFill(0x545454, 1);
        this._1YI = new GraphicsSolidFill(4078909, 1);
        this._1RB = new GraphicsSolidFill(2368034, 1);
        this._0Do = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this._V = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this._0FT = new <IGraphicsData>[this._075, this._0Do, _1WM.END_FILL];
        this._18E = new <IGraphicsData>[this._1YI, this._0Do, _1WM.END_FILL];
        this._Re = new <IGraphicsData>[this._1RB, this._V, _1WM.END_FILL];
        super();
        mouseChildren = false;
        this.position = _arg2;
        this._0Nj = new ColorMatrixFilter(MoreColorUtil._1Bu);
        _local3 = AssetLibrary._Rb("lofiObj3", 225);
        _local3 = TextureRedrawer.redraw(_local3, 30, false, 0);
        this.text = new _06T().setSize(13).setColor(0xFFFFFF).setTextWidth(_0zu).setTextHeight(_0GD);
        this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        this.text.y = 4;
        this._A6 = new Bitmap(_local3);
        this._A6.x = 52;
        this._A6.y = -6;
        this._A6.visible = false;
        this.bg = new Sprite();
        _1WM._0Kr(this._0Do);
        _1WM._0lo(0, 0, _0zu, _0GD, 4, _arg1, this._0Do);
        _1WM._0lo(2, 2, (_0zu - _15), (_0GD - _15), 4, _arg1, this._V);
        this.bg.graphics.drawGraphicsData(this._18E);
        this.bg.graphics.drawGraphicsData(this._Re);
        addChild(this.bg);
        addChild(this._A6);
        addChild(this.text);
        this._0Ja = new Sprite();
        this._0Y7 = new Timer(_yf, 1);
        this._0Y7.addEventListener(TimerEvent.TIMER_COMPLETE, this._1aH);
        addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._02v = new _ZQ(this, MouseEvent.CLICK, MouseEvent);
        this._0g3 = new _sy();
        this._04H = new _sy(DisplayObject);
    }
    public var position:int;
    public var objectType:int;
    public var _02v:_ZQ;
    public var _0g3:_sy;
    public var _04H:_sy;
    private var _075:GraphicsSolidFill;
    private var _1YI:GraphicsSolidFill;
    private var _1RB:GraphicsSolidFill;
    private var _0Do:GraphicsPath;
    private var _V:GraphicsPath;
    private var _0FT:Vector.<IGraphicsData>;
    private var _18E:Vector.<IGraphicsData>;
    private var _Re:Vector.<IGraphicsData>;
    private var text:_06T;
    private var _A6:Bitmap;
    private var _0Ja:Sprite;
    private var _1ju:Bitmap;
    private var bg:Sprite;
    private var _0Nj:ColorMatrixFilter;
    private var _0Y7:Timer;
    private var _rt:Point;
    private var _1xH:Boolean;
    private var _0ky:Boolean;

    public function _f(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:int = -1):void {
        var _local6:int;
        var _local7:BitmapData;
        var _local8:Bitmap;
        if (_arg4 != -1) {
            this.objectType = _arg4;
            if (this._1ju != null) {
                removeChild(this._1ju);
            }
            ;
            _local7 = ObjectLibrary.getRedrawnTextureFromType(_arg4, 55, false);
            this._1ju = new Bitmap(_local7);
            this._1ju.y = -11;
            addChild(this._1ju);
            _local7 = ObjectLibrary.getRedrawnTextureFromType(_arg4, 80, true);
            _local8 = new Bitmap(_local7);
            _local8.x = (_local8.x - 30);
            _local8.y = (_local8.y - 30);
            this._0Ja.addChild(_local8);
        }
        ;
        var _local5 = (_arg1 > 0);
        if (_local5) {
            this._1Z(String(_arg1));
            _local6 = _0oH;
            this.bg.graphics.clear();
            this.bg.graphics.drawGraphicsData(this._0FT);
            this.text.x = ((_0zu / 2) + 5);
        } else {
            this._1Z(String(_arg2));
            _local6 = _KK;
            this.bg.graphics.clear();
            this.bg.graphics.drawGraphicsData(this._18E);
            this.bg.graphics.drawGraphicsData(this._Re);
            this.text.x = ((this._A6.x - this.text.width) + 6);
        }
        ;
        if (this._1ju) {
            this._1ju.x = _local6;
        }
        ;
        if (!_local5) {
            if (Parameters.data_.contextualPotionBuy) {
                this.text.setColor(0xFFFFFF);
                this._A6.filters = [];
                this._A6.visible = true;
            } else {
                this.text.setColor(0xAAAAAA);
                this._A6.filters = [this._0Nj];
                this._A6.visible = true;
            }
            ;
        } else {
            this.text.setColor(0xFFFFFF);
            this._A6.filters = [];
            this._A6.visible = false;
        }
        ;
    }

    public function _1Z(_arg1:String):void {
        this.text.setStringBuilder(new _1M(_arg1));
    }

    private function _0XT(_arg1:Boolean):void {
        this._1xH = _arg1;
        if (this._1xH) {
            this._0Y7.reset();
            this._0Y7.start();
        } else {
            this._0Y7.stop();
        }
        ;
    }

    private function _086():void {
        this._0ky = true;
        this._0Ja.startDrag(true);
        stage.addChild(this._0Ja);
        this._0Ja.addEventListener(MouseEvent.MOUSE_UP, this._08e);
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._0XT(false);
    }

    private function onMouseUp(_arg1:MouseEvent):void {
        if (this._0ky) {
            return;
        }
        ;
        if (_arg1.shiftKey) {
            this._0XT(false);
            this._0g3.dispatch();
        } else {
            if (!this._1xH) {
                this._0XT(true);
            } else {
                this._0XT(false);
                this._0g3.dispatch();
            }
            ;
        }
        ;
    }

    private function onMouseDown(_arg1:MouseEvent):void {
        if (!this._A6.visible) {
            this._Wl(_arg1);
        }
        ;
    }

    private function _Wl(_arg1:MouseEvent):void {
        this._rt = new Point(_arg1.stageX, _arg1.stageY);
        addEventListener(MouseEvent.MOUSE_MOVE, this._nt);
        addEventListener(MouseEvent.MOUSE_OUT, this._TZ);
        addEventListener(MouseEvent.MOUSE_UP, this._TZ);
    }

    private function _TZ(_arg1:MouseEvent):void {
        removeEventListener(MouseEvent.MOUSE_MOVE, this._nt);
        removeEventListener(MouseEvent.MOUSE_OUT, this._TZ);
        removeEventListener(MouseEvent.MOUSE_UP, this._TZ);
    }

    private function _nt(_arg1:MouseEvent):void {
        var _local2:Number = (_arg1.stageX - this._rt.x);
        var _local3:Number = (_arg1.stageY - this._rt.y);
        var _local4:Number = Math.sqrt(((_local2 * _local2) + (_local3 * _local3)));
        if (_local4 > _1Sj) {
            this._TZ(null);
            this._0XT(false);
            this._086();
        }
        ;
    }

    private function _1aH(_arg1:TimerEvent):void {
        this._0XT(false);
    }

    private function _08e(_arg1:MouseEvent):void {
        this._0ky = false;
        this._0Ja.stopDrag();
        this._0Ja.x = this._rt.x;
        this._0Ja.y = this._rt.y;
        stage.removeChild(this._0Ja);
        this._0Ja.removeEventListener(MouseEvent.MOUSE_UP, this._08e);
        this._04H.dispatch(this._0Ja.dropTarget);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this._0XT(false);
        this._TZ(null);
        if (this._0ky) {
            this._0Ja.stopDrag();
        }
        ;
    }


}
}//package _1Kr

