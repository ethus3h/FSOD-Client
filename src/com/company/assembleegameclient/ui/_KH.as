// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._KH

package com.company.assembleegameclient.ui {
import _0Mr._5R;

import _0y9._06T;
import _0y9._1Ds;

import _6u._TG;

import com.company.util._1WM;

import flash.display.CapsStyle;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;
import flash.utils.getTimer;

public class _KH extends _1E {

    private static const _8Z:int = 2999;
    private static const _tL:int = 0;
    private static const _1xJ:int = 1;
    private static const _1fw:int = 2;
    private static const _0Ho:int = 3;

    public function _KH(_arg1:int, _arg2:int = 0) {
        super(_arg2);
        this._hX();
        this._04k = getTimer();
        this._00K = new _1Ds();
        this._00K.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        this._00K.setSize(_arg1).setColor(0x363636).setBold(true);
        this._00K.setStringBuilder(new _5R().setParams(_TG._0fx));
        w_ = (((_arg2) != 0) ? _arg2 : (this._00K.width + 12));
        this.h_ = (this._00K.height + 8);
        this._00K.x = (w_ / 2);
        this._00K.y = (this.h_ / 2);
        _1WM._0Kr(path_);
        _1WM._0lo(0, 0, w_, (this._00K.height + 8), 4, [1, 1, 1, 1], path_);
        this._0L3 = this._193();
        addChild(this._0L3);
        addChild(this._00K);
        this.draw();
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        addEventListener(MouseEvent.CLICK, this._1Lb);
    }
    public var _0L3:Sprite;
    public var _0hW:Shape;
    public var _00K:_1Ds;
    public var h_:int;
    private var _1T2:int;
    private var _04k:int;
    private var _0fl:Vector.<IGraphicsData>;
    private var outlineGraphicsData_:Vector.<IGraphicsData>;

    public function reset():void {
        this._04k = getTimer();
        this._1T2 = _tL;
        this.setEnabled(false);
        this._1Nq(_TG._0fx);
    }

    public function disable():void {
        this._1T2 = _0Ho;
        this.setEnabled(false);
        this._1Nq(_TG._0fx);
    }

    private function _hX():void {
        var _local1:GraphicsSolidFill = new GraphicsSolidFill(0xBFBFBF, 1);
        this._0fl = new <IGraphicsData>[_local1, path_, _1WM.END_FILL];
        var _local2:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
        var _local3:GraphicsStroke = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, _local2);
        this.outlineGraphicsData_ = new <IGraphicsData>[_local3, path_, _1WM._0c2];
    }

    private function _1Nq(_arg1:String):void {
        this._00K.setStringBuilder(new _5R().setParams(_arg1));
    }

    private function setEnabled(_arg1:Boolean):void {
        if (_arg1 == mouseEnabled) {
            return;
        }
        ;
        mouseEnabled = _arg1;
        mouseChildren = _arg1;
        graphicsData_[0] = ((_arg1) ? _137 : _1Af);
        this.draw();
    }

    private function _193():Sprite {
        var _local1:Sprite = new Sprite();
        var _local2:Sprite = new Sprite();
        var _local3:Shape = new Shape();
        _local3.graphics.clear();
        _local3.graphics.drawGraphicsData(this._0fl);
        _local2.addChild(_local3);
        this._0hW = new Shape();
        _local2.addChild(this._0hW);
        _local2.mask = this._0hW;
        _local1.addChild(_local2);
        var _local4:Shape = new Shape();
        _local4.graphics.clear();
        _local4.graphics.drawGraphicsData(this.outlineGraphicsData_);
        _local1.addChild(_local4);
        return (_local1);
    }

    private function _0la(_arg1:Number):void {
        this._0hW.graphics.clear();
        this._0hW.graphics.beginFill(0xBFBFBF);
        this._0hW.graphics.drawRect(0, 0, (w_ * _arg1), this.h_);
        this._0hW.graphics.endFill();
    }

    private function draw():void {
        var _local1:int;
        var _local2:Number;
        _local1 = getTimer();
        if (this._1T2 == _tL) {
            if ((_local1 - this._04k) >= _8Z) {
                this._1T2 = _1xJ;
                this.setEnabled(true);
            }
            ;
        }
        ;
        switch (this._1T2) {
            case _tL:
                this._0L3.visible = true;
                _local2 = ((_local1 - this._04k) / _8Z);
                this._0la(_local2);
                break;
            case _0Ho:
            case _1xJ:
            case _1fw:
                this._0L3.visible = false;
                break;
        }
        ;
        graphics.clear();
        graphics.drawGraphicsData(graphicsData_);
    }

    private function onAddedToStage(_arg1:Event):void {
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        this.reset();
        this.draw();
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onEnterFrame(_arg1:Event):void {
        this.draw();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        _137.color = 16768133;
        this.draw();
    }

    private function onRollOut(_arg1:MouseEvent):void {
        _137.color = 0xFFFFFF;
        this.draw();
    }

    private function _1Lb(_arg1:MouseEvent):void {
        this._1T2 = _1fw;
        this.setEnabled(false);
        this._1Nq(_TG._0CP);
    }


}
}//package com.company.assembleegameclient.ui

