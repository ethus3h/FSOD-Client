// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0P7._xf

package _0P7 {
import _1EG._GX;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;

public class _xf extends Sprite {

    private const _0r5:_0Xb = _0Mv();
    private const _0oY:_0hI = _0pT();
    private const icon:Bitmap = _0OZ();

    public function _1tk(_arg1:String):void {
        this._0oY._1Nq(_arg1);
        removeChild(this._0r5);
        addChild(this._0oY);
    }

    public function _1YD():void {
        removeChild(this._0oY);
        addChild(this._0r5);
    }

    public function _0Bt(_arg1:BitmapData):void {
        this.icon.bitmapData = _arg1;
    }

    private function _0Mv():_0Xb {
        var _local1:_0Xb;
        _local1 = new _0Xb(_GX._20);
        _local1.x = 60;
        addChild(_local1);
        return (_local1);
    }

    private function _0pT():_0hI {
        var _local1:_0hI;
        _local1 = new _0hI();
        _local1.y = 60;
        return (_local1);
    }

    private function _0OZ():Bitmap {
        var _local1:Bitmap = new Bitmap(this._8j());
        _local1.x = 0;
        _local1.y = 0;
        addChild(_local1);
        return (_local1);
    }

    private function _8j():BitmapData {
        return (new BitmapData(42, 42, true, 0xFF00FF00));
    }


}
}//package _0P7

