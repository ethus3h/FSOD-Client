// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._1z8

package _1Cn {
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.events.Event;
import flash.utils.getQualifiedClassName;

public class _1z8 {

    private const _filter:RegExp = /^mx\.|^spark\.|^flash\./;

    public function _1z8(_arg1:_LO) {
        var _local2:_5M;
        super();
        this._1fg = _arg1;
        this._1fg.addEventListener(_0NX._0dn, this._1WX);
        this._1fg.addEventListener(_0NX._9r, this._20c);
        for each (_local2 in this._1fg._PD) {
            this._0QA(_local2.container);
        }
        ;
    }
    private var _1fg:_LO;

    public function destroy():void {
        var _local1:_5M;
        this._1fg.removeEventListener(_0NX._0dn, this._1WX);
        this._1fg.removeEventListener(_0NX._9r, this._20c);
        for each (_local1 in this._1fg._PD) {
            this._0dW(_local1.container);
        }
        ;
    }

    private function _0QA(_arg1:DisplayObjectContainer):void {
        _arg1.addEventListener(Event.ADDED_TO_STAGE, this._y5, true);
        _arg1.addEventListener(Event.ADDED_TO_STAGE, this._tj);
    }

    private function _0dW(_arg1:DisplayObjectContainer):void {
        _arg1.removeEventListener(Event.ADDED_TO_STAGE, this._y5, true);
        _arg1.removeEventListener(Event.ADDED_TO_STAGE, this._tj);
    }

    private function _1WX(_arg1:_0NX):void {
        this._0QA(_arg1.container);
    }

    private function _20c(_arg1:_0NX):void {
        this._0dW(_arg1.container);
    }

    private function _y5(_arg1:Event):void {
        var _local2:DisplayObject;
        var _local3:String;
        _local2 = (_arg1.target as DisplayObject);
        _local3 = getQualifiedClassName(_local2);
        var _local4:Boolean = this._filter.test(_local3);
        if (_local4) {
            return;
        }
        ;
        var _local5:Class = _local2["constructor"];
        var _local6:_5M = this._1fg._0C9(_local2);
        while (_local6) {
            _local6._1ao(_local2, _local5);
            _local6 = _local6.parent;
        }
        ;
    }

    private function _tj(_arg1:Event):void {
        var _local2:DisplayObjectContainer;
        _local2 = (_arg1.target as DisplayObjectContainer);
        _local2.removeEventListener(Event.ADDED_TO_STAGE, this._tj);
        var _local3:Class = _local2["constructor"];
        var _local4:_5M = this._1fg._0F9(_local2);
        _local4._1ao(_local2, _local3);
    }


}
}//package _1Cn

