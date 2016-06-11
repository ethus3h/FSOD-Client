// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._0uT

package _05j {
import _1Sm._sy;

import _md._0AH;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.filters.GlowFilter;
import flash.text.TextField;
import flash.text.TextFieldType;
import flash.ui.Keyboard;

public class _0uT extends Sprite {

    public const message:_sy = new _sy(String);
    public const close:_sy = new _sy();

    public function _0uT() {
        visible = false;
        this._gp = false;
    }
    private var input:TextField;
    private var _gp:Boolean;

    public function setup(_arg1:_0AH, _arg2:TextField):void {
        addChild((this.input = _arg2));
        _arg2.width = (_arg1._5m.width - 2);
        _arg2.height = _arg1._1M4;
        _arg2.y = (_arg1._5m.height - _arg1._1M4);
    }

    public function activate(_arg1:String, _arg2:Boolean):void {
        this._gp = false;
        if (_arg1 != null) {
            this.input.text = _arg1;
        }
        ;
        var _local3:int = ((_arg1) ? _arg1.length : 0);
        this.input.setSelection(_local3, _local3);
        if (_arg2) {
            this._0fV();
        } else {
            this._1C();
        }
        ;
        visible = true;
    }

    public function deactivate():void {
        this._gp = false;
        removeEventListener(KeyboardEvent.KEY_UP, this._1Gn);
        stage.removeEventListener(KeyboardEvent.KEY_UP, this._1PL);
        visible = false;
        ((stage) && ((stage.focus = null)));
    }

    public function _1uJ():Boolean {
        return (this._gp);
    }

    private function _0fV():void {
        this.input.type = TextFieldType.INPUT;
        this.input.border = true;
        this.input.selectable = true;
        this.input.maxChars = 128;
        this.input.borderColor = 0xFFFFFF;
        this.input.height = 18;
        this.input.filters = [new GlowFilter(0, 1, 3, 3, 2, 1)];
        addEventListener(KeyboardEvent.KEY_UP, this._1Gn);
        stage.addEventListener(KeyboardEvent.KEY_UP, this._1PL);
        ((stage) && ((stage.focus = this.input)));
    }

    private function _1C():void {
        this.input.type = TextFieldType.DYNAMIC;
        this.input.border = false;
        this.input.selectable = false;
        this.input.filters = [new GlowFilter(0, 1, 3, 3, 2, 1)];
        this.input.height = 18;
        removeEventListener(KeyboardEvent.KEY_UP, this._1Gn);
        stage.removeEventListener(KeyboardEvent.KEY_UP, this._1PL);
    }

    private function _1PL(_arg1:Event):void {
        this._gp = true;
    }

    private function _1Gn(_arg1:KeyboardEvent):void {
        if (_arg1.keyCode == Keyboard.ENTER) {
            if (this.input.text != "") {
                this.message.dispatch(this.input.text);
            } else {
                this.close.dispatch();
            }
            ;
            _arg1.stopImmediatePropagation();
        }
        ;
    }


}
}//package _05j

