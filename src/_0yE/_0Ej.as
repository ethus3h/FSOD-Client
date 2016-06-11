// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yE._0Ej

package _0yE {
import _0Mr._1M;

import _0y9._JP;

import _gl._0An;

import com.company.assembleegameclient.objects.ObjectLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.filters.ColorMatrixFilter;
import flash.geom.Matrix;

public class _0Ej extends Sprite {

    protected static const _0Ba:Array = [new ColorMatrixFilter([0.4, 0, 0, 0, 0, 0, 0.4, 0, 0, 0, 0, 0, 0.4, 0, 0, 0, 0, 0, 1, 0])];
    private static const _2h:Matrix = new Matrix();
    private static const _0VR:Matrix = function ():Matrix {
        var _local1:* = new Matrix();
        _local1.translate(10, 5);
        return (_local1);
    }();

    public function _0Ej() {
        this._39 = new Bitmap();
        addChild(this._39);
        this.itemId = -1;
    }
    public var itemId:int;
    public var _39:Bitmap;
    private var _0yy:_JP;

    public function setDim(_arg1:Boolean):void {
        filters = ((_arg1) ? _0Ba : null);
    }

    public function setType(_arg1:int):void {
        this.itemId = _arg1;
        this._0PN();
    }

    public function _0PN():void {
        var _local1:BitmapData;
        var _local2:XML;
        var _local3:BitmapData;
        if (this.itemId != _0An._5v) {
            _local1 = ObjectLibrary.getRedrawnTextureFromType(this.itemId, 80, true);
            _local2 = ObjectLibrary._18H[this.itemId];
            if (((((_local2) && (_local2.hasOwnProperty("Doses")))) && (this._0yy))) {
                _local1 = _local1.clone();
                _local3 = this._0yy.make(new _1M(String(_local2.Doses)), 12, 0xFFFFFF, false, _2h, false);
                _local1.draw(_local3, _0VR);
            }
            ;
            this._39.bitmapData = _local1;
            this._39.x = (-(_local1.width) / 2);
            this._39.y = (-(_local1.height) / 2);
            visible = true;
        } else {
            visible = false;
        }
        ;
    }

    public function _Rw(_arg1:_JP):void {
        this._0yy = _arg1;
    }


}
}//package _0yE

