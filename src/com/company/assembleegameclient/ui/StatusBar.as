// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.StatusBar

package com.company.assembleegameclient.ui {
import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import com.company.assembleegameclient.parameters.Parameters;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class StatusBar extends Sprite {

    public static var _a7:_sy = new _sy(Boolean);

    public function StatusBar(_arg1:int, _arg2:int, _arg3:uint, _arg4:uint, _arg5:String = null) {
        this._qI = new Sprite();
        super();
        addChild(this._qI);
        this.w_ = _arg1;
        this.h_ = _arg2;
        this._0Bn = (this.color_ = _arg3);
        this._QV = (this._1qn = _arg4);
        this._0H7 = 0xFFFFFF;
        if (((!((_arg5 == null))) && (!((_arg5.length == 0))))) {
            this.labelText_ = new _06T().setSize(14).setColor(this._0H7);
            this.labelText_.setBold(true);
            this._1QB = new _5R().setParams(_arg5);
            this.labelText_.setStringBuilder(this._1QB);
            this._1g(this.labelText_);
            this.labelText_.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.labelText_);
        }
        ;
        this._15h = new _06T().setSize(14).setColor(0xFFFFFF);
        this._15h.setBold(true);
        this._15h.filters = [new DropShadowFilter(0, 0, 0)];
        this._1g(this._15h);
        this._vj = new _1M();
        this._M5 = new _06T().setSize(14).setColor(this._0H7);
        this._M5.setBold(true);
        this._M5.alpha = 0.6;
        this._1g(this._M5);
        this._M5.filters = [new DropShadowFilter(0, 0, 0)];
        this._1MD = new Sprite();
        this._1MD.x = (this.w_ - 25);
        this._1MD.y = -3;
        this._1MD.graphics.beginFill(0xFF00FF, 0);
        this._1MD.graphics.drawRect(0, 0, 20, 20);
        this._1MD.addEventListener(MouseEvent.MOUSE_OVER, this._0vI);
        this._1MD.addEventListener(MouseEvent.MOUSE_OUT, this._1Gv);
        this._R0 = new _06T().setSize(14).setColor(9493531);
        this._R0.setBold(true);
        this._R0.setStringBuilder(new _1M("x2"));
        this._R0.filters = [new DropShadowFilter(0, 0, 0)];
        this._1MD.addChild(this._R0);
        if (!Parameters.data_.toggleBarText) {
            addEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
        }
        ;
        _a7.add(this._0Yc);
    }
    public var w_:int;
    public var h_:int;
    public var color_:uint;
    public var _1qn:uint;
    public var _0Kl:uint;
    public var _0H7:uint;
    public var val_:int = -1;
    public var _rH:int = -1;
    public var boost_:int = -1;
    public var _uG:int = -1;
    public var _1MD:Sprite;
    public var _cL:Boolean = false;
    private var labelText_:_06T;
    private var _1QB:_5R;
    private var _15h:_06T;
    private var _vj:_1M;
    private var _M5:_06T;
    private var _R0:_06T;
    private var _qI:Sprite;
    private var _0Bn:Number;
    private var _QV:Number;
    private var _0Dd:Boolean = false;
    private var _0vk:int;
    private var _1qF:int = -1;
    private var speed:Number = 0.1;

    public function _1g(_arg1:_06T):void {
        _arg1.setVerticalAlign(_06T.MIDDLE);
        _arg1.y = ((this.h_ / 2) + 1);
    }

    public function draw(_arg1:int, _arg2:int, _arg3:int, _arg4:int = -1):void {
        if (_arg2 > 0) {
            _arg1 = Math.min(_arg2, Math.max(0, _arg1));
        }
        ;
        if ((((((((_arg1 == this.val_)) && ((_arg2 == this._rH)))) && ((_arg3 == this.boost_)))) && ((_arg4 == this._uG)))) {
            return;
        }
        ;
        this.val_ = _arg1;
        this._rH = _arg2;
        this.boost_ = _arg3;
        this._uG = _arg4;
        this._1tR();
    }

    public function _0zp(_arg1:String, _arg2:Object = null):void {
        this._1QB.setParams(_arg1, _arg2);
        this.labelText_.setStringBuilder(this._1QB);
    }

    public function _0Yc(_arg1:Boolean):void {
        this._cL = false;
        if (_arg1) {
            removeEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
            removeEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
        } else {
            addEventListener(MouseEvent.ROLL_OVER, this.onMouseOver);
            addEventListener(MouseEvent.ROLL_OUT, this.onMouseOut);
        }
        ;
        this._1tR();
    }

    public function _0OR():void {
        if (this._rH > 0) {
            this._15h.setStringBuilder(this._vj.setString(((this.val_ + "/") + this._rH)));
        } else {
            this._15h.setStringBuilder(this._vj.setString(("" + this.val_)));
        }
        ;
        if (!contains(this._15h)) {
            this._15h.mouseEnabled = false;
            this._15h.mouseChildren = false;
            addChild(this._15h);
        }
        ;
        if (this.boost_ != 0) {
            this._M5.setStringBuilder(this._vj.setString((((" (" + (((this.boost_ > 0)) ? "+" : "")) + this.boost_.toString()) + ")")));
            if (!contains(this._M5)) {
                this._M5.mouseEnabled = false;
                this._M5.mouseChildren = false;
                addChild(this._M5);
            }
            ;
            this._15h.x = ((this.w_ / 2) - ((this._15h.width + this._M5.width) / 2));
            this._M5.x = (this._15h.x + this._15h.width);
        } else {
            this._15h.x = ((this.w_ / 2) - (this._15h.width / 2));
            if (contains(this._M5)) {
                removeChild(this._M5);
            }
            ;
        }
        ;
    }

    public function _4V():void {
        this._1MD.mouseEnabled = false;
        this._1MD.mouseChildren = false;
        addChild(this._1MD);
        this._1NA(3, 9493531, 0xFFFFFF);
    }

    public function _1i1():void {
        if (this._1MD.parent) {
            removeChild(this._1MD);
        }
        ;
    }

    public function _1NA(_arg1:Number, _arg2:Number, _arg3:Number):void {
        this._0Dd = true;
        this.color_ = _arg2;
        this._0Kl = _arg3;
        this._0vk = _arg1;
        this._1tR();
        addEventListener(Event.ENTER_FRAME, this._13W);
    }

    private function _18w(_arg1:uint):void {
        this._0H7 = _arg1;
        if (this._M5 != null) {
            this._M5.setColor(this._0H7);
        }
        ;
        this._15h.setColor(this._0H7);
    }

    private function _1tR():void {
        graphics.clear();
        this._qI.graphics.clear();
        var _local1:uint = 0xFFFFFF;
        if ((((this._uG > 0)) && (((this._rH - this.boost_) == this._uG)))) {
            _local1 = 0xFCDF00;
        } else {
            if (this.boost_ > 0) {
                _local1 = 6206769;
            }
            ;
        }
        ;
        if (this._0H7 != _local1) {
            this._18w(_local1);
        }
        ;
        graphics.beginFill(this._1qn);
        graphics.drawRect(0, 0, this.w_, this.h_);
        graphics.endFill();
        if (this._0Dd) {
            this._qI.graphics.beginFill(this._0Kl);
            this._qI.graphics.drawRect(0, 0, this.w_, this.h_);
        }
        ;
        this._qI.graphics.beginFill(this.color_);
        if (this._rH > 0) {
            this._qI.graphics.drawRect(0, 0, (this.w_ * (this.val_ / this._rH)), this.h_);
        } else {
            this._qI.graphics.drawRect(0, 0, this.w_, this.h_);
        }
        ;
        this._qI.graphics.endFill();
        if (contains(this._15h)) {
            removeChild(this._15h);
        }
        ;
        if (contains(this._M5)) {
            removeChild(this._M5);
        }
        ;
        if (((Parameters.data_.toggleBarText) || (((this._cL) && ((this.h_ > 4)))))) {
            this._0OR();
        }
        ;
    }

    private function _0vI(_arg1:MouseEvent):void {
        dispatchEvent(new Event("MULTIPLIER_OVER"));
    }

    private function _1Gv(_arg1:MouseEvent):void {
        dispatchEvent(new Event("MULTIPLIER_OUT"));
    }

    private function _13W(_arg1:Event):void {
        if ((((this._qI.alpha > 1)) || ((this._qI.alpha < 0)))) {
            this._1qF = (this._1qF * -1);
            if (this._qI.alpha > 1) {
                this._0vk--;
                if (!this._0vk) {
                    this._0Dd = false;
                    this.color_ = this._0Bn;
                    this._1qn = this._QV;
                    this._qI.alpha = 1;
                    this._1tR();
                    removeEventListener(Event.ENTER_FRAME, this._13W);
                }
                ;
            }
            ;
        }
        ;
        this._qI.alpha = (this._qI.alpha + (this.speed * this._1qF));
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._cL = true;
        this._1tR();
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._cL = false;
        this._1tR();
    }


}
}//package com.company.assembleegameclient.ui

