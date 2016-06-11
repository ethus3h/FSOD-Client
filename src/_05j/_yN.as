// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._yN

package _05j {
import _6u._00t;
import _6u._1x1;

import _Kt._0nY;
import _Kt._1Wa;

import _md._0AH;
import _md._1tJ;
import _md._J4;

import _r7._17v;

import flash.display.Stage;
import flash.events.KeyboardEvent;
import flash.text.TextField;

public class _yN extends _17v {

    [Inject]
    public var view:_0uT;
    [Inject]
    public var model:_0AH;
    [Inject]
    public var _1qO:_1x1;
    [Inject]
    public var _b1:_00t;
    [Inject]
    public var _1HA:_0nY;
    [Inject]
    public var _1JV:_1Wa;
    [Inject]
    public var _1Zq:_1tJ;
    [Inject]
    public var _0zr:_J4;
    public var stage:Stage;


    override public function initialize():void {
        this.stage = this.view.stage;
        this.stage.addEventListener(KeyboardEvent.KEY_UP, this._1Gn);
        this.view.setup(this.model, this._0DS());
        this.view.message.add(this._0EV);
        this.view.close.add(this._I3);
        this._1JV.add(this._0yX);
    }

    override public function destroy():void {
        this.view.message.remove(this._0EV);
        this.view.close.remove(this._I3);
        this._1JV.remove(this._0yX);
        this.stage.removeEventListener(KeyboardEvent.KEY_UP, this._1Gn);
    }

    private function _I3():void {
        this._1JV.dispatch(false, "");
        this._1Zq._1N2();
    }

    private function _0EV(_arg1:String):void {
        this._1HA.dispatch(_arg1);
        this._1JV.dispatch(false, "");
    }

    private function _0yX(_arg1:Boolean, _arg2:String):void {
        if (_arg1) {
            this.view.activate(_arg2, true);
        } else {
            this.view.deactivate();
        }
        ;
        if (!_arg1) {
            this._1Zq._1N2();
        }
        ;
    }

    private function _0DS():TextField {
        var _local1:TextField = this._1qO._1Nu();
        this._b1.apply(_local1, 14, 0xFFFFFF, true);
        return (_local1);
    }

    private function _py():Boolean {
        return (((!((this.stage.focus.parent == this.view))) && (!((this.stage.focus == this.view)))));
    }

    private function _0Om():void {
        if (!this.view._1uJ()) {
            this.view.activate((("/tell " + this._1Zq._04l()) + " "), true);
        }
        ;
    }

    private function _1Gn(_arg1:KeyboardEvent):void {
        if (((this.view.visible) && ((((_arg1.keyCode == this._0zr._u7())) || ((((this.stage.focus == null)) || (this._py()))))))) {
            this._0O2(_arg1);
        }
        ;
    }

    private function _0O2(_arg1:KeyboardEvent):void {
        _arg1.stopImmediatePropagation();
        var _local2:uint = _arg1.keyCode;
        if (_local2 == this._0zr._01c()) {
            this.view.activate("/", true);
        } else {
            if (_local2 == this._0zr._0XN()) {
                this.view.activate(null, true);
            } else {
                if (_local2 == this._0zr._VL()) {
                    this.view.activate("/g ", true);
                } else {
                    if (_local2 == this._0zr._u7()) {
                        this._0Om();
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }


}
}//package _05j

