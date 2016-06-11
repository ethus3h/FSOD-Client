// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04g._AJ

package _04g {
import _08Y._sC;

import _0Mr._1M;
import _0Mr._5R;

import _0Sj._05E;
import _0Sj._1l_;

import _0y9._06T;

import _1Sm._sy;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;

public class _AJ extends Sprite {

    public static const _Uk:int = 20;

    public function _AJ(_arg1:int = 288, _arg2:int = 150, _arg3:String = "") {
        this._0JX = _arg1;
        this._ZZ = _arg2;
        x = ((WebMain._0b2.stageWidth / 2) - (this._0JX / 2));
        y = ((WebMain._0b2.stageHeight / 2) - (this._ZZ / 2));
        if (_arg3 != "") {
            this.setTitle(_arg3, true);
        }
        ;
        if (this.background == null) {
            this._1dx = new Sprite();
            this.background = this.makeModalBackground();
            this._1dx.addChild(this.background);
            addChild(this._1dx);
        }
        ;
        if (_arg3 != "") {
            this.setTitle(_arg3, true);
        }
        ;
    }
    public var register:_sy;
    public var cancel:_sy;
    protected var _0JX:Number;
    protected var _ZZ:Number;
    protected var _Mt:_05E;
    protected var background:Sprite;
    protected var _1dx:Sprite;
    protected var title:_06T;
    protected var desc:_06T;

    public function setWidth(_arg1:Number):void {
        this._0JX = _arg1;
        x = ((WebMain._0b2.stageWidth / 2) - (this._0JX / 2));
        this._Xj();
    }

    public function _1FE(_arg1:Number):void {
        this._ZZ = _arg1;
        y = ((WebMain._0b2.stageHeight / 2) - (this._ZZ / 2));
        this._Xj();
    }

    public function setTitle(_arg1:String, _arg2:Boolean):void {
        if (((!((this.title == null))) && (!((this.title.parent == null))))) {
            removeChild(this.title);
        }
        ;
        if (_arg1 != null) {
            this.title = this._4D(_arg1, _Uk, 5, _arg2);
            addChild(this.title);
        } else {
            this.title = null;
        }
        ;
    }

    public function _wl(_arg1:String, _arg2:Boolean):void {
        if (_arg1 != null) {
            if (((!((this.desc == null))) && (!((this.desc.parent == null))))) {
                removeChild(this.desc);
            }
            ;
            this.desc = this._4D(_arg1, _Uk, 50, _arg2);
            addChild(this.desc);
        }
        ;
    }

    public function _14T(_arg1:Boolean):void {
        if ((((this._Mt == null)) && (_arg1))) {
            this._Mt = _sC._1JY(this._0JX);
            this._Mt.addEventListener(MouseEvent.CLICK, this.onCloseClick);
            addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
            addChild(this._Mt);
        } else {
            if (((!((this._Mt == null))) && (!(_arg1)))) {
                removeChild(this._Mt);
                this._Mt = null;
            }
            ;
        }
        ;
    }

    public function _00():void {
        this.desc.setTextWidth((this._0JX - (_Uk * 2)));
        this.title.setTextWidth((this._0JX - (_Uk * 2)));
    }

    protected function _4D(_arg1:String, _arg2:int, _arg3:int, _arg4:Boolean):_06T {
        var _local5:_06T;
        _local5 = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth((this._0JX - (_Uk * 2)));
        _local5.setBold(true);
        if (_arg4) {
            _local5.setStringBuilder(new _1M(_arg1));
        } else {
            _local5.setStringBuilder(new _5R().setParams(_arg1));
        }
        ;
        _local5.setWordWrap(true);
        _local5.setMultiLine(true);
        _local5.setAutoSize(TextFieldAutoSize.CENTER);
        _local5.setHorizontalAlign(TextFormatAlign.CENTER);
        _local5.filters = [new DropShadowFilter(0, 0, 0)];
        _local5.x = _arg2;
        _local5.y = _arg3;
        return (_local5);
    }

    protected function makeModalBackground():Sprite {
        x = ((WebMain._0b2.stageWidth / 2) - (this._0JX / 2));
        y = ((WebMain._0b2.stageHeight / 2) - (this._ZZ / 2));
        var _local1:_1l_ = new _1l_();
        _local1.draw(this._0JX, this._ZZ, _1l_._Oq);
        if (this.title != null) {
            _local1._0ho(_1l_.HORIZONTAL_DIVISION, 30);
        }
        ;
        return (_local1);
    }

    protected function _Xj():void {
        this._1dx.removeChild(this.background);
        this.background = this.makeModalBackground();
        this._1dx.addChild(this.background);
    }

    public function onCloseClick(_arg1:MouseEvent):void {
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        if (this._Mt != null) {
            this._Mt.removeEventListener(MouseEvent.CLICK, this.onCloseClick);
        }
        ;
    }


}
}//package _04g

