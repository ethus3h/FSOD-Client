// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._GR

package _n {
import _07g._2v;

import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import com.company.assembleegameclient.util.Currency;
import com.company.util.MoreColorUtil;
import com.company.util._1WM;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.filters.ColorMatrixFilter;

import kabam.rotmg.assets.services._Zm;

public class _GR extends Sprite {

    private static const BEVEL:int = 4;
    private static const _1U6:int = 2;
    public static const _S6:BitmapData = _Zm.makeCoin();
    public static const fame:BitmapData = _Zm._00Y();
    public static const _0C:BitmapData = _Zm._0AA();
    private static const _1Dn:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Bu);

    private const _0q7:GraphicsSolidFill = new GraphicsSolidFill(0xFFFFFF, 1);
    private const _1r:GraphicsSolidFill = new GraphicsSolidFill(0x7F7F7F, 1);
    private const _0gA:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
    private const graphicsData:Vector.<IGraphicsData> = new <IGraphicsData>[_0q7, _0gA, _1WM.END_FILL];
    private const _qH:_2v = new _2v();

    public function _GR(_arg1:Number, _arg2:Number) {
        this._13n = new _1M("");
        this._13X = new _5R();
        super();
        this._1nh = "   ";
        this._67 = _arg1;
        this._026 = _arg2;
        this.price = 1;
        this.currency = Currency._1mE;
        this.text = new _06T().setSize(_arg1).setColor(0x363636).setBold(true);
        this._qH.push(this.text.textChanged);
        var _local3:_1vN = (((this._1nh) != "") ? this._13X.setParams(this._1nh, {cost: this.price.toString()}) : this._13n.setString(this.price.toString()));
        this.text.setStringBuilder(_local3);
        this._qH.complete.add(this._jn);
        addChild(this.text);
    }
    public var _1nh:String;
    public var text:_06T;
    public var icon:Bitmap;
    public var price:int = -1;
    public var currency:int = -1;
    public var _1pD:int = -1;
    private var _13n:_1M;
    private var _13X:_5R;
    private var _67:Number = 100;
    private var _026:Number = 100;

    public function setEnabled(_arg1:Boolean):void {
        if (_arg1 != mouseEnabled) {
            mouseEnabled = _arg1;
            filters = ((_arg1) ? [] : [_1Dn]);
            this.draw();
        }
        ;
    }

    private function _jn():void {
        this._18();
        this.draw();
    }

    private function _18():void {
        _1WM._0Kr(this._0gA);
        _1WM._0lo(0, 0, this._1Ng(), this.getHeight(), BEVEL, [1, 1, 1, 1], this._0gA);
    }

    private function draw():void {
        this.graphicsData[0] = ((mouseEnabled) ? this._0q7 : this._1r);
        graphics.clear();
        graphics.drawGraphicsData(this.graphicsData);
    }

    private function _1Ng():int {
        return (this._67);
    }

    private function getHeight():int {
        return (this._026);
    }


}
}//package _n-

