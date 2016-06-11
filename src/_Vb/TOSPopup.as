// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Vb.TOSPopup

package _Vb {
import _07g._2v;

import _0CT._8w;

import _0Mr._5R;

import _0tf._0yo;

import _0y9._06T;

import _1PE.Account;

import _6u._TG;

import __Nj._0ay;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui._1jP;
import com.company.assembleegameclient.util._1hw;
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
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class TOSPopup extends Sprite {

    public static const LEFT_BUTTON:String = "dialogLeftButton";
    public static const _1iJ:int = 0xB3B3B3;
    public static const WIDTH:int = 210;

    protected var graphicsData_:Vector.<IGraphicsData>;

    public function TOSPopup() {
        this.box_ = new Sprite();
        this.rect_ = new Shape();
        this._0j4 = this.setDialogWidth();
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this._0t6 = new GraphicsSolidFill(0x363636, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        this._xZ = new _2v();
        super();
        this._0Uv();
        addChild(this.box_);
        this._xZ.complete.addOnce(this.onComplete);
    }
    public var box_:Sprite;
    public var rect_:Shape;
    public var _1Ws:_06T;
    public var _ZS:_06T;
    public var _1G0:Number = 0;
    public var _15z:Number = 20;
    public var _0FE:_1hw;
    public var _ja:int = 4;
    public var _0i4:int = 16;
    public var _1Qf:int = 22;
    public var _0j4:int;
    protected var path_:GraphicsPath;
    protected var _Fh:_1jP;
    protected var _xZ:_2v;
    private var _Wz:int = 15;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var _0t6:GraphicsSolidFill;

    protected function setDialogWidth():int {
        return (WIDTH);
    }

    protected function initText():void {
        this._1Ws = new _06T().setSize(16).setColor(_1iJ);
        this._1Ws.setTextWidth((this._0j4 - (this._Wz * 2)));
        this._1Ws.x = this._Wz;
        this._1Ws.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
        var _local1:_5R = new _5R().setParams("Legal.tos1");
        _local1.setPrefix('<p align="center">').setPostfix("</p>");
        this._1Ws.setStringBuilder(_local1);
        this._1Ws.setHTML(true);
        this._1Ws.mouseEnabled = true;
        this._1Ws.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
    }

    protected function initText2():void {
        this._ZS = new _06T().setSize(16).setColor(_1iJ);
        this._ZS.setTextWidth((this._0j4 - (this._Wz * 2)));
        this._ZS.x = this._Wz;
        this._ZS.setMultiLine(true).setWordWrap(true).setAutoSize(TextFieldAutoSize.CENTER);
        var _local1 = (('<font color="#7777EE"><a href="' + Parameters._FJ) + '" target="_blank">');
        var _local2 = (('<font color="#7777EE"><a href="' + Parameters._0WZ) + '" target="_blank">');
        var _local3:_5R = new _5R().setParams("Legal.tos2", {
            tou: _local1,
            _tou: "</a></font>",
            policy: _local2,
            _policy: "</a></font>"
        });
        this._ZS.setStringBuilder(_local3);
        this._ZS.setHTML(true);
        this._ZS.mouseEnabled = true;
        this._ZS.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
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

    private function _0Uv():void {
        this._0Cf();
        this.initText();
        this.initText2();
        this._0pb(this._1Ws);
        this._0pb(this._ZS);
    }

    private function _0pb(_arg1:_06T):void {
        this.box_.addChild(_arg1);
        this._xZ.push(_arg1.textChanged);
    }

    private function _0Cf():void {
        this._Fh = new _1jP(16, _TG._0ig);
        this._Fh.addEventListener(MouseEvent.CLICK, this._ng);
    }

    private function onComplete():void {
        this.draw();
        this._1wV();
    }

    private function _1wV():void {
        this.box_.x = ((this._1G0 + (WebMain._0b2.stageWidth / 2)) - (this.box_.width / 2));
        this.box_.y = ((this._15z + (WebMain._0b2.stageHeight / 2)) - (this.getBoxHeight() / 2));
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
        var _local1:int = (this.box_.height + this._0i4);
        this.box_.addChild(this._Fh);
        this._Fh.y = _local1;
        this._Fh.x = ((this._0j4 / 2) - (this._Fh.width / 2));
    }

    private function _0y5():void {
        this._1Ws.y = this._ja;
        this._ZS.y = ((this._1Ws.y + this._1Ws.height) + 15);
    }

    private function _0xz():void {
        if (((this._Fh) && (this.box_.contains(this._Fh)))) {
            this.box_.removeChild(this._Fh);
        }
        ;
    }

    protected function _ng(_arg1:MouseEvent):void {
        var _local2:_0yo = _8w._1Sz().getInstance(_0yo);
        var _local3:Account = _8w._1Sz().getInstance(Account);
        var _local4:Object = _local3._1iT();
        _local2.sendRequest("account/acceptTOS", _local4);
        this._Fh.removeEventListener(MouseEvent.CLICK, this._ng);
        var _local5:_0ay = _8w._1Sz().getInstance(_0ay);
        _local5.dispatch();
    }


}
}//package _Vb

