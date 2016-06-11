// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._5M

package _1Cn {
import _nj._0XC;

import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.events.EventDispatcher;

public class _5M extends EventDispatcher {

    private const _handlers:Vector.<_0XC> = new Vector.<_0XC>();

    public function _5M(_arg1:DisplayObjectContainer) {
        this._1Wj = _arg1;
    }
    private var _1Wj:DisplayObjectContainer;

    private var _parent:_5M;

    public function get parent():_5M {
        return (this._parent);
    }

    public function set parent(_arg1:_5M):void {
        this._parent = _arg1;
    }

    public function get container():DisplayObjectContainer {
        return (this._1Wj);
    }

    public function get _cp():uint {
        return (this._handlers.length);
    }

    public function _100(_arg1:_0XC):void {
        if (this._handlers.indexOf(_arg1) > -1) {
            return;
        }
        ;
        this._handlers.push(_arg1);
    }

    public function _g5(_arg1:_0XC):void {
        var _local2:int = this._handlers.indexOf(_arg1);
        if (_local2 > -1) {
            this._handlers.splice(_local2, 1);
            if (this._handlers.length == 0) {
                dispatchEvent(new _00I(_00I._0zS));
            }
            ;
        }
        ;
    }

    public function _1ao(_arg1:DisplayObject, _arg2:Class):void {
        var _local5:_0XC;
        var _local3:uint = this._handlers.length;
        var _local4:int;
        while (_local4 < _local3) {
            _local5 = (this._handlers[_local4] as _0XC);
            _local5._1ao(_arg1, _arg2);
            _local4++;
        }
        ;
    }


}
}//package _1Cn

