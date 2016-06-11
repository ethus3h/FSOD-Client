// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._AL

package _U1 {
import _0Mr.AppendingLineBuilder;
import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import _6u._TG;

import _Z0._0BS;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.utils.getTimer;

public class _AL extends Sprite implements _1q5 {

    public static var _0dv:_0BS = new _0BS(0x363636, 0x9B9B9B, null, "", 150);

    public function _AL(_arg1:int, _arg2:uint, _arg3:uint, _arg4:String, _arg5:String, _arg6:int, _arg7:int, _arg8:String, _arg9:String, _arg10:DisplayObject):void {
        this._8c = new _1Ud();
        super();
        this.name = _arg4;
        this.description = _arg5;
        this.level = _arg6;
        this._0Cp = _arg7;
        this._pt = _arg8;
        this._1wt = _arg9;
        this.nameText_ = new _06T().setSize(_arg1).setColor(_arg2);
        this.nameText_.setBold(true);
        this.nameText_.setAutoSize(TextFieldAutoSize.RIGHT);
        this.nameText_.setStringBuilder(new _5R().setParams(_arg4));
        this.nameText_.x = 410;
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        addChild(this.nameText_);
        if (this._0Cp != -1) {
            this._0jF = new _06T().setSize(_arg1).setColor(_arg3);
            this._0jF.setBold(true);
            this._0jF.setStringBuilder(new _1M((((_arg8 + "0") + " ") + _arg9)));
            this._0jF.x = 450;
            this._0jF.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            addChild(this._0jF);
        }
        ;
        if (_arg10 != null) {
            this._1S1 = _arg10;
            this.nameText_.textChanged.addOnce(this.onTextChanged);
            addChild(this._1S1);
        }
        ;
        this._8c._0qm(this);
        if (_arg5) {
            this._8c.tooltip = _0dv;
        }
        ;
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var _8c:_1Ud;
    public var description:String;
    public var level:int;
    public var _0Cp:int;
    public var _pt:String;
    public var _1wt:String;
    private var startTime_:int = 0;
    private var nameText_:_06T;
    private var _0jF:_06T;
    private var _1S1:DisplayObject;

    public function _1Tg(_arg1:_1PV):void {
        this._8c._1Tg(_arg1);
    }

    public function _1ml():_1PV {
        return (this._8c._1ml());
    }

    public function _Md(_arg1:_GV):void {
        this._8c._Md(_arg1);
    }

    public function _0ec():_GV {
        return (this._8c._0ec());
    }

    public function _9():void {
        this.startTime_ = -1000000;
    }

    private function onTextChanged():void {
        if (this._0jF != null) {
            this._1S1.x = ((this._0jF.x + this._0jF.width) - 4);
            this._1S1.y = (((this._0jF.height / 2) - (this._1S1.height / 2)) + 2);
        } else {
            this._1S1.x = 450;
            this._1S1.y = (((this.nameText_.height / 2) - (this._1S1.height / 2)) + 2);
        }
        ;
    }

    private function _1yC():_1vN {
        var _local1:AppendingLineBuilder = new AppendingLineBuilder();
        _local1.setDelimiter("");
        _local1.pushParams(this.description);
        if (this.level > 1) {
            _local1.pushParams(_TG._1Je, {data: " ("});
            _local1.pushParams("FameBonus.LevelRequirement", {level: this.level});
            _local1.pushParams(_TG._1Je, {data: ")"});
        }
        ;
        return (_local1);
    }

    public function onEnterFrame(_arg1:Event):void {
        var _local3:int;
        var _local2:Number = Math.min(1, ((getTimer() - this.startTime_) / 500));
        if (this._0jF != null) {
            _local3 = (this._0Cp * _local2);
            this._0jF.setStringBuilder(new _1M((((this._pt + _local3.toString()) + " ") + this._1wt)));
            if (this._1S1 != null) {
                this._1S1.x = ((this._0jF.x + this._0jF.width) - 4);
                this._1S1.y = (((this._0jF.height / 2) - (this._1S1.height / 2)) + 2);
            }
            ;
        }
        ;
        if (_local2 == 1) {
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        ;
    }

    public function onMouseOver(_arg1:Event):void {
        if (this.description != null) {
            _0dv._1Nq(this._1yC());
            stage.addChild(_0dv);
        }
        ;
    }

    private function onAddedToStage(_arg1:Event):void {
        if (this.startTime_ == 0) {
            this.startTime_ = getTimer();
        }
        ;
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
    }


}
}//package _U1

