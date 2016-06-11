// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._kV

package _n {
import _1E1.*;

import _1Sm._sy;

import _vW._1Eq;
import _vW._1VE;

import flash.display.DisplayObject;
import flash.display.Sprite;

public class _kV extends Sprite implements _1yu {

    public static const _1g2:int = 2;
    public static const _0Cu:int = (_14L.WIDTH + _1g2);

    public const _DJ:_sy = new _sy(Boolean);

    public function _kV() {
        this._0PX();
        this._1Bc();
        this._fl();
    }
    private var layout:_1VE;
    private var list:_1Eq;
    private var scrollbar:_14L;
    private var isEnabled:Boolean = true;
    private var size:Size;

    public function _1uO():Boolean {
        return (this.isEnabled);
    }

    public function _1gg(_arg1:Boolean):void {
        this.isEnabled = _arg1;
        this.scrollbar._1gg(_arg1);
    }

    public function setSize(_arg1:Size):void {
        this.size = _arg1;
        if (this._1AD()) {
            _arg1 = new Size((_arg1.width - _0Cu), _arg1.height);
        }
        ;
        this.list.setSize(_arg1);
        this._Kl();
    }

    public function _Ie():Size {
        return (this.size);
    }

    public function _0qu(_arg1:int):void {
        this.layout._0qu(_arg1);
        this.list._0K();
        this._Kl();
    }

    public function addItem(_arg1:DisplayObject):void {
        this.list.addItem(_arg1);
    }

    public function setItems(_arg1:Vector.<DisplayObject>):void {
        this.list.setItems(_arg1);
    }

    public function _0Z1(_arg1:int):DisplayObject {
        return (this.list._0Z1(_arg1));
    }

    public function _1bi():int {
        return (this.list._1bi());
    }

    public function _4P():int {
        return (this.list._Iz().height);
    }

    public function _1AD():Boolean {
        return (this.scrollbar.visible);
    }

    private function _0PX():void {
        this.layout = new _1VE();
    }

    private function _1Bc():void {
        this.list = new _1Eq();
        this.list._1vV.add(this._Kl);
        this.list._0DI(this.layout);
        addChild(this.list);
    }

    private function _Kl():void {
        var _local1:Size = this.list._Ie();
        var _local2:int = _local1.height;
        var _local3:int = this.list._Iz().height;
        var _local4 = (_local3 > _local2);
        var _local5 = !((this.scrollbar.visible == _local4));
        this.scrollbar._1gg(false);
        this.scrollbar.visible = _local4;
        ((_local4) && (this.scrollbar._1gg(true)));
        ((_local4) && (this._1kk(_local2, _local3)));
        ((_local5) && (this._2c(_local4)));
    }

    private function _2c(_arg1:Boolean):void {
        this.setSize(this.size);
        this._DJ.dispatch(_arg1);
    }

    private function _1kk(_arg1:int, _arg2:int):void {
        var _local3:int = (_arg1 * (_arg1 / _arg2));
        this.scrollbar.setSize(_local3, _arg1);
        this.scrollbar.x = (this.list._Ie().width + _1g2);
    }

    private function _fl():void {
        this.scrollbar = new _14L();
        this.scrollbar._Ir.add(this._1qP);
        this.scrollbar.visible = false;
        addChild(this.scrollbar);
    }

    private function _1qP(_arg1:Number):void {
        var _local2:int = (this.list._Iz().height - this.list._Ie().height);
        this.list._1bc((_local2 * _arg1));
    }


}
}//package _n-

