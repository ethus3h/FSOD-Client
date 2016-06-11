// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._gc

package _0Sj {
import _0ld.CaretakerQueryDialog;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;

public class _gc extends Sprite {

    private const _0r5:_0tt = _0Mv();
    private const _0oY:_1vK = _0pT();
    private const icon:Bitmap = _1F1();

    public function _1tk(_arg1:String):void {
        this._0oY._1Nq(_arg1);
        removeChild(this._0r5);
        addChild(this._0oY);
    }

    public function _1YD():void {
        removeChild(this._0oY);
        addChild(this._0r5);
    }

    public function _0nD(_arg1:BitmapData):void {
        this.icon.bitmapData = _arg1;
    }

    private function _0Mv():_0tt {
        var _local1:_0tt;
        _local1 = new _0tt(CaretakerQueryDialog._20);
        _local1.x = 60;
        addChild(_local1);
        return (_local1);
    }

    private function _0pT():_1vK {
        var _local1:_1vK;
        _local1 = new _1vK();
        _local1.y = 60;
        return (_local1);
    }

    private function _1F1():Bitmap {
        var _local1:Bitmap = new Bitmap(this._8j());
        _local1.x = -16;
        _local1.y = -32;
        addChild(_local1);
        return (_local1);
    }

    private function _8j():BitmapData {
        return (new _0Iy(42, 42, true, 0xFF00FF00));
    }


}
}//package _0Sj

