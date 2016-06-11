// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Vb._Tk

package _Vb {
import _07g._2v;

import _0Mr._1M;
import _0Mr._1vN;

import _0y9._06T;

import com.company.assembleegameclient.ui._1jP;
import com.company.assembleegameclient.util._1hw;
import com.company.googleanalytics.GA;
import com.company.util._1WM;

import flash.display.CapsStyle;
import flash.display.Graphics;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _Tk extends Sprite {

    public static const LEFT_BUTTON:String = "dialogLeftButton";
    public static const RIGHT_BUTTON:String = "dialogRightButton";
    public static const _1iJ:int = 0xB3B3B3;
    public static const WIDTH:int = 300;

    protected var graphicsData_:Vector.<IGraphicsData>;

    public function _Tk(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:String) {
        this.box_ = new Sprite();
        this.rect_ = new Shape();
        this._0j4 = this.setDialogWidth();
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this._0t6 = new GraphicsSolidFill(0x363636, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        this._xZ = new _2v();
        this._1vH = this._1vH;
        this._1uT = _arg3;
        this._1cK = _arg4;
        super();
        this._0FE = new _1hw(this);
        this._1qH = _arg5;
        this._0Uv(_arg2, _arg1);
        this.makeUIAndAdd();
        this._xZ.complete.addOnce(this.onComplete);
        addChild(this.box_);
    }
    public var box_:Sprite;
    public var rect_:Shape;
    public var _1Ws:_06T;
    public var _zj:_06T = null;
    public var _1qH:String = null;
    public var _1G0:Number = 0;
    public var _15z:Number = 0;
    public var _0FE:_1hw;
    public var _0iD:int = 2;
    public var _Kb:int = 8;
    public var _0i4:int = 16;
    public var _1Qf:int = 10;
    public var _0j4:int;
    protected var path_:GraphicsPath;
    protected var _xZ:_2v;
    protected var leftButton:_1jP;
    protected var rightButton:_1jP;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var _0t6:GraphicsSolidFill;
    private var _1uT:String;
    private var _1cK:String;
    private var _1vH:Object;

    public function _1vm():String {
        return (this._1uT);
    }

    public function _21H():String {
        return (this._1cK);
    }

    public function _Mu(_arg1:String, _arg2:Object):void {
        this._1Ws.setStringBuilder(new _1M(_arg1));
    }

    public function _tm(_arg1:_1vN):void {
        this._zj.setStringBuilder(_arg1);
    }

    protected function setDialogWidth():int {
        return (WIDTH);
    }

    protected function makeUIAndAdd():void {
    }

    protected function initText(_arg1:String):void {
        this._1Ws = new _06T().setSize(14).setColor(_1iJ);
        this._1Ws.setTextWidth((this._0j4 - 40));
        this._1Ws.x = 20;
        this._1Ws.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
        this._1Ws.setHTML(true);
        var _local2:_1M = new _1M(_arg1).setPrefix('<p align="center">').setPostfix("</p>");
        this._1Ws.setStringBuilder(_local2);
        this._1Ws.mouseEnabled = true;
        this._1Ws.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
    }

    protected function drawAdditionalUI():void {
    }

    protected function _QY():void {
        if (this.box_.contains(this.rect_)) {
            this.box_.removeChild(this.rect_);
        }
        ;
        this._0xz();
        this._1ix();
        this._QO();
        this.drawGraphicsTemplate();
        this.box_.addChildAt(this.rect_, 0);
        this.box_.filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
    }

    protected function drawGraphicsTemplate():void {
    }

    protected function getBoxHeight():Number {
        return (this.box_.height);
    }

    private function _0Uv(_arg1:String, _arg2:String):void {
        this.initText(_arg1);
        this._0pb(this._1Ws);
        this._14Y(_arg2);
        this._Dl();
    }

    private function _0pb(_arg1:_06T):void {
        this.box_.addChild(_arg1);
        this._xZ.push(_arg1.textChanged);
    }

    private function _14Y(_arg1:String):void {
        if (_arg1 != null) {
            this._zj = new _06T().setSize(18).setColor(5746018);
            this._zj.setBold(true);
            this._zj.setAutoSize(TextFieldAutoSize.CENTER);
            this._zj.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 1)];
            this._zj.setStringBuilder(new _1M(_arg1));
            this._0pb(this._zj);
        }
        ;
    }

    private function _Dl():void {
        if (this._1uT != null) {
            this.leftButton = new _1jP(16, this._1uT, 120, true);
            this.leftButton.addEventListener(MouseEvent.CLICK, this._ng);
        }
        ;
        if (this._1cK != null) {
            this.rightButton = new _1jP(16, this._1cK, 120, true);
            this.rightButton.addEventListener(MouseEvent.CLICK, this._0vP);
        }
        ;
    }

    private function onComplete():void {
        this.draw();
        this._1wV();
    }

    private function _1wV():void {
        this.box_.x = ((this._1G0 + (this._0FE._216() / 2)) - (this.box_.width / 2));
        this.box_.y = ((this._15z + (this._0FE._0Ct() / 2)) - (this.getBoxHeight() / 2));
        if (this._1qH != null) {
            this._1Km();
        }
        ;
    }

    private function _1Km():void {
        try {
            GA.global().trackPageview(this._1qH);
        } catch (error:Error) {
        }
        ;
    }

    private function draw():void {
        this._0y5();
        this.drawAdditionalUI();
        this._QY();
    }

    private function _QO():void {
        _1WM._0Kr(this.path_);
        _1WM._0lo(0, 0, this._0j4, (this.getBoxHeight() + this._1Qf), 4, [1, 1, 1, 1], this.path_);
        var _local1:Graphics = this.rect_.graphics;
        _local1.clear();
        _local1.drawGraphicsData(this.graphicsData_);
    }

    private function _1ix():void {
        var _local1:int;
        if (this.leftButton != null) {
            _local1 = (this.box_.height + this._0i4);
            this.box_.addChild(this.leftButton);
            this.leftButton.y = _local1;
            if (this.rightButton == null) {
                this.leftButton.x = ((this._0j4 / 2) - (this.leftButton.width / 2));
            } else {
                this.leftButton.x = ((this._0j4 / 4) - (this.leftButton.width / 2));
                this.box_.addChild(this.rightButton);
                this.rightButton.x = (((3 * this._0j4) / 4) - (this.rightButton.width / 2));
                this.rightButton.y = _local1;
            }
            ;
        }
        ;
    }

    private function _0y5():void {
        if (this._zj != null) {
            this._zj.x = (this._0j4 / 2);
            this._zj.y = this._0iD;
            this._1Ws.y = (this._zj.height + this._Kb);
        } else {
            this._1Ws.y = 4;
        }
        ;
    }

    private function _0xz():void {
        if (((this.leftButton) && (this.box_.contains(this.leftButton)))) {
            this.box_.removeChild(this.leftButton);
        }
        ;
        if (((this.rightButton) && (this.box_.contains(this.rightButton)))) {
            this.box_.removeChild(this.rightButton);
        }
        ;
    }

    protected function _ng(_arg1:MouseEvent):void {
        dispatchEvent(new Event(LEFT_BUTTON));
    }

    protected function _0vP(_arg1:Event):void {
        dispatchEvent(new Event(RIGHT_BUTTON));
    }


}
}//package _Vb

