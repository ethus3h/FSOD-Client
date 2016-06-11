// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1pu

package _0t {
import _Z0.ToolTip;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class _1pu extends Sprite {

    public static const WIDTH:int = 50;
    public static const HEIGHT:int = 50;

    protected static var toolTip_:ToolTip = null;

    public function _1pu(_arg1:int) {
        this.type_ = _arg1;
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var type_:int;
    protected var selected_:Boolean = false;
    protected var _cL:Boolean = false;

    public function setSelected(_arg1:Boolean):void {
        this.selected_ = _arg1;
        this.draw();
    }

    protected function _1jT(_arg1:ToolTip):void {
        this._WJ();
        toolTip_ = _arg1;
        if (toolTip_ != null) {
            stage.addChild(toolTip_);
        }
        ;
    }

    protected function _WJ():void {
        if (toolTip_ != null) {
            if (toolTip_.parent != null) {
                toolTip_.parent.removeChild(toolTip_);
            }
            ;
            toolTip_ = null;
        }
        ;
    }

    protected function getToolTip():ToolTip {
        return (null);
    }

    private function draw():void {
        graphics.clear();
        var _local1:uint = 0x363636;
        if (this.selected_) {
            graphics.lineStyle(1, 0xFFFFFF);
            _local1 = 0x7F7F7F;
        }
        ;
        graphics.beginFill(((this._cL) ? 0x565656 : 0x363636), 1);
        graphics.drawRect(2, 2, (WIDTH - 4), (HEIGHT - 4));
        if (this.selected_) {
            graphics.lineStyle();
        }
        ;
        graphics.endFill();
    }

    private function onAddedToStage(_arg1:Event):void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        removeEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }

    private function onMouseOver(_arg1:Event):void {
        this._cL = true;
        this.draw();
        this._1jT(this.getToolTip());
    }

    private function onRollOut(_arg1:Event):void {
        this._cL = false;
        this.draw();
        this._WJ();
    }


}
}//package _0t-

