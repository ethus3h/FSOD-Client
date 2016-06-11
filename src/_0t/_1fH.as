// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1fH

package _0t {
import com.company.assembleegameclient.map._0Y2;
import com.company.assembleegameclient.map._0d7;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.ui._V2;
import com.company.util._1WM;

import flash.display.CapsStyle;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;
import flash.geom.Rectangle;

public class _1fH extends Sprite {

    public static const WIDTH:int = 134;
    public static const HEIGHT:int = 120;
    private static const _cQ:String = ".in { margin-left:10px; text-indent: -10px; }";

    private var graphicsData_:Vector.<IGraphicsData>;

    public function _1fH(_arg1:_19w) {
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(1, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this._0t6 = new GraphicsSolidFill(0x363636, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        super();
        this._12i = _arg1;
        this._QO();
        this._vN = new _V2(12, 0xFFFFFF, false, (WIDTH - 10), 0);
        this._vN.filters = [new DropShadowFilter(0, 0, 0)];
        this._vN.y = 4;
        this._vN.x = 4;
        addChild(this._vN);
        this._4O = new _V2(12, 0xFFFFFF, false, (WIDTH - 10), 0);
        this._4O.wordWrap = true;
        this._4O.filters = [new DropShadowFilter(0, 0, 0)];
        this._4O.x = 4;
        this._4O.y = 36;
        addChild(this._4O);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var _12i:_19w;
    private var _vN:_V2;
    private var _4O:_V2;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var _0t6:GraphicsSolidFill;
    private var path_:GraphicsPath;

    private function _QO():void {
        _1WM._0Kr(this.path_);
        _1WM._0lo(0, 0, WIDTH, HEIGHT, 4, [1, 1, 1, 1], this.path_);
        graphics.drawGraphicsData(this.graphicsData_);
    }

    private function onAddedToStage(_arg1:Event):void {
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local2:Rectangle = this._12i._d2();
        this._vN.text = ((("Position: " + _local2.x) + ", ") + _local2.y);
        if ((((_local2.width > 1)) || ((_local2.height > 1)))) {
            this._vN.text = (this._vN.text + ((("\nRect: " + _local2.width) + ", ") + _local2.height));
        }
        ;
        this._vN._fm();
        var _local3:_Kr = this._12i._1s0(_local2.x, _local2.y);
        var _local4:Vector.<int> = (((_local3 == null)) ? _0J9._K4 : _local3._W);
        var _local5:String = (((_local4[_0J9._0Xy] == -1)) ? "None" : _0d7._4C(_local4[_0J9._0Xy]));
        var _local6:String = (((_local4[_0J9._46] == -1)) ? "None" : ObjectLibrary._4C(_local4[_0J9._46]));
        var _local7:String = (((_local4[_0J9._ik] == -1)) ? "None" : _0Y2._4C(_local4[_0J9._ik]));
        this._4O.htmlText = (((((((("<span class='in'>" + "Ground: ") + _local5) + "\nObject: ") + _local6) + (((((_local3 == null)) || ((_local3._1KD == null)))) ? "" : ((" (" + _local3._1KD) + ")"))) + "\nRegion: ") + _local7) + "</span>");
        this._4O._fm();
    }


}
}//package _0t-

