// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0.ToolTip

package _Z0 {
import _07g._2v;

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
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class ToolTip extends Sprite {

    private var graphicsData_:Vector.<IGraphicsData>;
    protected const _qH:_2v = new _2v();

    public function ToolTip(_arg1:uint, _arg2:Number, _arg3:uint, _arg4:Number, _arg5:Boolean = true) {
        this._0t6 = new GraphicsSolidFill(0, 1);
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        super();
        this.background_ = _arg1;
        this._sg = _arg2;
        this._cI = _arg3;
        this._1BD = _arg4;
        this._J5 = _arg5;
        mouseEnabled = false;
        mouseChildren = false;
        filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16)];
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._qH.complete.add(this._1Vu);
    }
    public var _1Rd:int;
    public var _0Gk:int;
    private var background_:uint;
    private var _sg:Number;
    private var _cI:uint;
    private var _1BD:Number;
    private var _J5:Boolean;
    private var _T4:Boolean = false;
    private var _0G:Boolean = false;
    private var _0T:DisplayObject;
    private var _0t6:GraphicsSolidFill;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var path_:GraphicsPath;

    public function _0jH(_arg1:DisplayObject):void {
        if (_arg1) {
            this._0T = _arg1;
            this._0T.addEventListener(MouseEvent.ROLL_OUT, this._1DP);
        }
        ;
    }

    public function _0Qe():void {
        if (this._0T) {
            this._0T.removeEventListener(MouseEvent.ROLL_OUT, this._1DP);
            if (parent) {
                parent.removeChild(this);
            }
            ;
            this._0T = null;
        }
        ;
    }

    public function _1df():void {
        this._T4 = true;
        this._0G = false;
    }

    public function _op():void {
        this._0G = true;
        this._T4 = false;
    }

    public function draw():void {
        this._0t6.color = this.background_;
        this._0t6.alpha = this._sg;
        this.outlineFill_.color = this._cI;
        this.outlineFill_.alpha = this._1BD;
        graphics.clear();
        this._1Rd = width;
        this._0Gk = height;
        _1WM._0Kr(this.path_);
        _1WM._0lo(-6, -6, (this._1Rd + 12), (this._0Gk + 12), 4, [1, 1, 1, 1], this.path_);
        graphics.drawGraphicsData(this.graphicsData_);
    }

    protected function alignUI():void {
    }

    protected function position():void {
        if (stage == null) {
            return;
        }
        ;
        if (((((!(this._T4)) && ((stage.mouseX < (stage.stageWidth / 2))))) || (this._0G))) {
            x = (stage.mouseX + 12);
        } else {
            x = ((stage.mouseX - width) - 1);
        }
        ;
        if (x < 12) {
            x = 12;
        }
        ;
        if (((((!(this._T4)) && ((stage.mouseY < (stage.stageHeight / 3))))) || (this._0G))) {
            y = (stage.mouseY + 12);
        } else {
            y = ((stage.mouseY - height) - 1);
        }
        ;
        if (y < 12) {
            y = 12;
        }
        ;
    }

    private function _1Vu():void {
        this.alignUI();
        this.draw();
        this.position();
    }

    private function _1DP(_arg1:MouseEvent):void {
        this._0Qe();
    }

    private function onAddedToStage(_arg1:Event):void {
        if (this._qH.isEmpty()) {
            this.draw();
        }
        ;
        if (this._J5) {
            this.position();
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        ;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        if (this._J5) {
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        ;
    }

    private function onEnterFrame(_arg1:Event):void {
        this.position();
    }


}
}//package _Z0

