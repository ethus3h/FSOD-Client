// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._yz

package com.company.assembleegameclient.ui {
import com.company.util._1WM;

import flash.display.GraphicsPath;
import flash.display.GraphicsPathWinding;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Shape;

public class _yz extends Shape {

    public function _yz(_arg1:int, _arg2:uint) {
        this._0OW = new GraphicsSolidFill(0xFFFFFF, 1);
        this._MM = new GraphicsPath(new Vector.<int>(), new Vector.<Number>(), GraphicsPathWinding.NON_ZERO);
        super();
        this._1s9(_arg1, _arg2);
    }
    private var _kb:Vector.<IGraphicsData> = new <IGraphicsData>[_0OW, _MM, _1WM.END_FILL];
    private var _0OW:GraphicsSolidFill;
    private var _MM:GraphicsPath;

    public function _1s9(_arg1:int, _arg2:uint):void {
        graphics.clear();
        this._0OW.color = _arg2;
        _1WM._0Kr(this._MM);
        _1WM._DI(0, 0, 4, this._MM);
        _1WM._DI(_arg1, 0, 4, this._MM);
        _1WM.drawRect(0, -1, _arg1, 2, this._MM);
        graphics.drawGraphicsData(this._kb);
    }


}
}//package com.company.assembleegameclient.ui

