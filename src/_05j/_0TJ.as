// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._0TJ

package _05j {
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import _md._0AH;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;

public class _0TJ extends Sprite {

    public static const _Bo:String = "lofiInterfaceBig";
    public static const _1TO:int = 21;

    public function _0TJ() {
        this._1rJ();
        this._0Mv();
    }

    public function setup(_arg1:_0AH):void {
        x = 0;
        y = (_arg1._5m.height - _arg1._1M4);
    }

    private function _1rJ():_06T {
        var _local2:_06T;
        var _local1:_5R = new _5R().setParams(_TG._0h1);
        _local2 = new _06T();
        _local2.setStringBuilder(_local1);
        _local2.x = 29;
        addChild(_local2);
        return (_local2);
    }

    private function _0Mv():Bitmap {
        var _local2:Bitmap;
        var _local1:BitmapData = AssetLibrary._Rb(_Bo, _1TO);
        _local1 = TextureRedrawer.redraw(_local1, 20, true, 0, false);
        _local2 = new Bitmap(_local1);
        _local2.x = -5;
        _local2.y = -10;
        addChild(_local2);
        return (_local2);
    }


}
}//package _05j

