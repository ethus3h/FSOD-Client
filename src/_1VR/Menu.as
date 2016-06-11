// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1VR.Menu

package _1VR {
import _07g.*;

import com.company.util._1WM;
import com.company.util._Tn;

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
import flash.filters.DropShadowFilter;
import flash.geom.Rectangle;

public class Menu extends Sprite implements _0Yv {

    private var graphicsData_:Vector.<IGraphicsData>;

    public function Menu(_arg1:uint, _arg2:uint) {
        this._0t6 = new GraphicsSolidFill(0, 1);
        this.outlineFill_ = new GraphicsSolidFill(0, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        super();
        this.background_ = _arg1;
        this._cI = _arg2;
        this._u8 = 40;
        filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16)];
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    protected var _u8:int;
    private var _0t6:GraphicsSolidFill;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var path_:GraphicsPath;
    private var background_:uint;
    private var _cI:uint;

    public function remove():void {
        if (parent != null) {
            parent.removeChild(this);
        }
        ;
    }

    protected function _iL(_arg1:_W6):void {
        _arg1.x = 8;
        _arg1.y = this._u8;
        addChild(_arg1);
        this._u8 = (this._u8 + 28);
    }

    protected function draw():void {
        this._0t6.color = this.background_;
        this.outlineFill_.color = this._cI;
        graphics.clear();
        _1WM._0Kr(this.path_);
        _1WM._0lo(-6, -6, Math.max(154, (width + 12)), (height + 12), 4, [1, 1, 1, 1], this.path_);
        graphics.drawGraphicsData(this.graphicsData_);
    }

    private function position():void {
        if (stage == null) {
            return;
        }
        ;
        if (stage.mouseX < (stage.stageWidth / 2)) {
            x = (stage.mouseX + 12);
        } else {
            x = ((stage.mouseX - width) - 1);
        }
        ;
        if (x < 12) {
            x = 12;
        }
        ;
        if (stage.mouseY < (stage.stageHeight / 3)) {
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

    protected function onAddedToStage(_arg1:Event):void {
        this.draw();
        this.position();
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }

    protected function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        removeEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }

    protected function onEnterFrame(_arg1:Event):void {
        if (stage == null) {
            return;
        }
        ;
        var _local2:Rectangle = getRect(stage);
        var _local3:Number = _Tn._0O3(_local2, stage.mouseX, stage.mouseY);
        if (_local3 > 40) {
            this.remove();
        }
        ;
    }

    protected function onRollOut(_arg1:Event):void {
        this.remove();
    }


}
}//package _1VR

