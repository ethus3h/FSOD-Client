// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0SX

package _0Sj {
import com.company.util._1WM;

import flash.display.GraphicsPath;
import flash.display.GraphicsPathWinding;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.geom.ColorTransform;

public class _0SX extends Sprite {

    private const _kb:Vector.<IGraphicsData> = new <IGraphicsData>[_0OW, _MM, _1WM.END_FILL];

    public function _0SX() {
        this._0OW = new GraphicsSolidFill(0xFFFFFF, 1);
        this._MM = new GraphicsPath(new Vector.<int>(), new Vector.<Number>(), GraphicsPathWinding.NON_ZERO);
        super();
        this.setColor(0x666666);
    }
    private var _0OW:GraphicsSolidFill;
    private var _MM:GraphicsPath;

    public function setColor(_arg1:uint):void {
        graphics.clear();
        _1WM._0Kr(this._MM);
        this._0OW.color = _arg1;
        this._1R5();
        _1WM.drawRect(26, 11.5, 24, 19, this._MM);
        graphics.drawGraphicsData(this._kb);
    }

    public function _NQ(_arg1:Boolean):void {
        var _local2:ColorTransform = transform.colorTransform;
        _local2.color = ((_arg1) ? 16777103 : 0x545454);
        transform.colorTransform = _local2;
    }

    private function _1R5():void {
        this._MM.moveTo(0, 20);
        this._MM.lineTo(26, 0);
        this._MM.lineTo(26, 40);
        this._MM.lineTo(0, 20);
        graphics.drawGraphicsData(this._kb);
    }


}
}//package _0Sj

