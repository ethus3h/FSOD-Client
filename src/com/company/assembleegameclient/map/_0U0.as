// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._0U0

package com.company.assembleegameclient.map {
import com.company.util._1WM;

import flash.display.GradientType;
import flash.display.GraphicsGradientFill;
import flash.display.GraphicsPath;
import flash.display.IGraphicsData;
import flash.display.Shape;

public class _0U0 extends Shape {

    private const _0FW:GraphicsGradientFill = new GraphicsGradientFill(GradientType.LINEAR, [0, 0], [0, 1], [0, 0xFF], _1WM._AP(10, 600));
    private const _0Ty:GraphicsPath = _1WM._OC(0, 0, 10, 600);
    private const _1QX:Vector.<IGraphicsData> = new <IGraphicsData>[_0FW, _0Ty, _1WM.END_FILL];

    public function _0U0() {
        graphics.drawGraphicsData(this._1QX);
        visible = false;
    }

}
}//package com.company.assembleegameclient.map

