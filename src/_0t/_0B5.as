// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._0B5

package _0t {
import com.company.assembleegameclient.ui._1Db;
import com.company.util._1WM;

import flash.display.CapsStyle;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

class _0B5 extends Sprite {

    public static const WIDTH:int = 136;
    public static const HEIGHT:int = 480;
    private static const _k0:int = 20;

    private var graphicsData_:Vector.<IGraphicsData>;

    public function _0B5(_arg1:int) {
        this._11T = new Vector.<_1pu>();
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this._0t6 = new GraphicsSolidFill(0x363636, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        super();
        this._0lf = _arg1;
        this._QO();
        this._0x6 = new Sprite();
        this._0x6.x = 4;
        this._0x6.y = 6;
        addChild(this._0x6);
        this._mI = new _1Db(_k0, (HEIGHT - 8), 0.1, this);
        this._mI.x = ((WIDTH - _k0) - 6);
        this._mI.y = 4;
        this._mI.addEventListener(Event.CHANGE, this._bI);
        var _local2:Shape = new Shape();
        _local2.graphics.beginFill(0);
        _local2.graphics.drawRect(0, 2, ((_0B5.WIDTH - _k0) - 4), (_0B5.HEIGHT - 4));
        addChild(_local2);
        this._0x6.mask = _local2;
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var _0lf:int;
    public var selected_:_1pu;
    private var _0x6:Sprite;
    private var _mI:_1Db;
    private var mask_:Shape;
    private var _11T:Vector.<_1pu>;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var _0t6:GraphicsSolidFill;
    private var path_:GraphicsPath;

    public function _15R():int {
        return (this.selected_.type_);
    }

    public function _1Yy(_arg1:int):void {
        var _local2:_1pu;
        for each (_local2 in this._11T) {
            if (_local2.type_ == _arg1) {
                this.setSelected(_local2);
                return;
            }
            ;
        }
        ;
    }

    protected function _SO(_arg1:_1pu):void {
        var _local2:int;
        _local2 = this._11T.length;
        _arg1.x = ((((_local2 % 2)) == 0) ? 0 : (2 + _1pu.WIDTH));
        _arg1.y = ((int((_local2 / 2)) * _1pu.HEIGHT) + 6);
        this._0x6.addChild(_arg1);
        if (_local2 == 0) {
            this.setSelected(_arg1);
        }
        ;
        _arg1.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        this._11T.push(_arg1);
    }

    protected function setSelected(_arg1:_1pu):void {
        if (this.selected_ != null) {
            this.selected_.setSelected(false);
        }
        ;
        this.selected_ = _arg1;
        this.selected_.setSelected(true);
    }

    private function _QO():void {
        _1WM._0Kr(this.path_);
        _1WM._0lo(0, 0, WIDTH, HEIGHT, 4, [1, 1, 1, 1], this.path_);
        graphics.drawGraphicsData(this.graphicsData_);
    }

    protected function onMouseDown(_arg1:MouseEvent):void {
        var _local2:_1pu = (_arg1.currentTarget as _1pu);
        this.setSelected(_local2);
    }

    protected function _bI(_arg1:Event):void {
        this._0x6.y = (6 - (this._mI._0LY() * ((this._0x6.height + 12) - HEIGHT)));
    }

    protected function onAddedToStage(_arg1:Event):void {
        this._mI._cf(HEIGHT, this._0x6.height);
        addChild(this._mI);
    }

    protected function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
    }


}
}//package _0t-

