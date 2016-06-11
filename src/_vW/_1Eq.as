// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vW._1Eq

package _vW {
import _1E1.*;

import _1Sm._sy;

import flash.display.DisplayObject;
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.geom.Rectangle;

public class _1Eq extends Sprite implements _1yu {

    private static const _0u1:Layout = new _1Ui();
    private static const _1Tw:Size = new Size(0, 0);

    public const _1vV:_sy = new _sy();
    private const list:Vector.<DisplayObject> = new <DisplayObject>[];
    private const container:Sprite = new Sprite();
    private const _1oS:Shape = new Shape();

    public function _1Eq() {
        this.layout = _0u1;
        this.size = _1Tw;
        super();
        addChild(this.container);
        addChild(this._1oS);
    }
    private var layout:Layout;
    private var size:Size;
    private var offset:int = 0;

    public function _15y():Layout {
        return (this.layout);
    }

    public function _0DI(_arg1:Layout):void {
        this.layout = ((_arg1) || (_0u1));
        _arg1.layout(this.list, -(this.offset));
    }

    public function _Ie():Size {
        return (this.size);
    }

    public function setSize(_arg1:Size):void {
        this.size = ((_arg1) || (_1Tw));
        this._0ED();
    }

    public function _Iz():Size {
        var _local1:Rectangle = this.container.getRect(this.container);
        return (new Size(_local1.width, _local1.height));
    }

    public function addItem(_arg1:DisplayObject):void {
        this._0lw(_arg1);
        this._0K();
        this._1vV.dispatch();
    }

    public function _0Z1(_arg1:int):DisplayObject {
        return (this.list[_arg1]);
    }

    public function setItems(_arg1:Vector.<DisplayObject>):void {
        this._Lb();
        this._147(_arg1);
        this.offset = 0;
        this._0K();
        this._1vV.dispatch();
    }

    public function _1bi():int {
        return (this.list.length);
    }

    public function _1bc(_arg1:int):void {
        this.offset = _arg1;
        this._0K();
    }

    public function _1wu():int {
        return (this.offset);
    }

    public function _0K():void {
        this.layout.layout(this.list, -(this.offset));
    }

    private function _0ED():void {
        var _local1:Graphics = this._1oS.graphics;
        _local1.clear();
        _local1.beginFill(0x9900FF);
        _local1.drawRect(0, 0, this.size.width, this.size.height);
        _local1.endFill();
        this.container.mask = this._1oS;
    }

    private function _Lb():void {
        var _local1:int = this.list.length;
        while (_local1--) {
            this.container.removeChild(this.list[_local1]);
        }
        ;
        this.list.length = 0;
    }

    private function _147(_arg1:Vector.<DisplayObject>):void {
        var _local2:DisplayObject;
        for each (_local2 in _arg1) {
            this._0lw(_local2);
        }
        ;
    }

    private function _0lw(_arg1:DisplayObject):void {
        this.list.push(_arg1);
        this.container.addChild(_arg1);
    }


}
}//package _vW

