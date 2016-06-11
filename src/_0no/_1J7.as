// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._1J7

package _0no {
import _0AI._Uj;

import _0BD._0QN;

import _0CT._8w;

import _0Mr._1M;

import _0y9._06T;

import _1TG._0Yn;

import __Nj._M4;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.Rectangle;

public class _1J7 extends Sprite {

    public static const _Bo:String = "lofiObj2";
    public static const _WV:int = 345;

    public static var _0Nw:Boolean = false;

    public function _1J7() {
        mouseChildren = false;
        this.icon = TextureRedrawer.redraw(AssetLibrary._Rb(_Bo, _WV), 40, true, 0);
        this._0tD = new Bitmap(this.icon);
        this._0tD.x = -5;
        this._0tD.y = -8;
        this.background = _0QN._1x3();
        this.background2 = _0QN._S(31, _0QN._0PY);
        this.text = new _06T().setSize(16).setColor(0xFFFFFF);
        this.text.setStringBuilder(new _1M("Update!"));
        this.text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        this.text.setVerticalAlign(_06T.BOTTOM);
        this._0Ci()
        var _local1:Rectangle = this._0tD.getBounds(this);
        var _local2:int = 10;
        this.text.x = (_local1.right - _local2);
        this.text.y = (_local1.bottom - _local2);
        addEventListener(MouseEvent.CLICK, this._1Lb);
    }
    private var _0tD:Bitmap;
    private var background:Sprite;
    private var background2:Sprite;
    private var icon:BitmapData;
    private var text:_06T;

    public function _0Ci():void {
        if (_Uj._zl()) {
            _0Nw = true;
            addChild(this.background);
            addChild(this.text);
        } else {
            _0Nw = false;
            addChild(this.background2);
        }
        ;
        addChild(this._0tD);
    }

    public function _1Lb(_arg1:MouseEvent):void {
        var _local2:_M4 = _8w._1Sz().getInstance(_M4);
        _local2.dispatch(new _Uj());
        _0Yn.play("button_click");
    }


}
}//package _0no

