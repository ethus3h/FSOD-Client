// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Ng._0Bp

package _0Ng {
import _6u._TG;

import com.company.assembleegameclient.ui._1Db;
import com.company.assembleegameclient.ui._1jP;
import com.company.ui._V2;
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
import flash.events.Event;
import flash.events.MouseEvent;

class _0Bp extends Sprite {

    public static const _0BZ:int = 400;
    public static const _rq:int = 400;

    private var graphicsData_:Vector.<IGraphicsData>;

    public function _0Bp(_arg1:String) {
        this._0t6 = new GraphicsSolidFill(0x333333, 1);
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        super();
        this.text_ = _arg1;
        this._1qT = new Sprite();
        var _local2:Shape = new Shape();
        var _local3:Graphics = _local2.graphics;
        _local3.beginFill(0);
        _local3.drawRect(0, 0, _0BZ, _rq);
        _local3.endFill();
        this._1qT.addChild(_local2);
        this._1qT.mask = _local2;
        addChild(this._1qT);
        this._Xf = new _V2(16, 0xB3B3B3, true, _0BZ, _rq);
        this._Xf.border = false;
        this._Xf.mouseEnabled = true;
        this._Xf.multiline = true;
        this._Xf.wordWrap = true;
        this._Xf.text = _arg1;
        this._Xf._fm();
        this._Xf.addEventListener(Event.CHANGE, this._1PL);
        this._Xf.addEventListener(Event.SCROLL, this._1PL);
        this._1qT.addChild(this._Xf);
        this._mI = new _1Db(16, (_rq - 4));
        this._mI.x = (_0BZ + 6);
        this._mI.y = 0;
        this._mI._cf(400, this._Xf.height);
        this._mI.addEventListener(Event.CHANGE, this._bI);
        addChild(this._mI);
        this.w_ = (_0BZ + 26);
        this._0j = new _1jP(14, _TG._Vy, 120);
        this._0j.x = 4;
        this._0j.y = (_rq + 4);
        this._0j.addEventListener(MouseEvent.CLICK, this.onCancel);
        addChild(this._0j);
        this._16K = new _1jP(14, _TG._0HM, 120);
        this._16K.x = (this.w_ - 124);
        this._16K.y = (_rq + 4);
        this._16K.addEventListener(MouseEvent.CLICK, this._in);
        this._16K.textChanged.add(this._1pA);
        addChild(this._16K);
    }
    public var w_:int;
    public var h_:int;
    private var text_:String;
    private var _Xf:_V2;
    private var _1qT:Sprite;
    private var _mI:_1Db;
    private var _0j:_1jP;
    private var _16K:_1jP;
    private var _0t6:GraphicsSolidFill;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var path_:GraphicsPath;

    public function _4D():String {
        return (this._Xf.text);
    }

    private function _1pA():void {
        this.h_ = ((_rq + this._16K.height) + 8);
        x = ((800 / 2) - (this.w_ / 2));
        y = ((600 / 2) - (this.h_ / 2));
        graphics.clear();
        _1WM._0Kr(this.path_);
        _1WM._0lo(-6, -6, (this.w_ + 12), (this.h_ + 12), 4, [1, 1, 1, 1], this.path_);
        graphics.drawGraphicsData(this.graphicsData_);
        this._mI._cf(_rq, this._Xf.textHeight, false);
    }

    private function _bI(_arg1:Event):void {
        this._Xf.scrollV = (1 + (this._mI._0LY() * this._Xf.maxScrollV));
    }

    private function onCancel(_arg1:Event):void {
        dispatchEvent(new Event(Event.CANCEL));
    }

    private function _in(_arg1:Event):void {
        dispatchEvent(new Event(Event.COMPLETE));
    }

    private function _1PL(_arg1:Event):void {
        if (this._mI == null) {
            return;
        }
        ;
        this._mI._cf(_rq, this._Xf.textHeight, false);
        if (this._Xf.maxScrollV == 1) {
            this._mI._Vn(0);
        } else {
            this._mI._Vn(((this._Xf.scrollV - 1) / (this._Xf.maxScrollV - 1)));
        }
        ;
    }


}
}//package _0Ng

