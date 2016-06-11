// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cZ._1Tv

package _0cZ {
import _0Mr._1M;

import _0y9._06T;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.Sprite;

public class _1Tv extends Sprite {

    public function _1Tv() {
        this.text = new _06T().setSize(18).setColor(0xFFFFFF);
        super();
    }
    var _RA:DisplayObject;
    var text:_06T;

    public function init():void {
        var _local1:BitmapData = AssetLibrary._Rb("lofiObj3", 225);
        _local1 = TextureRedrawer.redraw(_local1, 40, true, 0);
        this._RA = new Bitmap(_local1);
        addChild(this._RA);
        addChild(this.text);
        this._RA.x = (-(this._RA.width) - 8);
        this._RA.y = ((-(this._RA.height) / 2) - 6);
        this.text.textChanged.add(this.onTextChanged);
    }

    public function _0mw(_arg1:int):void {
        this.text.setStringBuilder(new _1M(String(_arg1)));
    }

    private function onTextChanged():void {
        this.text.x = ((this._RA.x - this.text.width) + 4);
        this.text.y = ((-(this.text.height) / 2) - 6);
    }


}
}//package _0cZ

