// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_09v._0xK

package _09v {
import _1Sm._sy;

import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;

public class _0xK extends Sprite {

    private const _0yN:ColorTransform = new ColorTransform(0.5, 0.5, 0.5);
    private const _1Qh:ColorTransform = new ColorTransform(1, 1, 1);
    public const _Wu:_sy = new _sy(int);

    public function _0xK() {
        this._Ez = 0;
        this._0tV();
        this._0OX();
        this._17W();
    }
    private var zoomOut:Sprite;
    private var zoomIn:Sprite;
    private var _1r8:int;
    private var _Ez:int;

    public function _1Z2():int {
        return (this._Ez);
    }

    public function _1X3(_arg1:int):int {
        if (this._1r8 == 0) {
            return (this._Ez);
        }
        ;
        if (_arg1 < 0) {
            _arg1 = 0;
        } else {
            if (_arg1 >= (this._1r8 - 1)) {
                _arg1 = (this._1r8 - 1);
            }
            ;
        }
        ;
        this._Ez = _arg1;
        this._17W();
        return (this._Ez);
    }

    public function _1T7(_arg1:int):int {
        this._1r8 = _arg1;
        if (this._Ez >= this._1r8) {
            this._Ez = (this._1r8 - 1);
        }
        ;
        this._17W();
        return (this._1r8);
    }

    private function _0tV():void {
        var _local2:Bitmap;
        var _local1:BitmapData = AssetLibrary._Rb("lofiInterface", 54);
        _local2 = new Bitmap(_local1);
        _local2.scaleX = 2;
        _local2.scaleY = 2;
        this.zoomOut = new Sprite();
        this.zoomOut.x = 0;
        this.zoomOut.y = 4;
        this.zoomOut.addChild(_local2);
        this.zoomOut.addEventListener(MouseEvent.CLICK, this._3W);
        addChild(this.zoomOut);
    }

    private function _0OX():void {
        var _local2:Bitmap;
        var _local1:BitmapData = AssetLibrary._Rb("lofiInterface", 55);
        _local2 = new Bitmap(_local1);
        _local2.scaleX = 2;
        _local2.scaleY = 2;
        this.zoomIn = new Sprite();
        this.zoomIn.x = 0;
        this.zoomIn.y = 14;
        this.zoomIn.addChild(_local2);
        this.zoomIn.addEventListener(MouseEvent.CLICK, this._0G3);
        addChild(this.zoomIn);
    }

    private function _03f():Boolean {
        return ((this._Ez > 0));
    }

    private function _1jI():Boolean {
        return ((this._Ez < (this._1r8 - 1)));
    }

    private function _17W():void {
        this.zoomIn.transform.colorTransform = ((this._1jI()) ? this._1Qh : this._0yN);
        this.zoomOut.transform.colorTransform = ((this._03f()) ? this._1Qh : this._0yN);
    }

    private function _3W(_arg1:MouseEvent):void {
        if (this._03f()) {
            this._Wu.dispatch(--this._Ez);
            this.zoomOut.transform.colorTransform = ((this._03f()) ? this._1Qh : this._0yN);
        }
        ;
    }

    private function _0G3(_arg1:MouseEvent):void {
        if (this._1jI()) {
            this._Wu.dispatch(++this._Ez);
            this.zoomIn.transform.colorTransform = ((this._1jI()) ? this._1Qh : this._0yN);
        }
        ;
    }


}
}//package _09v

