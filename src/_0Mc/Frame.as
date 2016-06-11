// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc.Frame

package _0Mc {
import _0Mr._5R;

import _0od._2d;

import _0y9._06T;

import com.company.assembleegameclient.ui._Wt;
import com.company.googleanalytics.GA;
import com.company.util._1WM;

import flash.display.CapsStyle;
import flash.display.DisplayObject;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class Frame extends Sprite {

    private static const _bt:Number = 17;

    private var graphicsData_:Vector.<IGraphicsData>;

    public function Frame(_arg1:String, _arg2:String, _arg3:String, _arg4:String = "", _arg5:int = 288) {
        this._13R = new Vector.<_eR>();
        this._1G9 = new Vector.<_Wt>();
        this._2X = new GraphicsSolidFill(0x4D4D4D, 1);
        this._0t6 = new GraphicsSolidFill(0x363636, 1);
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this.path1_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.path2_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_0t6, path2_, _1WM.END_FILL, _2X, path1_, _1WM.END_FILL, _1jo, path2_, _1WM._0c2];
        super();
        this.w_ = _arg5;
        this._zj = new _06T().setSize(13).setColor(0xB3B3B3);
        this._zj.setStringBuilder(new _5R().setParams(_arg1));
        this._zj.filters = [new DropShadowFilter(0, 0, 0)];
        this._zj.x = 5;
        this._zj.y = 3;
        this._zj.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        addChild(this._zj);
        this._Xw(_arg2);
        this._02O(_arg3);
        this._1qH = _arg4;
        filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
    }
    public var _zj:_06T;
    public var _4j:_Wt;
    public var _01h:_Wt;
    public var _1qH:String;
    public var _13R:Vector.<_eR>;
    public var _1G9:Vector.<_Wt>;
    public var w_:int = 288;
    public var h_:int = 100;
    private var _2X:GraphicsSolidFill;
    private var _0t6:GraphicsSolidFill;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var path1_:GraphicsPath;
    private var path2_:GraphicsPath;

    public function _1ry(_arg1:_2d):void {
        addChild(_arg1);
        _arg1.y = (this.h_ - 60);
        _arg1.x = 17;
        this.h_ = (this.h_ + _arg1.getHeight());
    }

    public function _0qq(_arg1:_eR):void {
        this._13R.push(_arg1);
        addChild(_arg1);
        _arg1.y = (this.h_ - 60);
        _arg1.x = 17;
        this.h_ = (this.h_ + _eR.HEIGHT);
    }

    public function _Kd(_arg1:_Wt):void {
        this._1G9.push(_arg1);
        _arg1.x = _bt;
        addChild(_arg1);
        this.positionText(_arg1);
    }

    public function _1MU(_arg1:DisplayObject, _arg2:int = 8):void {
        addChild(_arg1);
        _arg1.y = (this.h_ - 66);
        _arg1.x = _arg2;
        this.h_ = (this.h_ + _arg1.height);
    }

    public function _1ll(_arg1:String, _arg2:Object = null):void {
        var text:_06T;
        var position:Function;
        var plainText:String = _arg1;
        var tokens = _arg2;
        position = function ():void {
            positionText(text);
            draw();
        };
        text = new _06T().setSize(12).setColor(0xFFFFFF);
        text.setStringBuilder(new _5R().setParams(plainText, tokens));
        text.filters = [new DropShadowFilter(0, 0, 0)];
        text.textChanged.add(position);
        addChild(text);
    }

    public function _0Uo(_arg1:String):void {
        var _local2:_06T;
        _local2 = new _06T().setSize(20).setColor(0xB2B2B2).setBold(true);
        _local2.setStringBuilder(new _5R().setParams(_arg1));
        _local2.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        addChild(_local2);
        _local2.y = (this.h_ - 60);
        _local2.x = 15;
        this.h_ = (this.h_ + 40);
    }

    public function _Z1(_arg1:_w1):void {
        addChild(_arg1);
        _arg1.y = (this.h_ - 66);
        _arg1.x = _bt;
        this.h_ = (this.h_ + 44);
    }

    public function _0M4(_arg1:_1vl):void {
        addChild(_arg1);
        _arg1.y = (this.h_ - 66);
        _arg1.x = 18;
        this.h_ = (this.h_ + _arg1.height);
    }

    public function _1Me(_arg1:int):void {
        this.h_ = (this.h_ + _arg1);
    }

    public function disable():void {
        var _local1:_Wt;
        mouseEnabled = false;
        mouseChildren = false;
        for each (_local1 in this._1G9) {
            _local1._1bP(0xB3B3B3);
        }
        ;
        this._4j._1bP(0xB3B3B3);
        this._01h._1bP(0xB3B3B3);
    }

    public function _bx():void {
        var _local1:_Wt;
        mouseEnabled = true;
        mouseChildren = true;
        for each (_local1 in this._1G9) {
            _local1._1bP(0xFFFFFF);
        }
        ;
        this._4j._1bP(0xFFFFFF);
        this._01h._1bP(0xFFFFFF);
    }

    protected function positionText(_arg1:DisplayObject):void {
        _arg1.y = (this.h_ - 66);
        _arg1.x = _bt;
        this.h_ = (this.h_ + 20);
    }

    protected function draw():void {
        graphics.clear();
        _1WM._0Kr(this.path1_);
        _1WM._0lo(-6, -6, this.w_, (20 + 12), 4, [1, 1, 0, 0], this.path1_);
        _1WM._0Kr(this.path2_);
        _1WM._0lo(-6, -6, this.w_, this.h_, 4, [1, 1, 1, 1], this.path2_);
        this._4j.y = (this.h_ - 52);
        this._01h.y = (this.h_ - 52);
        graphics.drawGraphicsData(this.graphicsData_);
    }

    private function _Xw(_arg1:String):void {
        this._4j = new _Wt(18, true, _arg1);
        if (_arg1 != "") {
            this._4j.buttonMode = true;
            this._4j.x = 109;
            addChild(this._4j);
        }
        ;
    }

    private function _02O(_arg1:String):void {
        this._01h = new _Wt(18, true, _arg1);
        if (_arg1 != "") {
            this._01h.buttonMode = true;
            this._01h.x = ((this.w_ - this._01h.width) - 26);
            this._01h.setAutoSize(TextFieldAutoSize.RIGHT);
            addChild(this._01h);
        }
        ;
    }

    protected function onAddedToStage(_arg1:Event):void {
        this.draw();
        x = ((stage.stageWidth / 2) - ((this.w_ - 6) / 2));
        y = ((stage.stageHeight / 2) - (height / 2));
        if (this._13R.length > 0) {
            stage.focus = this._13R[0].inputText_;
        }
        ;
        ((this._1qH) && (GA.global().trackPageview(this._1qH)));
    }


}
}//package _0Mc

