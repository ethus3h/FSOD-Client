// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no.GiftStatusDisplay

package _0no {
import _0BD._0QN;

import _0Mr._5R;

import _0y9._06T;

import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import _6u._TG;

import _Z0._0BS;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.geom.Rectangle;

public class GiftStatusDisplay extends Sprite implements _1q5 {

    public static const _Bo:String = "lofiObj2";
    public static const _WV:int = 127;
    public static const _05A:Number = 110;
    public static const _0PY:Number = 25;
    public static const _iv:Number = 0.4;
    public static const _3n:Number = 0;

    public function GiftStatusDisplay() {
        this._8c = new _1Ud();
        this.tooltip = new _0BS(0x363636, 0x9B9B9B, null, _TG._1YR, 200);
        super();
        mouseChildren = false;
        this._0EF = TextureRedrawer.redraw(AssetLibrary._Rb(_Bo, _WV), 40, true, 0);
        this.background = _0QN._1x3();
        this._0tD = new Bitmap(this._0EF);
        this._0tD.x = -5;
        this._0tD.y = -8;
        this.text = new _06T().setSize(16).setColor(0xFFFFFF);
        this.text.setStringBuilder(new _5R().setParams(_TG._072));
        this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        this.text.setVerticalAlign(_06T.BOTTOM);
        this._8c._0qm(this);
        this._8c.tooltip = this.tooltip;
        this._0Ci();
        var _local1:Rectangle = this._0tD.getBounds(this);
        var _local2:int = 10;
        this.text.x = (_local1.right - _local2);
        this.text.y = (_local1.bottom - _local2);
    }
    public var _8c:_1Ud;
    private var _0tD:Bitmap;
    private var background:Sprite;
    private var _0EF:BitmapData;
    private var text:_06T;
    private var tooltip:_0BS;

    public function _1Tg(_arg1:_1PV):void {
        this._8c._1Tg(_arg1);
    }

    public function _1ml():_1PV {
        return (this._8c._1ml());
    }

    public function _Md(_arg1:_GV):void {
        this._8c._Md(_arg1);
    }

    public function _0ec():_GV {
        return (this._8c._0ec());
    }

    public function _0Ci():void {
        addChild(this.background);
        addChild(this.text);
        addChild(this._0tD);
    }

    public function _1pF():void {
        if (((this.background) && ((this.background.parent == this)))) {
            removeChild(this.background);
        }
        ;
        if (((this.text) && ((this.text.parent == this)))) {
            removeChild(this.text);
        }
        ;
        if (((this._0tD) && ((this._0tD.parent == this)))) {
            removeChild(this._0tD);
        }
        ;
    }


}
}//package _0no

