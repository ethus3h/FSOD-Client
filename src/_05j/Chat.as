// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j.Chat

package _05j {
import _md._0AH;

import flash.display.Sprite;

public class Chat extends Sprite {

    public function Chat() {
        mouseEnabled = true;
        mouseChildren = true;
        this.list = new _06k();
        addChild(this.list);
    }
    public var list:_06k;
    private var input:_0uT;
    private var _1cw:_0TJ;
    private var model:_0AH;

    public function setup(_arg1:_0AH, _arg2:Boolean):void {
        this.model = _arg1;
        this.y = (600 - _arg1._5m.height);
        this.list.y = _arg1._5m.height;
        if (_arg2) {
            this._0ue();
        } else {
            this._04v();
        }
        ;
    }

    public function _1If():void {
        if (((!((this._1cw == null))) && (contains(this._1cw)))) {
            removeChild(this._1cw);
        }
        ;
        if ((((this.input == null)) || (!(contains(this.input))))) {
            this._0ue();
        }
        ;
    }

    private function _0ue():void {
        this.input = new _0uT();
        addChild(this.input);
    }

    private function _04v():void {
        this._1cw = new _0TJ();
        addChild(this._1cw);
        this.list.y = (this.model._5m.height - this.model._1M4);
    }


}
}//package _05j

