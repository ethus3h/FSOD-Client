// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yE._1F7

package _0yE {
import _0CT._8w;

import _0Mr._1M;

import _0y9._JP;

import _1qi._1K8;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.geom.Matrix;

public class _1F7 extends _J6 {

    private static const _2h:Matrix = new Matrix();

    public function _1F7(_arg1:int, _arg2:_1K8, _arg3:Boolean) {
        super(_arg1, _arg2, _arg3);
    }
    public var hotKey:int;
    private var _yG:Bitmap;

    override public function setItemSprite(_arg1:_0Ej):void {
        super.setItemSprite(_arg1);
        _arg1.setDim(false);
    }

    override public function setItem(_arg1:int):Boolean {
        var _local2:Boolean = super.setItem(_arg1);
        if (_local2) {
            this._yG.visible = (_Vc.itemId <= 0);
        }
        ;
        return (_local2);
    }

    override protected function beginDragCallback():void {
        this._yG.visible = true;
    }

    override protected function endDragCallback():void {
        this._yG.visible = (_Vc.itemId <= 0);
    }

    public function _1pI(_arg1:int):void {
        this.hotKey = _arg1;
        this._By();
    }

    public function _By():void {
        var _local1:_JP = _8w._1Sz().getInstance(_JP);
        var _local2:BitmapData = _local1.make(new _1M(String(this.hotKey)), 26, 0x363636, true, _2h, false);
        this._yG = new Bitmap(_local2);
        this._yG.x = ((WIDTH / 2) - (this._yG.width / 2));
        this._yG.y = ((HEIGHT / 2) - 14);
        addChildAt(this._yG, 0);
    }


}
}//package _0yE

