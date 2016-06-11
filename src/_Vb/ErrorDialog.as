// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Vb.ErrorDialog

package _Vb {
import _07g._2v;

import _0Mr._1M;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

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

public class ErrorDialog extends Sprite {

    public static const _1iJ:int = 0xB3B3B3;
    protected static const WIDTH:int = 300;

    protected var graphicsData_:Vector.<IGraphicsData>;

    public function ErrorDialog(_arg1:String) {
        this.box_ = new Sprite();
        this.rect_ = new Shape();
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this._0t6 = new GraphicsSolidFill(0x363636, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        this._xZ = new _2v();
        super();
        var _local2:String = ["An error has occured:", _arg1].join("\n");
        this._0FE = new _1hw(this);
        this._1qH = "/error";
        this._0Uv(_local2, "D'oh, this isn't good", "ErrorWindow.buttonOK", null);
        this.makeUIAndAdd();
        this._xZ.complete.addOnce(this.onComplete);
        addChild(this.box_);
        this.ok = new _0q(this, Dialog.LEFT_BUTTON);
    }
    public var ok:_sy;
    public var box_:Sprite;
    public var rect_:Shape;
    public var _1Ws:_06T;
    public var _zj:_06T = null;
    public var button1_:_1jP = null;
    public var button2_:_1jP = null;
    public var _1qH:String = null;
    public var _1G0:Number = 0;
    public var _15z:Number = 0;
    public var _0FE:_1hw;
    protected var path_:GraphicsPath;
    protected var _xZ:_2v;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var _0t6:GraphicsSolidFill;

    public function _FV(_arg1:Number):void {
        this.rect_.alpha = (((_arg1 > 1)) ? 1 : (((_arg1 < 0)) ? 0 : _arg1));
    }

    protected function makeUIAndAdd():void {
    }

    protected function initText(_arg1:String):void {
        this._1Ws = new _06T().setSize(14).setColor(_1iJ);
        this._1Ws.setTextWidth((WIDTH - 40));
        this._1Ws.x = 20;
        this._1Ws.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
        this._1Ws.setStringBuilder(new _1M(_arg1));
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
        this.box_.addChildAt(this.rect_, 0);
        this.box_.filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
    }

    protected function getBoxHeight():Number {
        return (this.box_.height);
    }

    private function _0Uv(_arg1:String, _arg2:String, _arg3:String, _arg4:String):void {
        this.initText(_arg1);
        this._0pb(this._1Ws);
        this._14Y(_arg2);
        this._Dl(_arg3, _arg4);
    }

    private function _0pb(_arg1:_06T):void {
        this.box_.addChild(_arg1);
        this._xZ.push(_arg1.textChanged);
    }

    private function _14Y(_arg1:String):void {
        if (_arg1 != null) {
            this._zj = new _06T().setSize(18).setColor(5746018);
            this._zj.setTextWidth(WIDTH);
            this._zj.setBold(true);
            this._zj.setAutoSize(TextFieldAutoSize.CENTER);
            this._zj.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8, 1)];
            this._zj.setStringBuilder(new _1M(_arg1));
            this._0pb(this._zj);
        }
        ;
    }

    private function _Dl(_arg1:String, _arg2:String):void {
        if (_arg1 != null) {
            this.button1_ = new _1jP(16, _arg1, 120);
            this.button1_.addEventListener(MouseEvent.CLICK, this.onButton1Click);
        }
        ;
        if (_arg2 != null) {
            this.button2_ = new _1jP(16, _arg2, 120);
            this.button2_.addEventListener(MouseEvent.CLICK, this.onButton2Click);
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
        _1WM._0lo(0, 0, WIDTH, (this.getBoxHeight() + 10), 4, [1, 1, 1, 1], this.path_);
        var _local1:Graphics = this.rect_.graphics;
        _local1.clear();
        _local1.drawGraphicsData(this.graphicsData_);
    }

    private function _1ix():void {
        var _local1:int;
        if (this.button1_ != null) {
            _local1 = (this.box_.height + 16);
            this.box_.addChild(this.button1_);
            this.button1_.y = _local1;
            if (this.button2_ == null) {
                this.button1_.x = ((WIDTH / 2) - (this.button1_.width / 2));
            } else {
                this.button1_.x = ((WIDTH / 4) - (this.button1_.width / 2));
                this.box_.addChild(this.button2_);
                this.button2_.x = (((3 * WIDTH) / 4) - (this.button2_.width / 2));
                this.button2_.y = _local1;
            }
            ;
        }
        ;
    }

    private function _0xz():void {
        if (((this.button1_) && (this.box_.contains(this.button1_)))) {
            this.box_.removeChild(this.button1_);
        }
        ;
        if (((this.button2_) && (this.box_.contains(this.button2_)))) {
            this.box_.removeChild(this.button2_);
        }
        ;
    }

    private function _0y5():void {
        if (this._zj != null) {
            this._zj.y = 2;
            this._1Ws.y = (this._zj.height + 8);
        } else {
            this._1Ws.y = 4;
        }
        ;
    }

    private function onButton1Click(_arg1:MouseEvent):void {
        dispatchEvent(new Event(Dialog.LEFT_BUTTON));
    }

    private function onButton2Click(_arg1:Event):void {
        dispatchEvent(new Event(Dialog.RIGHT_BUTTON));
    }


}
}//package _Vb

