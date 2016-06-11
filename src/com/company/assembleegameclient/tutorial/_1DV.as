// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial._1DV

package com.company.assembleegameclient.tutorial {
import _0Mr._5R;

import _0y9._06T;

import com.company.assembleegameclient.ui._1jP;
import com.company.util._1WM;

import flash.display.CapsStyle;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Rectangle;
import flash.utils.getTimer;

public class _1DV extends Sprite {

    public static const BORDER:int = 8;

    public function _1DV(_arg1:Tutorial, _arg2:String, _arg3:Boolean, _arg4:Rectangle) {
        this._1Xq = new GraphicsSolidFill(0x363636, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, new GraphicsSolidFill(0xFFFFFF));
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _1Xq, path_, _1WM.END_FILL, _1WM._0c2];
        super();
        this.tutorial_ = _arg1;
        this.rect_ = _arg4.clone();
        x = this.rect_.x;
        y = this.rect_.y;
        this.rect_.x = 0;
        this.rect_.y = 0;
        this._Al = new _06T().setSize(15).setColor(0xFFFFFF).setTextWidth((this.rect_.width - (4 * BORDER)));
        this._Al.setStringBuilder(new _5R().setParams(_arg2));
        this._Al.x = (2 * BORDER);
        this._Al.y = (2 * BORDER);
        if (_arg3) {
            this._1H5 = new _1jP(18, "Next");
            this._1H5.addEventListener(MouseEvent.CLICK, this._1kW);
            this._1H5.x = ((this.rect_.width - this._1H5.width) - 20);
            this._1H5.y = ((this.rect_.height - this._1H5.height) - 10);
        }
        ;
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var graphicsData_:Vector.<IGraphicsData>;
    private var tutorial_:Tutorial;
    private var rect_:Rectangle;
    private var _Al:_06T;
    private var _1H5:_1jP = null;
    private var startTime_:int;
    private var _1Xq:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var path_:GraphicsPath;

    private function drawRect():void {
        var _local1:Number = Math.min(1, (0.1 + ((0.9 * (getTimer() - this.startTime_)) / 200)));
        if (_local1 == 1) {
            addChild(this._Al);
            if (this._1H5 != null) {
                addChild(this._1H5);
            }
            ;
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        ;
        var _local2:Rectangle = this.rect_.clone();
        _local2.inflate(((-((1 - _local1)) * this.rect_.width) / 2), ((-((1 - _local1)) * this.rect_.height) / 2));
        _1WM._0Kr(this.path_);
        _1WM._0lo(_local2.x, _local2.y, _local2.width, _local2.height, 4, [1, 1, 1, 1], this.path_);
        graphics.clear();
        graphics.drawGraphicsData(this.graphicsData_);
    }

    private function onAddedToStage(_arg1:Event):void {
        this.startTime_ = getTimer();
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onEnterFrame(_arg1:Event):void {
        this.drawRect();
    }

    private function _1kW(_arg1:MouseEvent):void {
        this.tutorial_.doneAction(Tutorial._16V);
    }


}
}//package com.company.assembleegameclient.tutorial

