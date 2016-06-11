// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._1O0

package _U1 {
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _1TG._0Yn;

import com.company.util.MoreColorUtil;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;
import flash.utils.getTimer;

public class _1O0 extends Sprite {

    protected static const _1N3:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));
    private static const _IM:DropShadowFilter = new DropShadowFilter(0, 0, 0, 0.5, 12, 12);

    public const clicked:_sy = new _sy();
    public const textField:_06T = _JL();
    public const _Vf:_sy = textField.textChanged;

    public function _1O0(_arg1:String, _arg2:int, _arg3:Boolean) {
        this.size = _arg2;
        this._L3 = _arg3;
        this.textField.setSize(_arg2).setColor(0xFFFFFF).setBold(true);
        this._1a2(_arg1);
        this._0jh = width;
        this._oe = height;
        this.activate();
    }
    private var colorTransform:ColorTransform;
    private var size:int;
    private var _L3:Boolean;
    private var _0jh:Number;
    private var _oe:Number;
    private var active:Boolean;
    private var color:uint = 0xFFFFFF;
    private var _0zK:uint;

    override public function toString():String {
        return ((("[TitleMenuOption " + this.textField._4D()) + "]"));
    }

    public function activate():void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        addEventListener(MouseEvent.CLICK, this._1rC);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this.active = true;
    }

    public function deactivate():void {
        var _local1:ColorTransform = new ColorTransform();
        _local1.color = 0x363636;
        this._1Pk(_local1);
        removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        removeEventListener(MouseEvent.CLICK, this._1rC);
        removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this.active = false;
    }

    public function setColor(_arg1:uint):void {
        this.color = _arg1;
        var _local2:uint = ((_arg1 & 0xFF0000) >> 16);
        var _local3:uint = ((_arg1 & 0xFF00) >> 8);
        var _local4:uint = (_arg1 & 0xFF);
        var _local5:ColorTransform = new ColorTransform((_local2 / 0xFF), (_local3 / 0xFF), (_local4 / 0xFF));
        this._1Pk(_local5);
    }

    public function _EW():Boolean {
        return (this.active);
    }

    public function _1a2(_arg1:String):void {
        name = _arg1;
        this.textField.setStringBuilder(new _5R().setParams(_arg1));
    }

    public function setAutoSize(_arg1:String):void {
        this.textField.setAutoSize(_arg1);
    }

    public function setVerticalAlign(_arg1:String):void {
        this.textField.setVerticalAlign(_arg1);
    }

    public function _1Pk(_arg1:ColorTransform):void {
        if (_arg1 == this.colorTransform) {
            return;
        }
        ;
        this.colorTransform = _arg1;
        if (this.colorTransform == null) {
            this.textField.transform.colorTransform = MoreColorUtil.identity;
        } else {
            this.textField.transform.colorTransform = this.colorTransform;
        }
        ;
    }

    private function _JL():_06T {
        var _local1:_06T;
        _local1 = new _06T();
        _local1.filters = [_IM];
        addChild(_local1);
        return (_local1);
    }

    protected function onMouseOver(_arg1:MouseEvent):void {
        this._1Pk(_1N3);
    }

    protected function onMouseOut(_arg1:MouseEvent):void {
        if (this.color != 0xFFFFFF) {
            this.setColor(this.color);
        } else {
            this._1Pk(null);
        }
        ;
    }

    protected function _1rC(_arg1:MouseEvent):void {
        _0Yn.play("button_click");
        this.clicked.dispatch();
    }

    private function onAddedToStage(_arg1:Event):void {
        if (this._L3) {
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        ;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        if (this._L3) {
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        ;
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local2:Number = (1.05 + (0.05 * Math.sin((getTimer() / 200))));
        this.textField.scaleX = _local2;
        this.textField.scaleY = _local2;
    }


}
}//package _U1

