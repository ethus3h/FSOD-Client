// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._mH

package com.company.assembleegameclient.ui {
import _0Mr._5R;

import flash.events.MouseEvent;

public class _mH extends _1E {

    public function _mH(_arg1:int) {
        super(_arg1);
    }

    public function _1Nq(_arg1:String):void {
        text_.setStringBuilder(new _5R().setParams(_arg1));
    }

    public function setEnabled(_arg1:Boolean):void {
        if (_arg1 == mouseEnabled) {
            return;
        }
        ;
        mouseEnabled = _arg1;
        graphicsData_[0] = ((_arg1) ? _137 : _1Af);
        this.draw();
    }

    protected function initText():void {
        _FA();
        this.draw();
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }

    private function draw():void {
        graphics.clear();
        graphics.drawGraphicsData(graphicsData_);
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        _137.color = 16768133;
        this.draw();
    }

    private function onRollOut(_arg1:MouseEvent):void {
        _137.color = 0xFFFFFF;
        this.draw();
    }


}
}//package com.company.assembleegameclient.ui

