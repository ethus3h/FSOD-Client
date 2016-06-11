// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_8x._1-A

package _8x {
import _0fO.*;

import _1iA._08v;

import flash.events.KeyboardEvent;
import flash.geom.Rectangle;
import flash.text.TextField;
import flash.text.TextFieldType;
import flash.text.TextFormat;
import flash.ui.Keyboard;

public final class _1A extends TextField implements _oh {

    public static const HEIGHT:int = 20;

    public function _1A() {
        background = true;
        backgroundColor = 0x3300;
        border = true;
        borderColor = 0x333333;
        defaultTextFormat = new TextFormat("_sans", 14, 0xFFFFFF, true);
        text = "";
        type = TextFieldType.INPUT;
        restrict = "^`";
        this._11b = new _08v(this);
        this._11b._08g.add(this.onAddedToStage);
        this._11b._2F.add(this.onRemovedFromStage);
    }
    private var _11b:_08v;

    public function resize(_arg1:Rectangle):void {
        var _local2:int = (_arg1.height * 0.5);
        if (_local2 > HEIGHT) {
            _local2 = HEIGHT;
        }
        ;
        width = _arg1.width;
        height = _local2;
        x = _arg1.x;
        y = (_arg1.bottom - height);
    }

    private function onAddedToStage():void {
        addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function onRemovedFromStage():void {
        removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        var _local2:String = text;
        switch (_arg1.keyCode) {
            case Keyboard.ENTER:
                text = "";
                dispatchEvent(new ConsoleEvent(ConsoleEvent.INPUT, _local2));
                return;
            case Keyboard.UP:
                dispatchEvent(new ConsoleEvent(ConsoleEvent.GET_PREVIOUS));
                return;
            case Keyboard.DOWN:
                dispatchEvent(new ConsoleEvent(ConsoleEvent.GET_NEXT));
                return;
        }
        ;
    }


}
}//package _8x

