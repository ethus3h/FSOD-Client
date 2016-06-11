// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._1Db

package com.company.assembleegameclient.ui {
import com.company.util._1WM;

import flash.display.Graphics;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;
import flash.geom.Rectangle;
import flash.utils.getTimer;

public class _1Db extends Sprite {

    private static function _1R5(_arg1:int, _arg2:int, _arg3:Graphics):void {
        _arg3.clear();
        _arg3.beginFill(0x353535, 0.01);
        _arg3.drawRect((-(_arg1) / 2), (-(_arg2) / 2), _arg1, _arg2);
        _arg3.endFill();
        _arg3.beginFill(0xFFFFFF, 1);
        _arg3.moveTo((-(_arg1) / 2), (-(_arg2) / 2));
        _arg3.lineTo((_arg1 / 2), 0);
        _arg3.lineTo((-(_arg1) / 2), (_arg2 / 2));
        _arg3.lineTo((-(_arg1) / 2), (-(_arg2) / 2));
        _arg3.endFill();
    }

    public function _1Db(_arg1:int, _arg2:int, _arg3:Number = 1, _arg4:Sprite = null) {
        this._0t6 = new GraphicsSolidFill(0xFFFFFF, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_0t6, path_, _1WM.END_FILL];
        super();
        this._1yN = _arg4;
        this.background_ = new Sprite();
        this.background_.addEventListener(MouseEvent.MOUSE_DOWN, this._1jY);
        addChild(this.background_);
        this._1QT = this._0c8(this._1YZ);
        addChild(this._1QT);
        this._0A3 = this._0c8(this._0KL);
        addChild(this._0A3);
        this._BV = this._0c8(this._1oX);
        addChild(this._BV);
        this.resize(_arg1, _arg2, _arg3);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var graphicsData_:Vector.<IGraphicsData>;
    private var width_:int;
    private var height_:int;
    private var speed_:Number;
    private var _1PJ:Rectangle;
    private var _1Si:Number;
    private var background_:Sprite;
    private var _1QT:Sprite;
    private var _0A3:Sprite;
    private var _BV:Sprite;
    private var _1yN:Sprite;
    private var _0b1:int;
    private var _1Eo:Number;
    private var _0t6:GraphicsSolidFill;
    private var path_:GraphicsPath;

    public function _0LY():Number {
        return (((this._BV.y - this._1PJ.y) / (this._1PJ.height - this._BV.height)));
    }

    public function _cf(_arg1:Number, _arg2:Number, _arg3:Boolean = true):void {
        var _local4:int = (((_arg2 == 0)) ? this._1PJ.height : ((_arg1 / _arg2) * this._1PJ.height));
        _local4 = Math.min(this._1PJ.height, Math.max(this.width_, _local4));
        this._0Za(this.width_, _local4, this._BV.graphics);
        this._1Si = ((_arg1 / (_arg2 - _arg1)) * 0.33);
        if (_arg3) {
            this._Vn(0);
        }
        ;
    }

    public function _Vn(_arg1:Number):void {
        _arg1 = Math.max(0, Math.min(1, _arg1));
        this._BV.y = ((_arg1 * (this._1PJ.height - this._BV.height)) + this._1PJ.y);
        this._1On();
    }

    public function _TS():void {
        this._Vn((this._0LY() - this._1Si));
    }

    public function _0Ka():void {
        this._Vn((this._0LY() + this._1Si));
    }

    public function resize(_arg1:int, _arg2:int, _arg3:Number = 1):void {
        this.width_ = _arg1;
        this.height_ = _arg2;
        this.speed_ = _arg3;
        var _local4:int = (this.width_ * 0.75);
        this._1PJ = new Rectangle(0, (_local4 + 5), this.width_, ((this.height_ - (_local4 * 2)) - 10));
        var _local5:Graphics = this.background_.graphics;
        _local5.clear();
        _local5.beginFill(0x545454, 1);
        _local5.drawRect(this._1PJ.x, this._1PJ.y, this._1PJ.width, this._1PJ.height);
        _local5.endFill();
        _1R5(_local4, this.width_, this._1QT.graphics);
        this._1QT.rotation = -90;
        this._1QT.x = (this.width_ / 2);
        this._1QT.y = (_local4 / 2);
        _1R5(_local4, this.width_, this._0A3.graphics);
        this._0A3.x = (this.width_ / 2);
        this._0A3.y = (this.height_ - (_local4 / 2));
        this._0A3.rotation = 90;
        this._0Za(this.width_, this.height_, this._BV.graphics);
        this._BV.x = 0;
        this._BV.y = this._1PJ.y;
    }

    private function _0c8(_arg1:Function):Sprite {
        var _local2:Sprite = new Sprite();
        _local2.addEventListener(MouseEvent.MOUSE_DOWN, _arg1);
        _local2.addEventListener(MouseEvent.ROLL_OVER, this._Uf);
        _local2.addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        return (_local2);
    }

    private function _1On():void {
        dispatchEvent(new Event(Event.CHANGE));
    }

    private function _0Za(_arg1:int, _arg2:int, _arg3:Graphics):void {
        _1WM._0Kr(this.path_);
        _1WM._0lo(0, 0, _arg1, _arg2, 4, [1, 1, 1, 1], this.path_);
        _arg3.clear();
        _arg3.drawGraphicsData(this.graphicsData_);
    }

    protected function onAddedToStage(_arg1:Event):void {
        if (this._1yN != null) {
            this._1yN.addEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
        } else {
            if (parent) {
                parent.addEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
            } else {
                WebMain._0b2.addEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
            }
            ;
        }
        ;
    }

    protected function onRemovedFromStage(_arg1:Event):void {
        if (this._1yN != null) {
            this._1yN.removeEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
        } else {
            if (parent) {
                parent.removeEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
            } else {
                WebMain._0b2.removeEventListener(MouseEvent.MOUSE_WHEEL, this._0YS);
            }
            ;
        }
        ;
        removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    protected function _0YS(_arg1:MouseEvent):void {
        if (_arg1.delta > 0) {
            this._TS();
        } else {
            if (_arg1.delta < 0) {
                this._0Ka();
            }
            ;
        }
        ;
    }

    private function _Uf(_arg1:MouseEvent):void {
        var _local2:Sprite = (_arg1.target as Sprite);
        _local2.transform.colorTransform = new ColorTransform(1, 0.8627, 0.5216);
    }

    private function onRollOut(_arg1:MouseEvent):void {
        var _local2:Sprite = (_arg1.target as Sprite);
        _local2.transform.colorTransform = new ColorTransform(1, 1, 1);
    }

    private function _1jY(_arg1:MouseEvent):void {
        if (_arg1.localY < this._BV.y) {
            this._TS();
        } else {
            this._0Ka();
        }
        ;
    }

    private function _1YZ(_arg1:MouseEvent):void {
        addEventListener(Event.ENTER_FRAME, this._1yg);
        addEventListener(MouseEvent.MOUSE_UP, this._0JM);
        this._0b1 = getTimer();
        this._1Eo = -(this.speed_);
    }

    private function _0KL(_arg1:MouseEvent):void {
        addEventListener(Event.ENTER_FRAME, this._1yg);
        addEventListener(MouseEvent.MOUSE_UP, this._0JM);
        this._0b1 = getTimer();
        this._1Eo = this.speed_;
    }

    private function _1yg(_arg1:Event):void {
        var _local2:int = getTimer();
        var _local3:Number = ((_local2 - this._0b1) / 1000);
        var _local4:Number = (((this.height_ - (this.width_ * 3)) * _local3) * this._1Eo);
        this._Vn((((this._BV.y + _local4) - this._1PJ.y) / (this._1PJ.height - this._BV.height)));
        this._0b1 = _local2;
    }

    private function _0JM(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this._1yg);
        removeEventListener(MouseEvent.MOUSE_UP, this._0JM);
    }

    private function _1oX(_arg1:MouseEvent):void {
        this._BV.startDrag(false, new Rectangle(0, this._1PJ.y, 0, (this._1PJ.height - this._BV.height)));
        stage.addEventListener(MouseEvent.MOUSE_UP, this._0aE);
        stage.addEventListener(MouseEvent.MOUSE_MOVE, this._8S);
        this._1On();
    }

    private function _0aE(_arg1:MouseEvent):void {
        stage.removeEventListener(MouseEvent.MOUSE_UP, this._0aE);
        stage.removeEventListener(MouseEvent.MOUSE_MOVE, this._8S);
        this._BV.stopDrag();
        this._1On();
    }

    private function _8S(_arg1:MouseEvent):void {
        this._1On();
    }


}
}//package com.company.assembleegameclient.ui

