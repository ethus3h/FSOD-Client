// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1.ServerBox

package _U1 {
import _0Mr._1M;
import _0Mr._5R;

import _0oL.Server;

import _0y9._06T;

import _6u._TG;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class ServerBox extends Sprite {

    public static const WIDTH:int = 384;
    public static const HEIGHT:int = 52;

    public function ServerBox(_arg1:Server) {
        this.value_ = (((_arg1 == null)) ? null : _arg1.name);
        this.nameText_ = new _06T().setSize(18).setColor(0xFFFFFF).setBold(true);
        if (_arg1 == null) {
            this.nameText_.setStringBuilder(new _5R().setParams(_TG._1yb));
        } else {
            this.nameText_.setStringBuilder(new _1M(_arg1.name));
        }
        ;
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this.nameText_.x = 18;
        this.nameText_.setVerticalAlign(_06T.MIDDLE);
        this.nameText_.y = (ServerBox.HEIGHT / 2);
        addChild(this.nameText_);
        this._19r(_arg1);
        this.draw();
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }
    public var value_:String;
    private var nameText_:_06T;
    private var _0Ip:_06T;
    private var selected_:Boolean = false;
    private var over_:Boolean = false;

    public function setSelected(_arg1:Boolean):void {
        this.selected_ = _arg1;
        this.draw();
    }

    private function _19r(_arg1:Server):void {
        var onTextChanged:Function;
        var color:uint;
        var text:String;
        var server:Server = _arg1;
        onTextChanged = function ():void {
            makeStatusText(color, text);
        };
        if (server != null) {
            color = 0xFF00;
            text = "ServerBox.normal";
            if (server._1or()) {
                color = 0xFF0000;
                text = "ServerBox.full";
            } else {
                if (server._1kX()) {
                    color = 16549442;
                    text = "ServerBox.crowded";
                }
                ;
            }
            ;
            this.nameText_.textChanged.addOnce(onTextChanged);
        }
        ;
    }

    private function makeStatusText(_arg1:uint, _arg2:String):void {
        this._0Ip = new _06T().setSize(18).setColor(_arg1).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
        this._0Ip.setStringBuilder(new _5R().setParams(_arg2));
        this._0Ip.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._0Ip.x = ((WIDTH / 2) + (WIDTH / 4));
        this._0Ip.y = ((ServerBox.HEIGHT / 2) - (this.nameText_.height / 2));
        addChild(this._0Ip);
    }

    private function draw():void {
        graphics.clear();
        if (this.selected_) {
            graphics.lineStyle(2, 16777103);
        }
        ;
        graphics.beginFill(((this.over_) ? 0x6B6B6B : 0x5C5C5C), 1);
        graphics.drawRect(0, 0, WIDTH, HEIGHT);
        if (this.selected_) {
            graphics.lineStyle();
        }
        ;
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this.over_ = true;
        this.draw();
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this.over_ = false;
        this.draw();
    }


}
}//package _U1

