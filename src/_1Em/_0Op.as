// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Em._0Op

package _1Em {
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util._1WM;

import flash.display.CapsStyle;
import flash.display.GraphicsPath;
import flash.display.GraphicsPathCommand;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.geom.Point;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

public class _0Op extends Sprite implements _wx {

    private var graphicsData_:Vector.<IGraphicsData>;

    public function _0Op(_arg1:GameObject, _arg2:String, _arg3:uint, _arg4:Number, _arg5:uint, _arg6:Number, _arg7:uint, _arg8:int, _arg9:Boolean, _arg10:Boolean) {
        this._1Sy = new Point();
        this._0t6 = new GraphicsSolidFill(0, 1);
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        super();
        mouseEnabled = false;
        mouseChildren = false;
        this.go_ = _arg1;
        this.lifetime_ = (_arg8 * 1000);
        this._00M = _arg10;
        this.text_ = new TextField();
        this.text_.autoSize = TextFieldAutoSize.LEFT;
        this.text_.embedFonts = true;
        this.text_.width = 150;
        var _local11:TextFormat = new TextFormat();
        _local11.font = "Myriad Pro";
        _local11.size = 14;
        _local11.bold = _arg9;
        _local11.color = _arg7;
        this.text_.defaultTextFormat = _local11;
        this.text_.selectable = false;
        this.text_.mouseEnabled = false;
        this.text_.multiline = true;
        this.text_.wordWrap = true;
        this.text_.text = _arg2;
        addChild(this.text_);
        var _local12:int = (this.text_.textWidth + 4);
        this._1Sy.x = (-(_local12) / 2);
        this._0t6.color = _arg3;
        this._0t6.alpha = _arg4;
        this.outlineFill_.color = _arg5;
        this.outlineFill_.alpha = _arg6;
        graphics.clear();
        _1WM._0Kr(this.path_);
        _1WM._0lo(-6, -6, (_local12 + 12), (height + 12), 4, [1, 1, 1, 1], this.path_);
        this.path_.commands.splice(6, 0, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO);
        var _local13:int = height;
        this.path_.data.splice(12, 0, ((_local12 / 2) + 8), (_local13 + 6), (_local12 / 2), (_local13 + 18), ((_local12 / 2) - 8), (_local13 + 6));
        graphics.drawGraphicsData(this.graphicsData_);
        filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16)];
        this._1Sy.y = ((-(height) - ((this.go_.texture_.height * (_arg1.size_ / 100)) * 5)) - 2);
        visible = false;
    }
    public var go_:GameObject;
    public var lifetime_:int;
    public var _00M:Boolean;
    public var _1Sy:Point;
    public var text_:TextField;
    private var _0t6:GraphicsSolidFill;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var path_:GraphicsPath;
    private var startTime_:int = 0;

    public function draw(_arg1:_18q, _arg2:int):Boolean {
        if (this.startTime_ == 0) {
            this.startTime_ = _arg2;
        }
        ;
        var _local3:int = (_arg2 - this.startTime_);
        if ((((_local3 > this.lifetime_)) || (((!((this.go_ == null))) && ((this.go_.map_ == null)))))) {
            return (false);
        }
        ;
        if ((((this.go_ == null)) || (!(this.go_._07t)))) {
            visible = false;
            return (true);
        }
        ;
        if (((this._00M) && (!(Parameters.data_.textBubbles)))) {
            visible = false;
            return (true);
        }
        ;
        visible = true;
        x = int((this.go_._1Pg[0] + this._1Sy.x));
        y = int((this.go_._1Pg[1] + this._1Sy.y));
        return (true);
    }

    public function _1fD():GameObject {
        return (this.go_);
    }

    public function dispose():void {
        parent.removeChild(this);
    }


}
}//package _1Em

