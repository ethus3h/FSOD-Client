// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bb._00-

package _bb {
import _08f.Console;
import _08f._0Lr;

import flash.events.KeyboardEvent;
import flash.text.TextField;
import flash.text.TextFieldType;

public class _00 extends _1b6 {

    public function _00(_arg1:Console) {
        this._ss = {};
        super(_arg1);
        _arg1.cl.addCLCmd("keybinds", this._0xD, "List all keybinds used");
    }
    private var _0BR:int;
    private var _ss:Object;
    private var _zb:uint;

    public function _1xr(_arg1:_0Lr, _arg2:Function, _arg3:Array = null):void {
        if (((config.keystrokePassword) && (((!(_arg1._3R)) && ((_arg1.key.charAt(0) == config.keystrokePassword.charAt(0))))))) {
            report((("Error: KeyBind [" + _arg1.key) + "] is conflicting with Console password."), 9);
            return;
        }
        ;
        if (_arg2 == null) {
            delete this._ss[_arg1.key];
        } else {
            this._ss[_arg1.key] = [_arg2, _arg3];
        }
        ;
    }

    private function _0Ik(_arg1:KeyboardEvent, _arg2:Boolean):void {
        var _local4:_0Lr;
        var _local3:String = String.fromCharCode(_arg1.charCode);
        if (((((((_arg2) && (!((config.keystrokePassword == null))))) && (_local3))) && ((_local3 == config.keystrokePassword.substring(this._0BR, (this._0BR + 1)))))) {
            this._0BR++;
            if (this._0BR >= config.keystrokePassword.length) {
                this._0BR = 0;
                if (this._Td()) {
                    if (((console.visible) && (!(console.panels.mainPanel.visible)))) {
                        console.panels.mainPanel.visible = true;
                    } else {
                        console.visible = !(console.visible);
                    }
                    ;
                    if (((console.visible) && (console.panels.mainPanel.visible))) {
                        console.panels.mainPanel.visible = true;
                        console.panels.mainPanel.moveBackSafePosition();
                    }
                    ;
                } else {
                    if (this._zb < 3) {
                        this._zb++;
                        report("Password did not trigger because you have focus on an input TextField.", 8);
                    }
                    ;
                }
                ;
            }
            ;
        } else {
            if (_arg2) {
                this._0BR = 0;
            }
            ;
            _local4 = new _0Lr(_arg1.keyCode, _arg1.shiftKey, _arg1.ctrlKey, _arg1.altKey, _arg2);
            this._1Bz(_local4.key);
            if (_local3) {
                _local4 = new _0Lr(_local3, _arg1.shiftKey, _arg1.ctrlKey, _arg1.altKey, _arg2);
                this._1Bz(_local4.key);
            }
            ;
        }
        ;
    }

    private function _0xD(..._args):void {
        var _local3:String;
        report("Key binds:", -2);
        var _local2:uint;
        for (_local3 in this._ss) {
            _local2++;
            report(_local3, -2);
        }
        ;
        report(("--- Found " + _local2), -2);
    }

    private function _1Bz(_arg1:String):void {
        var _local2:Array = this._ss[_arg1];
        if (((config.keyBindsEnabled) && (_local2))) {
            if (this._Td()) {
                (_local2[0] as Function).apply(null, _local2[1]);
            } else {
                if (this._zb < 3) {
                    this._zb++;
                    report((("Key bind [" + _arg1) + "] did not trigger because you have focus on an input TextField."), 8);
                }
                ;
            }
            ;
        }
        ;
    }

    private function _Td():Boolean {
        var _local1:TextField;
        try {
            if (((console.stage) && ((console.stage.focus is TextField)))) {
                _local1 = (console.stage.focus as TextField);
                if (_local1.type == TextFieldType.INPUT) {
                    return (false);
                }
                ;
            }
            ;
        } catch (err:Error) {
        }
        ;
        return (true);
    }

    public function _0Kb(_arg1:KeyboardEvent):void {
        this._0Ik(_arg1, false);
    }

    public function _1Ml(_arg1:KeyboardEvent):void {
        this._0Ik(_arg1, true);
    }


}
}//package _bb

