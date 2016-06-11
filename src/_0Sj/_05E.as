// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._05E

package _0Sj {
import _1Sm._sy;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.MouseEvent;

public class _05E extends Sprite {

    public const clicked:_sy = new _sy();
    public static var _1MW:Class = _Fq;
    public static var _0N4:Class = _1nG;

    public function _05E(_arg1:Number = -1) {
        var _local2:DisplayObject;
        super();
        if (_arg1 < 0) {
            addChild(new _1MW());
        } else {
            _local2 = new _0N4();
            addChild(new _0N4());
            scaleX = (scaleX * _arg1);
            scaleY = (scaleY * _arg1);
        }
        ;
        buttonMode = true;
        addEventListener(MouseEvent.CLICK, this._HR);
    }
    public var disabled:Boolean = false;

    public function _0KW(_arg1:Boolean):void {
        this.disabled = _arg1;
        if (_arg1) {
            removeEventListener(MouseEvent.CLICK, this._HR);
        } else {
            addEventListener(MouseEvent.CLICK, this._HR);
        }
        ;
    }

    public function _1Fd():void {
        this.disabled = true;
        removeEventListener(MouseEvent.CLICK, this._HR);
    }

    private function _HR(_arg1:MouseEvent):void {
        if (!this.disabled) {
            this.clicked.dispatch();
            removeEventListener(MouseEvent.CLICK, this._HR);
        }
        ;
    }


}
}//package _0Sj

