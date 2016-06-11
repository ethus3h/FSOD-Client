// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._0Ht

package com.company.assembleegameclient.map {
import com.company.util._1WM;

import flash.display.GradientType;
import flash.display.GraphicsGradientFill;
import flash.display.GraphicsPath;
import flash.display.IGraphicsData;
import flash.display.Shape;

public class _0Ht extends Shape {

    private const s:Number = (600 / Math.sin((Math.PI / 4)));
    private const _0FW:GraphicsGradientFill = new GraphicsGradientFill(GradientType.RADIAL, [0xFFFFFF, 0xFFFFFF, 0xFFFFFF], [0, 0, 0.92], [0, 155, 0xFF], _1WM._AP(s, s, 0, ((600 - s) / 2), ((600 - s) / 2)));
    private const _0Ty:GraphicsPath = _1WM._OC(0, 0, 600, 600);
    private const _1QX:Vector.<IGraphicsData> = new <IGraphicsData>[_0FW, _0Ty, _1WM.END_FILL];

    public function _0Ht() {
        graphics.drawGraphicsData(this._1QX);
        visible = false;
    }

}
}//package com.company.assembleegameclient.map

