// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._0f4

package _n {
import _1Sm._sy;

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

public class _0f4 extends Sprite {

    public const _Vf:_sy = new _sy(Boolean);
    private const WIDTH:int = 28;
    private const HEIGHT:int = 28;

    public function _0f4() {
        addChild((this._1bg = this._1H()));
        addChild((this.selected = this._SP()));
        this.setSelected(false);
    }
    private var _1bg:Shape;
    private var selected:Shape;

    public function setSelected(_arg1:Boolean):void {
        this._1bg.visible = !(_arg1);
        this.selected.visible = _arg1;
        this._Vf.dispatch(_arg1);
    }

    private function _1H():Shape {
        var _local1:Shape = new Shape();
        this._C7(_local1.graphics);
        return (_local1);
    }

    private function _SP():Shape {
        var _local1:Shape = new Shape();
        this._C7(_local1.graphics);
        this._0D3(_local1.graphics);
        return (_local1);
    }

    private function _C7(_arg1:Graphics):void {
        var _local2:GraphicsSolidFill = new GraphicsSolidFill(0, 0.01);
        var _local3:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
        var _local4:GraphicsStroke = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, _local3);
        var _local5:GraphicsPath = new GraphicsPath();
        _1WM._0lo(0, 0, this.WIDTH, this.HEIGHT, 4, _1WM._1ZO, _local5);
        var _local6:Vector.<IGraphicsData> = new <IGraphicsData>[_local4, _local2, _local5, _1WM.END_FILL, _1WM._0c2];
        _arg1.drawGraphicsData(_local6);
    }

    private function _0D3(_arg1:Graphics):void {
        var _local2:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
        var _local3:GraphicsPath = new GraphicsPath();
        _1WM._0lo(4, 4, (this.WIDTH - 8), (this.HEIGHT - 8), 2, _1WM._1ZO, _local3);
        var _local4:Vector.<IGraphicsData> = new <IGraphicsData>[_local2, _local3, _1WM.END_FILL];
        _arg1.drawGraphicsData(_local4);
    }


}
}//package _n-

