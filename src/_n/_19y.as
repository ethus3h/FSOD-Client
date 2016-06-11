// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._19y

package _n {
import _07g._2v;

import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _1kF._0Ko;

import com.company.assembleegameclient.util.Currency;
import com.company.util.MoreColorUtil;
import com.company.util._1WM;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.CapsStyle;
import flash.display.Graphics;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.events.MouseEvent;
import flash.filters.ColorMatrixFilter;

import kabam.rotmg.assets.services._Zm;

public class _19y extends _0Ko {

    private static const BEVEL:int = 4;
    private static const _1U6:int = 2;
    public static const _S6:BitmapData = _Zm.makeCoin();
    public static const fortune:BitmapData = _Zm._009();
    public static const fame:BitmapData = _Zm._00Y();
    public static const _0C:BitmapData = _Zm._0AA();
    private static const _1Dn:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Bu);

    private const _0q7:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
    private const _1r:GraphicsSolidFill = new GraphicsSolidFill(0x7F7F7F, 1);
    private const _0gA:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
    private const graphicsData:Vector.<IGraphicsData> = new <IGraphicsData>[_0q7, _0gA, _1WM.END_FILL];
    private const _qH:_2v = new _2v();

    public function _19y(_arg1:String, _arg2:int, _arg3:int, _arg4:int, _arg5:Boolean = false) {
        this._13n = new _1M("");
        this._13X = new _5R();
        super();
        this._1nh = _arg1;
        this.text = new _06T().setSize(_arg2).setColor(0x363636).setBold(true);
        this._qH.push(this.text.textChanged);
        var _local6:_1vN = (((_arg1) != "") ? this._13X.setParams(_arg1, {cost: _arg3.toString()}) : this._13n.setString(_arg3.toString()));
        this.text.setStringBuilder(_local6);
        this._qH.complete.add(this._jn);
        this._qH.complete.addOnce(this._0Er);
        addChild(this.text);
        this.icon = new Bitmap();
        addChild(this.icon);
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        this.setPrice(_arg3, _arg4);
        this._0IW = _arg5;
    }
    public var _1nh:String;
    public var text:_06T;
    public var icon:Bitmap;
    public var price:int = -1;
    public var currency:int = -1;
    public var _1pD:int = -1;
    private var _13n:_1M;
    private var _13X:_5R;
    private var _0IW:Boolean = false;
    private var _YB:int = 0x545454;
    private var _1XJ:int = -1;
    private var _Lp:int = -1;
    private var _0uX:int = 4;

    override public function setPrice(_arg1:int, _arg2:int):void {
        var _local3:_1vN;
        if (((!((this.price == _arg1))) || (!((this.currency == _arg2))))) {
            this.price = _arg1;
            this.currency = _arg2;
            _local3 = (((this._1nh) != "") ? this._13X.setParams(this._1nh, {cost: _arg1.toString()}) : this._13n.setString(_arg1.toString()));
            this.text.setStringBuilder(_local3);
            this._jn();
        }
        ;
    }

    override public function setEnabled(_arg1:Boolean):void {
        if (_arg1 != mouseEnabled) {
            mouseEnabled = _arg1;
            filters = ((_arg1) ? [] : [_1Dn]);
            this.draw();
        }
        ;
    }

    override public function setWidth(_arg1:int):void {
        this._1pD = _arg1;
        this._jn();
    }

    public function _1sp():int {
        return (this.price);
    }

    public function _1Nq(_arg1:String):void {
        this.text.setStringBuilder(new _1M(_arg1));
        this._jn();
    }

    public function draw():void {
        this.graphicsData[0] = ((mouseEnabled) ? this._0q7 : this._1r);
        graphics.clear();
        graphics.drawGraphicsData(this.graphicsData);
        if (this._0IW) {
            this._C7(graphics);
        }
        ;
    }

    public function _1UV():void {
        this._Lp = this.getHeight();
        this._1XJ = this._1Ng();
    }

    public function _1eE():void {
        this._Lp = -1;
        this._1XJ = -1;
    }

    public function _1S0(_arg1:Number):void {
        this._1XJ = (this._1Ng() * _arg1);
        this._jn();
    }

    public function _0Xr(_arg1:Number):void {
        this._0uX = (this._0uX * _arg1);
        this._jn();
    }

    public function _0cB(_arg1:int):void {
        this._YB = _arg1;
    }

    private function _jn():void {
        this._iH();
        this._0wC();
        this._18();
        this.draw();
    }

    private function _0Er():void {
        this._jn();
        _0CF.dispatch();
    }

    private function _0wC():void {
        switch (this.currency) {
            case Currency._1mE:
                this.icon.bitmapData = _S6;
                break;
            case Currency.FAME:
                this.icon.bitmapData = fame;
                break;
            case Currency._vZ:
                this.icon.bitmapData = _0C;
                break;
            case Currency._0mN:
                this.icon.bitmapData = fortune;
                break;
            default:
                this.icon.bitmapData = null;
        }
        ;
        this._1Z7();
    }

    private function _18():void {
        _1WM._0Kr(this._0gA);
        _1WM._0lo(0, 0, this._1Ng(), this.getHeight(), BEVEL, [1, 1, 1, 1], this._0gA);
    }

    private function _iH():void {
        this.text.x = ((((this._1Ng() - this.icon.width) - this.text.width) - _1U6) * 0.5);
        this.text.y = this._0uX;
    }

    private function _1Z7():void {
        this.icon.x = ((this.text.x + this.text.width) + _1U6);
        this.icon.y = (((this.getHeight() - this.icon.height) - 1) * 0.5);
    }

    private function _1Ng():int {
        return ((((this._1XJ) != -1) ? this._1XJ : Math.max(this._1pD, ((this.text.width + this.icon.width) + (3 * _1U6)))));
    }

    private function getHeight():int {
        return ((((this._Lp) != -1) ? this._Lp : (this.text.height + (this._0uX * 2))));
    }

    private function _C7(_arg1:Graphics):void {
        var _local2:GraphicsSolidFill = new GraphicsSolidFill(0, 0.01);
        var _local3:GraphicsSolidFill = new GraphicsSolidFill(this._YB, 0.6);
        var _local4:GraphicsStroke = new GraphicsStroke(4, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, _local3);
        var _local5:GraphicsPath = new GraphicsPath();
        _1WM._0lo(0, 0, this._1Ng(), this.getHeight(), 4, _1WM._1ZO, _local5);
        var _local6:Vector.<IGraphicsData> = new <IGraphicsData>[_local4, _local2, _local5, _1WM.END_FILL, _1WM._0c2];
        _arg1.drawGraphicsData(_local6);
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._0q7.color = 16768133;
        this.draw();
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this._0q7.color = 0xFFFFFF;
        this.draw();
    }


}
}//package _n-

