// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04j._1zO

package _04j {
import _0Mr._5R;

import _DO.GTween;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;
import com.company.util.MoreColorUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.ColorMatrixFilter;
import flash.filters.GlowFilter;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;
import flash.ui.Mouse;

public class _1zO extends Sprite {

    public static const _0jR:int = 1;
    public static const _0mj:int = 2;
    public static const _1uA:int = 3;
    private static const _0De:int = 100;
    public static const _xd:int = 1;
    public static const _0jk:int = 2;
    private static const _16y:Number = 5;

    private const _0aa:Number = 3;
    private const _bR:Number = 80;
    private const _0Bz:int = 3500;

    public function _1zO() {
        var _local1:BitmapData;
        var _local2:uint;
        this._0UE = new TextField();
        super();
        this._1CF = new Vector.<Bitmap>();
        _local2 = 0;
        while (_local2 < 3) {
            _local1 = AssetLibrary._Rb("lofiCharBig", (this._bR + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 3) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 16) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 7) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 32) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 7) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 48) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 5) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 64) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 8) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 80) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0xFFFFFF, true);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local1 = AssetLibrary._Rb("lofiCharBig", 0x0100);
        _local1 = TextureRedrawer.redraw(_local1, this.size_, true, 0, true);
        this._12C = new Bitmap(_local1);
        this._12C.alpha = 0;
        addChild(this._12C);
        this._0ya = new Bitmap(_local1);
        this._0ya.filters = [new ColorMatrixFilter(MoreColorUtil._1Bu)];
        this._0ya.alpha = 1;
        this.active = false;
        addChild(this._0ya);
        this._1Q3 = new GlowFilter(49151, 1, 45, 45, 1.5);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        addEventListener(MouseEvent.ROLL_OVER, this.onMouseOver, false, 0, true);
        addEventListener(MouseEvent.ROLL_OUT, this._1EC, false, 0, true);
        this.setInactive();
    }
    public var _12C:Bitmap;
    public var _0ya:Bitmap;
    public var active:Boolean = false;
    public var _er:int;
    public var size_:int = 100;
    private var item:_1SO;
    private var _0dl:Number;
    private var _0zn:Number;
    private var _1CF:Vector.<Bitmap>;
    private var _pd:Number = 50;
    private var _qk:Boolean = false;
    private var _1AA:Boolean = false;
    private var _14K:Number = 0;
    private var _1u:Number = 0;
    private var _0tJ:Number = 0;
    private var _i0:Number;
    private var _0UE:TextField;
    private var _0sP:Number = 0;
    private var _0yU:Number = 0;
    private var _3s:Boolean = false;
    private var _Wp:int = 0;
    private var _xE:int = -1;
    private var _1Bl:Boolean = false;
    private var _1Q3:GlowFilter;

    public function setXPos(_arg1:Number):void {
        this.x = (_arg1 - (this.width / 2));
    }

    public function setYPos(_arg1:Number):void {
        this.y = (_arg1 - (this.height / 2));
    }

    public function getCenterX():Number {
        return ((this.x + (this.width / 2)));
    }

    public function getCenterY():Number {
        return ((this.y + (this.height / 2)));
    }

    public function returnCenterX():Number {
        return ((this._0dl + (this.width / 2)));
    }

    public function returnCenterY():Number {
        return ((this._0zn + (this.width / 2)));
    }

    public function setGlowState(_arg1:int):void {
        this._xE = _arg1;
        if (this._xE == _0jk) {
            this._1Q3.alpha = 1;
        }
        ;
    }

    public function _1bN(_arg1:int):void {
        if ((((this.parent == null)) || ((this.parent.parent == null)))) {
            return;
        }
        ;
        this.removeItemReveal();
        this.item = new _1SO(_arg1);
        this.item._39.alpha = 1;
        parent.addChild(this.item);
        this.item.setXPos(this.getCenterX());
        this.item.setYPos(this.getCenterY());
        _1Wz._1ET(this.item, {
            scaleX: 1.25,
            scaleY: 1.25
        }, {
            scaleX: 1,
            scaleY: 1
        });
        this.setInactive();
    }

    public function removeItemReveal():void {
        if (((!((this.item == null))) && (this.item.parent))) {
            parent.removeChild(this.item);
        }
        ;
        if (((!((this._0UE == null))) && (this._0UE.parent))) {
            parent.removeChild(this._0UE);
        }
        ;
    }

    public function doItemShow(_arg1:int):void {
        if ((((this.parent == null)) || ((this.parent.parent == null)))) {
            return;
        }
        ;
        this.removeItemReveal();
        var _local2:TextFormat = new TextFormat();
        _local2.size = 18;
        _local2.font = "Myriad Pro";
        _local2.bold = false;
        _local2.align = TextFormatAlign.LEFT;
        _local2.leftMargin = 0;
        _local2.indent = 0;
        _local2.leading = 0;
        this._0UE.text = _5R._n7(ObjectLibrary._1w3[_arg1]);
        this._0UE.textColor = 0xFFFFFF;
        this._0UE.autoSize = TextFieldAutoSize.CENTER;
        this._0UE.selectable = false;
        this._0UE.defaultTextFormat = _local2;
        this._0UE.setTextFormat(_local2);
        this.item = new _1SO(_arg1, _0De);
        this.item._39.alpha = 1;
        parent.addChild(this.item);
        this.item.alpha = 0;
        this.item.setXPos(this.getCenterX());
        this.item.setYPos(this.getCenterY());
        this._0UE.x = (this.item.getCenterX() - (this._0UE.width / 2));
        this._0UE.y = (this.item.y + 80);
        parent.addChild(this._0UE);
        var _local3:GTween = new GTween(this.item, 1, {alpha: 1});
        _1Wz._1ET(this.item, {
            scaleX: 1.25,
            scaleY: 1.25
        }, {
            scaleX: 1,
            scaleY: 1
        });
        this._1HE();
    }

    public function _0ba(_arg1:Number, _arg2:Number):void {
        this._0dl = this.x;
        this._0zn = this.y;
        var _local3:Number = this._1zG(_arg1);
        var _local4:Number = this._R(_arg2);
        var _local5:GTween = new GTween(this, 0.5, {
            x: _local3,
            y: _local4
        });
    }

    public function saveReturnPotion():void {
        this._0dl = this.x;
        this._0zn = this.y;
        this._0sP = this.returnCenterX();
        this._0yU = this.returnCenterY();
    }

    public function doItemReturn():void {
        var _local1:GTween = new GTween(this, 0.12, {
            x: this._0dl,
            y: this._0zn
        });
        this.filters = [this._1Q3];
        this.setGlowState(_0jk);
    }

    public function _1HE():void {
        if (!this.active) {
            this._12C.alpha = 0;
            this._0ya.alpha = 1;
            this.setAnimation(0, 3);
            this.setAnimationDuration(100);
        }
        ;
        this.active = true;
    }

    public function setActive2():void {
    }

    public function setInactive():void {
        if (this.active) {
            if (this._12C != null) {
                this._12C.alpha = 1;
            }
            ;
            if (this._0ya != null) {
                this._0ya.alpha = 0;
            }
            ;
        }
        ;
        this.active = false;
    }

    public function update(_arg1:int, _arg2:int):void {
        var _local3:int;
        var _local4:Number;
        if (this.active) {
            if ((((this._12C.alpha < 1)) && ((this._0ya.alpha > 0)))) {
                this._0ya.alpha = (this._0ya.alpha - 0.03);
                this._12C.alpha = (this._12C.alpha + 0.03);
            } else {
                this._0ya.alpha = 0;
                this._12C.alpha = 1;
            }
            ;
        } else {
            if ((((this._12C.alpha > 0)) && ((this._0ya.alpha < 1)))) {
                this._0ya.alpha = (this._0ya.alpha + 0.03);
                this._12C.alpha = (this._12C.alpha - 0.03);
            } else {
                this._0ya.alpha = 1;
                this._12C.alpha = 0;
            }
            ;
        }
        ;
        if (this._xE == _xd) {
            this._1Q3.alpha = (this._1Q3.alpha - 0.07);
            this.filters = [this._1Q3];
            if (this._1Q3.alpha <= 0.03) {
                this.filters = [];
            }
            ;
        } else {
            if (this._xE == _0jk) {
                if ((((this._1Q3.alpha >= 0.95)) && (this._1Bl))) {
                    this._1Bl = false;
                } else {
                    if ((((this._1Q3.alpha <= 0.5)) && (!(this._1Bl)))) {
                        this._1Bl = true;
                    }
                    ;
                }
                ;
                _local3 = ((this._1Bl) ? 1 : -1);
                this._1Q3.alpha = (this._1Q3.alpha + (0.01 * _local3));
                this.filters = [this._1Q3];
            }
            ;
        }
        ;
        if (this._qk) {
            _local4 = this._1Lz(_1Wz._1jd, _1Wz._Wa);
            if (_local4 <= this._0Bz) {
                if (this._er != _0mj) {
                    this._0Kw();
                }
                ;
                this._pd = Math.max((_local4 / 8), 70);
                this._pd = Math.min(this._pd, 170);
            } else {
                if (this._er != _0jR) {
                    this.setAnimationPulse();
                }
                ;
            }
            ;
        }
        ;
        if (this._3s) {
            this.setXPos((this._0sP + ((Math.random() * 6) - 3)));
            this.setYPos((this._0yU + ((Math.random() * 6) - 3)));
            this._Wp++;
            if (this._Wp == _16y) {
                this._3s = false;
                this._Wp = 0;
            }
            ;
        }
        ;
        this._Qc(_arg1, _arg2);
    }

    public function setShake(_arg1:Boolean):void {
        this._3s = _arg1;
    }

    public function _Qc(_arg1:int, _arg2:int):void {
        if (this.active) {
            removeChild(this._12C);
            this._0tJ = (this._0tJ + _arg2);
            if (this._0tJ > this._pd) {
                this._1u = ((this._1u - +1) % this._i0);
                this._0tJ = 0;
            } else {
                if (this._1u > this._i0) {
                    this._1u = 0;
                }
                ;
            }
            ;
            this._12C = this._1CF[(this._14K + this._1u)];
            if (this._er == _1uA) {
                if (this.scaleX > 0.01) {
                    this.scaleX = (this.scaleX - (_arg2 * 0.002));
                    this.scaleY = (this.scaleY - (_arg2 * 0.002));
                    this.setXPos((this._0sP + (Math.random() * 5)));
                    this.setYPos((this._0yU + (Math.random() * 5)));
                } else {
                    this.scaleX = 0.01;
                    this.scaleY = 0.01;
                }
                ;
            }
            ;
            addChild(this._12C);
        }
        ;
    }

    public function setAnimationDuration(_arg1:Number):void {
        this._pd = _arg1;
    }

    public function setMouseTracking(_arg1:Boolean):void {
        this._qk = _arg1;
    }

    public function reset():void {
        this.active = false;
        this._pd = 50;
        this._qk = false;
    }

    public function setAnimation(_arg1:Number, _arg2:Number):void {
        this._14K = _arg1;
        this._1u = 0;
        this._0tJ = 0;
        this._i0 = _arg2;
        this._er = -1;
    }

    public function setAnimationPulse():void {
        this.setAnimation(0, 3);
        this._pd = 250;
        this._er = _0jR;
    }

    public function _0Kw():void {
        this.setAnimation(20, 13);
        this._er = _0mj;
    }

    public function setAnimationClicked():void {
        this.setAnimation(3, 3);
        this._pd = 20;
        this._er = _1uA;
        this.setMouseTracking(false);
    }

    public function resetVars():void {
        this.active = false;
        this._1u = 0;
        this._er = -1;
        this._pd = 50;
        this._qk = false;
        this._0tJ = 0;
        this._14K = 0;
        this.scaleX = 1;
        this.scaleY = 1;
    }

    private function _1zG(_arg1:Number):Number {
        return ((_arg1 - (this.width / 2)));
    }

    private function _R(_arg1:Number):Number {
        return ((_arg1 - (this.height / 2)));
    }

    private function _1Lz(_arg1:Number, _arg2:Number):Number {
        return ((((this.getCenterX() - _arg1) * (this.getCenterX() - _arg1)) + ((this.getCenterY() - _arg2) * (this.getCenterY() - _arg2))));
    }

    public function onMouseOver(_arg1:MouseEvent):void {
        Mouse.cursor = "hand";
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this.removeItemReveal();
        this._12C = null;
        this._0ya = null;
        this.item = null;
        this._1CF = null;
    }

    private function _1EC(_arg1:MouseEvent):void {
        Mouse.cursor = "auto";
    }


}
}//package _04j

