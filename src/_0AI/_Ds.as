// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0AI._Ds

package _0AI {
import _0CT._8w;

import _0Mr._1M;

import _0cA._0bz;

import _0y9._06T;
import _0y9._8P;

import _1Sm._sy;

import _7T._0CZ;

import flash.display.Loader;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.net.URLRequest;
import flash.text.TextFieldAutoSize;

public class _Ds extends Sprite {

    private static const _RU:uint = 30;
    private static const LARGE:String = "LARGE";
    private static const SMALL:String = "SMALL";

    static var _0yj:Class = _LJ;
    static var _1B8:Class = _eC;

    public function _Ds(_arg1:Number, _arg2:Number) {
        this._1p5 = new _sy(_0CZ);
        super();
        this._sk = _8w._1Sz();
        this.setSize(_arg1, _arg2);
        this._0pC();
        this._178();
        this._7K();
    }
    public var _1p5:_sy;
    private var _0H5:Sprite;
    private var _1fr:Shape;
    private var _rg:Shape;
    private var textField:_06T;
    private var size:String;
    private var w:Number;
    private var h:Number;
    private var _0ap:_0CZ;
    private var _loader:Loader;
    private var _05g:uint = 18;
    private var _sk:_0bz;

    public function init(_arg1:_0CZ):void {
        this._0ap = _arg1;
        this._0UW();
        addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        buttonMode = true;
    }

    public function load():void {
        this._loader = new Loader();
        this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onComplete);
        this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
        this._loader.load(new URLRequest(this._0ap._1qg));
    }

    private function setSize(_arg1:Number, _arg2:Number):void {
        this.w = _arg1;
        this.h = _arg2;
        if ((((_arg1 == 306)) && ((_arg2 == 194)))) {
            this.size = LARGE;
        } else {
            if ((((_arg1 == 151)) && ((_arg2 == 189)))) {
                this.size = SMALL;
            }
            ;
        }
        ;
    }

    private function _01V():void {
        addChild((this._1fr = new Shape()));
        addChild((this._rg = new Shape()));
    }

    private function _0pC():void {
        this._0H5 = new Sprite();
        addChild(this._0H5);
    }

    private function _178():void {
        this._1fr = new Shape();
        this._1fr.graphics.beginFill(0xFF00FF);
        this._1fr.graphics.drawRect(0, 0, this.w, this.h);
        this._0H5.mask = this._1fr;
        addChild(this._1fr);
    }

    private function _7K():void {
        this._rg = new Shape();
        this._rg.graphics.beginFill(0, 0.8);
        this._rg.graphics.drawRect(0, (this.h - _RU), this.w, _RU);
        addChild(this._rg);
    }

    private function _0UW():void {
        this.textField = this._sk.getInstance(_8P).setSize(this._05g).setColor(0xFFFFFF);
        addChild(this.textField);
        this.textField.setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        this.textField.setStringBuilder(new _1M(this._0ap._Qn));
        this._Z();
        this.textField.x = (this.w / 2);
        this.textField.y = (this.h - (25 / 2));
        this.textField.filters = [new DropShadowFilter(0, 0, 0)];
    }

    private function _Z():void {
        if (this.textField.width > (this.w - 10)) {
            this._05g = (this._05g - 2);
            this.textField.setSize(this._05g).setColor(0xFFFFFF);
            this._Z();
        }
        ;
    }

    private function onComplete(_arg1:Event):void {
        this._0H5.addChild(this._loader);
    }

    private function onIOError(_arg1:IOErrorEvent):void {
        switch (this.size) {
            case LARGE:
                this._0H5.addChild(new _0yj());
                return;
            case SMALL:
                this._0H5.addChild(new _1B8());
                return;
        }
        ;
    }

    private function onMouseDown(_arg1:MouseEvent):void {
        this._1p5.dispatch(this._0ap);
    }


}
}//package _0AI

