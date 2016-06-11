// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Ng._1vx

package _0Ng {
import _6u._TG;

import com.company.assembleegameclient.ui._1Db;
import com.company.assembleegameclient.ui._1jP;
import com.company.ui._V2;
import com.company.util._0YA;
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

class _1vx extends Sprite {

    public static const _0BZ:int = 400;
    public static const _rq:int = 400;
    private static const _0xB:RegExp = /((https?|ftp):((\/\/)|(\\\\))+[\w\d:#@%\/;$()~_?\+-=\\\.&]*)/g;

    private var graphicsData_:Vector.<IGraphicsData>;

    public function _1vx(_arg1:String, _arg2:Boolean) {
        this._0t6 = new GraphicsSolidFill(0x333333, 1);
        this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1jo = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_1jo, _0t6, path_, _1WM.END_FILL, _1WM._0c2];
        super();
        this.text_ = _arg1;
        this._1qT = new Sprite();
        var _local3:Shape = new Shape();
        var _local4:Graphics = _local3.graphics;
        _local4.beginFill(0);
        _local4.drawRect(0, 0, _0BZ, _rq);
        _local4.endFill();
        this._1qT.addChild(_local3);
        this._1qT.mask = _local3;
        addChild(this._1qT);
        var _local5:String = _0YA.escape(_arg1);
        _local5 = _local5.replace(_0xB, ('<font color="#7777EE"><a href="$1" target="_blank">' + "$1</a></font>"));
        this._Xf = new _V2(16, 0xB3B3B3, false, _0BZ, 0);
        this._Xf.border = false;
        this._Xf.mouseEnabled = true;
        this._Xf.multiline = true;
        this._Xf.wordWrap = true;
        this._Xf.htmlText = _local5;
        this._Xf._fm();
        this._1qT.addChild(this._Xf);
        var _local6 = (this._Xf.height > 400);
        if (_local6) {
            this._mI = new _1Db(16, (_rq - 4));
            this._mI.x = (_0BZ + 6);
            this._mI.y = 0;
            this._mI._cf(400, this._Xf.height);
            this._mI.addEventListener(Event.CHANGE, this._bI);
            addChild(this._mI);
        }
        ;
        this.w_ = (_0BZ + ((_local6) ? 26 : 0));
        this._y9 = new _1jP(14, _TG._0in, 120);
        this._y9.x = 4;
        this._y9.y = (_rq + 4);
        this._y9.addEventListener(MouseEvent.CLICK, this._0VU);
        addChild(this._y9);
        this._y9.visible = _arg2;
        this._LA = new _1jP(14, _TG._1j1, 120);
        this._LA.x = (this.w_ - 124);
        this._LA.y = (_rq + 4);
        this._LA.addEventListener(MouseEvent.CLICK, this._0mM);
        this._LA.textChanged.addOnce(this._1pA);
        addChild(this._LA);
    }
    public var w_:int;
    public var h_:int;
    private var text_:String;
    private var _Xf:_V2;
    private var _1qT:Sprite;
    private var _mI:_1Db;
    private var _y9:_1jP;
    private var _LA:_1jP;
    private var _0t6:GraphicsSolidFill;
    private var outlineFill_:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var path_:GraphicsPath;

    private function _1pA():void {
        this.h_ = ((_rq + this._LA.height) + 8);
        x = ((800 / 2) - (this.w_ / 2));
        y = ((600 / 2) - (this.h_ / 2));
        graphics.clear();
        _1WM._0Kr(this.path_);
        _1WM._0lo(-6, -6, (this.w_ + 12), (this.h_ + 12), 4, [1, 1, 1, 1], this.path_);
        graphics.drawGraphicsData(this.graphicsData_);
    }

    private function _bI(_arg1:Event):void {
        this._Xf.y = (-(this._mI._0LY()) * (this._Xf.height - 400));
    }

    private function _0VU(_arg1:Event):void {
        dispatchEvent(new Event(Event.CHANGE));
    }

    private function _0mM(_arg1:Event):void {
        dispatchEvent(new Event(Event.COMPLETE));
    }


}
}//package _0Ng

