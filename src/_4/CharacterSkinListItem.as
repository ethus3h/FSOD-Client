// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-.CharacterSkinListItem

package _4 {
import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _1kF._0Ko;

import _20I._0Hi;
import _20I._1GP;

import _6u._TG;

import _n._0f4;

import com.company.assembleegameclient.util.Currency;
import com.company.util.MoreColorUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.ColorMatrixFilter;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;

public class CharacterSkinListItem extends Sprite {

    public static const WIDTH:int = 420;
    public static const _1U6:int = 16;
    public static const HEIGHT:int = 60;
    private static const _ql:uint = 0x7B7B7B;
    private static const _0J:uint = 0x5A5A5A;
    private static const _1GI:uint = 0x282828;

    private const _0Nj:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Bu);
    private const background:Shape = _0kH();
    private const _8T:Sprite = _0M5();
    private const _1CT:_06T = _1u4();
    private const _14i:_0f4 = _wE();
    private const _G0:Bitmap = _1bX();
    private const _Pl:_06T = _vx();
    private const _1vT:Sprite = _2D();
    private const _4e:_1bz = _1my();
    public const buy:_sy = new _0q(_1vT, MouseEvent.CLICK);
    public const _NV:_sy = new _sy();
    public const out:_sy = new _sy();
    public const selected:_sy = _14i._Vf;

    public function CharacterSkinListItem() {
        this.state = _0Hi.NULL;
        super();
    }
    private var model:_1GP;
    private var state:_0Hi;
    private var _tg:Boolean = false;
    private var _1H3:Bitmap;
    private var buyButton:_0Ko;
    private var _01:Boolean;

    public function _1ME(_arg1:BitmapData):void {
        this._G0.bitmapData = _arg1;
        this._G0.x = ((this._Pl.x - this._G0.width) - 5);
        this._G0.y = ((HEIGHT / 2) - (this._G0.height * 0.5));
    }

    public function _Ui(_arg1:_0Ko):void {
        this.buyButton = _arg1;
        _arg1._0CF.add(this._0rn);
        ((this.model) && (this._UR()));
        this._1vT.addChild(_arg1);
        _arg1.x = -(_arg1.width);
        _arg1.y = (-(_arg1.height) * 0.5);
        this._1vT.visible = (this.state == _0Hi.PURCHASABLE);
        this._0nQ();
    }

    public function _0J7(_arg1:Bitmap):void {
        ((this._1H3) && (this._8T.removeChild(this._1H3)));
        this._1H3 = _arg1;
        ((this._1H3) && (this._8T.addChild(this._1H3)));
    }

    public function _iF():_1GP {
        return (this.model);
    }

    public function _1h8(_arg1:_1GP):void {
        ((this.model) && (this.model._Vf.remove(this._Qy)));
        this.model = _arg1;
        ((this.model) && (this.model._Vf.add(this._Qy)));
        this._Qy(this.model);
        addEventListener(MouseEvent.MOUSE_OVER, this._2q);
        addEventListener(MouseEvent.MOUSE_OUT, this._1sK);
    }

    public function _1b7():_0Hi {
        return (this.state);
    }

    public function _09b():Boolean {
        return (this._tg);
    }

    public function _1dU(_arg1:Boolean):void {
        this._tg = ((_arg1) && ((this.state == _0Hi.OWNED)));
        this._14i.setSelected(_arg1);
        this._18();
    }

    public function setWidth(_arg1:int):void {
        this._1vT.x = (_arg1 - _1U6);
        this._Pl.x = ((_arg1 - this._Pl.width) - 15);
        this._G0.x = ((this._Pl.x - this._G0.width) - 5);
        this._14i.x = ((_arg1 - this._14i.width) - 15);
        this._0nQ();
        this._QO(this.background.graphics, _arg1);
    }

    function _x():void {
        removeEventListener(MouseEvent.CLICK, this._1Lb);
    }

    private function _0kH():Shape {
        var _local1:Shape = new Shape();
        this._QO(_local1.graphics, WIDTH);
        addChild(_local1);
        return (_local1);
    }

    private function _0M5():Sprite {
        var _local1:Sprite;
        _local1 = new Sprite();
        _local1.x = 8;
        _local1.y = 4;
        addChild(_local1);
        return (_local1);
    }

    private function _1u4():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(18).setColor(0xFFFFFF).setBold(true);
        _local1.x = 75;
        _local1.y = 15;
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        addChild(_local1);
        return (_local1);
    }

    private function _wE():_0f4 {
        var _local1:_0f4;
        _local1 = new _0f4();
        _local1.setSelected(false);
        _local1.x = ((WIDTH - _local1.width) - 15);
        _local1.y = ((HEIGHT / 2) - (_local1.height / 2));
        addChild(_local1);
        return (_local1);
    }

    private function _1bX():Bitmap {
        var _local1:Bitmap = new Bitmap();
        _local1.scaleX = 2;
        _local1.scaleY = 2;
        _local1.visible = false;
        addChild(_local1);
        return (_local1);
    }

    private function _vx():_06T {
        var _local1:_06T = new _06T().setSize(14).setColor(0xFFFFFF);
        _local1.setVerticalAlign(_06T.MIDDLE);
        addChild(_local1);
        return (_local1);
    }

    private function _2D():Sprite {
        var _local1:Sprite = new Sprite();
        _local1.x = (WIDTH - _1U6);
        _local1.y = (HEIGHT * 0.5);
        addChild(_local1);
        return (_local1);
    }

    private function _1my():_1bz {
        var _local1:_1bz;
        _local1 = new _1bz();
        _local1._0Oc.addOnce(this._0nQ);
        _local1.y = -1;
        _local1.visible = false;
        addChild(_local1);
        return (_local1);
    }

    private function _0rn():void {
        this.buyButton.x = -(this.buyButton.width);
    }

    private function _Qy(_arg1:_1GP):void {
        this.state = ((this.model) ? this.model._1b7() : _0Hi.NULL);
        this._Cy();
        this._0my();
        ((this.buyButton) && (this._UR()));
        this._Rq();
        this._0nQ();
        this._1dU(((this.model) && (this.model._09b())));
    }

    private function _Cy():void {
        this._1CT.setStringBuilder(new _5R().setParams(((this.model) ? this.model.name : "")));
    }

    private function _0my():void {
        this._16v();
        this._18();
        this._BN();
        this._1O8();
    }

    private function _0nQ():void {
        this._4e.visible = ((((((this.model) && (this.model.limited))) && (!((this.state == _0Hi.OWNED))))) && (!((this.state == _0Hi.PURCHASING))));
        this._4e.x = ((((((this.state == _0Hi.LOCKED)) || (!(this.buyButton)))) ? (this._G0.x - 5) : ((this._1vT.x + this.buyButton.x) - 15)) - this._4e.width);
    }

    private function _16v():void {
        var _local1 = (this.state == _0Hi.OWNED);
        var _local2 = (this.state == _0Hi.PURCHASABLE);
        var _local3 = (this.state == _0Hi.PURCHASING);
        var _local4 = (this.state == _0Hi.LOCKED);
        this._14i.visible = _local1;
        ((this._1vT) && ((this._1vT.visible = _local2)));
        this._G0.visible = _local4;
        this._Pl.visible = ((_local4) || (_local3));
    }

    private function _BN():void {
        if (this.state == _0Hi.OWNED) {
            this.addEventListeners();
        } else {
            this._x();
        }
        ;
    }

    private function _UR():void {
        var _local1:int = ((this.model) ? this.model.cost : 0);
        this.buyButton.setPrice(_local1, Currency._1mE);
    }

    private function _Rq():void {
        if (((!((this.model == null))) && (!((this.model._1Ux == null))))) {
            this._Pl.setStringBuilder(new _1M(this.model._1Ux));
            this._Pl.setTextWidth(110);
            this._Pl.setWordWrap(true);
            this._Pl.setMultiLine(true);
            this._Pl.setAutoSize(TextFieldAutoSize.LEFT);
            this._Pl.setHorizontalAlign(TextFormatAlign.LEFT);
            this._Pl.setVerticalAlign(TextFieldAutoSize.CENTER);
            this._Pl.y = (HEIGHT / 7);
        } else {
            this._Pl.setStringBuilder((((this.state) == _0Hi.PURCHASING) ? new _5R().setParams(_TG._02Z) : this._2Q()));
            this._Pl.y = (HEIGHT / 2);
        }
        ;
        this._Pl.x = ((WIDTH - this._Pl.width) - 15);
        this._G0.x = ((this._Pl.x - this._G0.width) - 5);
    }

    private function _2Q():_1vN {
        var _local1:_5R = new _5R();
        var _local2:String = ((this.model) ? this.model.unlockLevel.toString() : "");
        return (_local1.setParams(_TG._07Q, {level: _local2}));
    }

    private function addEventListeners():void {
        addEventListener(MouseEvent.CLICK, this._1Lb);
    }

    private function _18():void {
        var _local1:ColorTransform = this.background.transform.colorTransform;
        _local1.color = this.getColor();
        this.background.transform.colorTransform = _local1;
    }

    private function getColor():uint {
        if (this.state._0XI()) {
            return (_1GI);
        }
        ;
        if (((this._tg) || (this._01))) {
            return (_ql);
        }
        ;
        return (_0J);
    }

    private function _1O8():void {
        filters = (((this.state) == _0Hi.PURCHASING) ? [this._0Nj] : []);
    }

    private function _QO(_arg1:Graphics, _arg2:int):void {
        _arg1.clear();
        _arg1.beginFill(_0J);
        _arg1.drawRect(0, 0, _arg2, HEIGHT);
        _arg1.endFill();
    }

    private function _1Lb(_arg1:MouseEvent):void {
        this._1dU(true);
    }

    private function _2q(_arg1:MouseEvent):void {
        this._01 = true;
        this._18();
        this._NV.dispatch();
    }

    private function _1sK(_arg1:MouseEvent):void {
        this._01 = false;
        this._18();
        this.out.dispatch();
    }


}
}//package _4-

