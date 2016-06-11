// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0Rz

package _0Sj {
import _0Mr._5R;

import _0y9._06T;

import _1Sm._0Jk;
import _1Sm._sy;

import _6u._TG;

import _n._19y;

import com.company.assembleegameclient.util.Currency;
import com.company.util.MoreColorUtil;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.ColorMatrixFilter;
import flash.filters.DropShadowFilter;

public class _0Rz extends Sprite {

    private static const _1Dn:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._1Bu);

    public const _29:_sy = new _sy();
    public const _1hq:_sy = new _sy(int);
    public const _0ms:_sy = new _sy(int);
    public const clicked:_0Jk = new _sy();
    private const _01j:int = 7;

    public function _0Rz() {
        this._1x0 = new _19y("", 14, 0, Currency._1mE);
        this._0wx = new _19y("", 14, 0, Currency.FAME);
        this._1nh = this._1rJ();
        this.or = this._1rJ().setStringBuilder(new _5R().setParams(_TG._05T));
        super();
        this._1x0.addEventListener(MouseEvent.CLICK, this._0mA);
        this._0wx.addEventListener(MouseEvent.CLICK, this._Hl);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._0wx._0CF.add(this._qn);
        this._1x0._0CF.add(this._qn);
        this._1nh.textChanged.add(this._qn);
    }
    public var _1x0:_19y;
    public var _0wx:_19y;
    private var _1nh:_06T;
    private var or:_06T;
    private var disabled:Boolean = false;

    public function _0KW(_arg1:Boolean):void {
        if (this.disabled != _arg1) {
            this.disabled = _arg1;
            this._1x0.setEnabled(!(this.disabled));
            this._0wx.setEnabled(!(this.disabled));
        }
        ;
    }

    public function _0XI():Boolean {
        return (this.disabled);
    }

    public function _1pN(_arg1:int):void {
        this._1x0.setPrice(_arg1, Currency._1mE);
        ((!(contains(this._1x0))) && (addChild(this._1x0)));
    }

    public function _0hK():int {
        return (this._1x0._1sp());
    }

    public function setPrefix(_arg1:String):void {
        this._1nh.setStringBuilder(new _5R().setParams(_arg1));
        ((!(contains(this._1nh))) && (addChild(this._1nh)));
    }

    public function _Y7():void {
        ((contains(this._1x0)) && (removeChild(this._1x0)));
        ((contains(this._0wx)) && (removeChild(this._0wx)));
        ((contains(this.or)) && (removeChild(this.or)));
    }

    public function _1hi(_arg1:int):void {
        this._0wx.setPrice(_arg1, Currency.FAME);
        ((!(contains(this._0wx))) && (addChild(this._0wx)));
    }

    public function _vk():int {
        return (this._0wx._1sp());
    }

    private function _qn():void {
        if (contains(this._1x0)) {
            this._1x0.x = (this._1nh.width + this._01j);
        }
        ;
        if (contains(this._0wx)) {
            if (contains(this._1x0)) {
                ((!(contains(this.or))) && (addChild(this.or)));
                this.or.textChanged.addOnce(this._qn);
                this.or.x = ((this._1x0.x + this._1x0.width) + this._01j);
                this._0wx.x = ((this.or.x + this.or.width) + this._01j);
            } else {
                this._0wx.x = (this._1nh.width + this._01j);
            }
            ;
        }
        ;
        this._29.dispatch();
    }

    private function _1rJ():_06T {
        var _local1:_06T = new _06T().setSize(16).setColor(0xB3B3B3).setBold(true);
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        _local1.y = 3;
        return (_local1);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._1x0.removeEventListener(MouseEvent.CLICK, this._0mA);
        this._0wx.removeEventListener(MouseEvent.CLICK, this._Hl);
        this._0wx._0CF.remove(this._qn);
        this._1x0._0CF.remove(this._qn);
        this._1nh.textChanged.remove(this._qn);
    }

    private function _Hl(_arg1:MouseEvent):void {
        if (!this.disabled) {
            this._0ms.dispatch(this._0wx.price);
            this.clicked.dispatch();
        }
        ;
        this._0KW(true);
    }

    private function _0mA(_arg1:MouseEvent):void {
        if (!this.disabled) {
            this._1hq.dispatch(this._1x0.price);
            this.clicked.dispatch();
        }
        ;
        this._0KW(true);
    }


}
}//package _0Sj

