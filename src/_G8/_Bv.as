// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_G8._Bv

package _G8 {
import _0Mr._1vN;

import _0y9._06T;

import com.company.util._1WM;

import flash.display.CapsStyle;
import flash.display.Graphics;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _Bv extends Sprite {

    public static const WIDTH:int = 80;
    public static const HEIGHT:int = 32;

    private var graphicsData_:Vector.<IGraphicsData>;

    public function _Bv(_arg1:Vector.<_1vN>, _arg2:Array, _arg3:Object, _arg4:Number = 0xFFFFFF) {
        this.internalFill_ = new GraphicsSolidFill(0x333333, 1);
        this._0cl = new GraphicsSolidFill(0xB3B3B3, 1);
        this._1gF = new GraphicsSolidFill(0x444444, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this._1jo = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this._1gF);
        this.graphicsData_ = new <IGraphicsData>[internalFill_, _1jo, path_, _1WM._0c2, _1WM.END_FILL];
        super();
        this.color = _arg4;
        this._hA = _arg1;
        this._ms = _arg2;
        this.labelText_ = new _06T().setSize(16).setColor(_arg4);
        this.labelText_.x = (WIDTH / 2);
        this.labelText_.y = (HEIGHT / 2);
        this.labelText_.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        this.labelText_.setBold(true);
        this.labelText_.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        addChild(this.labelText_);
        this.setValue(_arg3);
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        addEventListener(MouseEvent.CLICK, this._1Lb);
    }
    public var _hA:Vector.<_1vN>;
    public var _ms:Array;
    public var _0Js:int = -1;
    public var labelText_:_06T;
    private var over_:Boolean = false;
    private var color:Number = 0xFFFFFF;
    private var internalFill_:GraphicsSolidFill;
    private var _0cl:GraphicsSolidFill;
    private var _1gF:GraphicsSolidFill;
    private var path_:GraphicsPath;
    private var _1jo:GraphicsStroke;

    public function setValue(_arg1, _arg2:Boolean = true):void {
        var _local3:int;
        while (_local3 < this._ms.length) {
            if (_arg1 == this._ms[_local3]) {
                if (_local3 == this._0Js) {
                    return;
                }
                ;
                this._0Js = _local3;
                break;
            }
            ;
            _local3++;
        }
        ;
        this.setSelected(this._0Js);
        if (_arg2) {
            dispatchEvent(new Event(Event.CHANGE));
        }
        ;
    }

    public function value() {
        return (this._ms[this._0Js]);
    }

    private function _QO():void {
        _1WM._0Kr(this.path_);
        _1WM._0lo(0, 0, WIDTH, HEIGHT, 4, [1, 1, 1, 1], this.path_);
        this._1jo.fill = ((this.over_) ? this._0cl : this._1gF);
        graphics.drawGraphicsData(this.graphicsData_);
        var _local1:Graphics = graphics;
        _local1.clear();
        _local1.drawGraphicsData(this.graphicsData_);
    }

    private function setSelected(_arg1:int):void {
        this._0Js = _arg1;
        if ((((this._0Js < 0)) || ((this._0Js >= this._hA.length)))) {
            this._0Js = 0;
        }
        ;
        this._1Nq(this._hA[this._0Js]);
    }

    private function _1Nq(_arg1:_1vN):void {
        this.labelText_.setStringBuilder(_arg1);
        this._QO();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this.over_ = true;
        this._QO();
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this.over_ = false;
        this._QO();
    }

    private function _1Lb(_arg1:MouseEvent):void {
        this.setSelected(((this._0Js + 1) % this._ms.length));
        dispatchEvent(new Event(Event.CHANGE));
    }


}
}//package _G8

