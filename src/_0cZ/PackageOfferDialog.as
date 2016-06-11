// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cZ.PackageOfferDialog

package _0cZ {
import _0Mr._1M;

import _0Rk._0Vz;

import _0Sj._05E;

import _0fO.*;

import _0y9._06T;

import _1Sm._sy;

import _1nK._0MP;
import _1nK._11e;

import _6u._TG;

import com.company.assembleegameclient.ui._1jP;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.MouseEvent;
import flash.geom.Rectangle;
import flash.net.URLRequest;
import flash.text.TextFieldAutoSize;

public class PackageOfferDialog extends Sprite implements _oh {

    const _1AT:Number = 6;
    const _1P0:Number = 6;
    const _0tw:Number = 16;
    const fontSize:int = 27;
    private const _0Vc:DisplayObject = _VJ();
    private const buyNow:Sprite = _X3();
    private const title:_06T = _JX();
    private const _Mt:Sprite = _1mg();

    public function PackageOfferDialog() {
        this.ready = new _sy();
        this.buy = new _sy();
        this.close = new _sy();
        this.loader = new _11e();
        this._1AN = new _1Tv();
        this._19E = new Rectangle();
        super();
    }
    public var ready:_sy;
    public var buy:_sy;
    public var close:_sy;
    var loader:_0MP;
    var _1AN:_1Tv;
    var image:DisplayObject;
    private var _4k:_0Vz;
    private var _19E:Rectangle;

    public function setPackage(_arg1:_0Vz):PackageOfferDialog {
        removeChild(this._0Vc);
        this._4k = _arg1;
        this._Yz(this._4k._1qg);
        return (this);
    }

    public function _1yL():_0Vz {
        return (this._4k);
    }

    public function destroy():void {
        this.loader.unload();
    }

    public function resize(_arg1:Rectangle):void {
        this._19E = _arg1;
        this.center();
    }

    private function _VJ():DisplayObject {
        var _local1:DisplayObject = new _wB();
        addChild(_local1);
        return (_local1);
    }

    private function _1mg():Sprite {
        return (new _05E());
    }

    private function _X3():_1jP {
        var _local1:_1jP = new _1jP(16, _TG._0Mf);
        return (_local1);
    }

    private function _JX():_06T {
        var _local1:_06T = new _06T().setSize(this.fontSize).setColor(0xB3B3B3);
        _local1.y = (this._1AT + 5);
        _local1.setAutoSize(TextFieldAutoSize.CENTER);
        return (_local1);
    }

    private function _Yz(_arg1:String):void {
        ((this.loader) && (this.loader.unload()));
        this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
        this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onComplete);
        this.loader.load(new URLRequest(_arg1));
    }

    private function _o6(_arg1:DisplayObject):void {
        this.setImage(_arg1);
        addChild(this.title);
        this._20J();
        this._S8();
        this._xm();
        this.setTitle(this._4k.name);
        this._0mw(this._4k.price);
    }

    private function _0eP():void {
        this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
        this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.onComplete);
    }

    private function _xm():void {
        this._1AN.init();
        addChild(this._1AN);
        this._1AN.x = (this.buyNow.x - 16);
        this._1AN.y = (this.buyNow.y + (this.buyNow.height / 2));
    }

    private function _S8():void {
        addChild(this.buyNow);
        this.buyNow.x = ((this.image.width / 2) - (this.buyNow.width / 2));
        this.buyNow.y = (((this.image.height - this.buyNow.height) - this._0tw) - 4);
        this.buyNow.addEventListener(MouseEvent.MOUSE_UP, this._Nu);
    }

    private function _20J():void {
        addChild(this._Mt);
        this._Mt.x = ((this.image.width - (this._Mt.width * 2)) - this._1P0);
        this._Mt.y = (this._1AT + 5);
        this._Mt.addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
    }

    private function setImage(_arg1:DisplayObject):void {
        ((this.image) && (removeChild(this.image)));
        this.image = _arg1;
        ((this.image) && (addChild(this.image)));
        this.center();
    }

    private function center():void {
        x = ((this._19E.width - width) / 2);
        y = ((this._19E.height - height) / 2);
    }

    private function setTitle(_arg1:String):void {
        this.title.setStringBuilder(new _1M(_arg1));
        this.title.x = (this.image.width / 2);
    }

    private function _0mw(_arg1:int):void {
        this._1AN._0mw(_arg1);
    }

    private function onMouseUp(_arg1:MouseEvent):void {
        this._Mt.removeEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        this.close.dispatch();
    }

    private function onIOError(_arg1:IOErrorEvent):void {
        this._0eP();
        this._o6(new _ic());
        this.ready.dispatch();
    }

    private function onComplete(_arg1:Event):void {
        this._0eP();
        this._o6(this.loader);
        this.ready.dispatch();
    }

    private function _Nu(_arg1:Event):void {
        this.buyNow.removeEventListener(MouseEvent.MOUSE_UP, this._Nu);
        this.buy.dispatch();
    }


}
}//package _0cZ

