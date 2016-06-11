// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._1Dh

package _1Cn {
import _nj._0XC;

import flash.display.DisplayObjectContainer;
import flash.events.Event;

public class _1Dh extends Event {

    public static const _1Ko:String = "containerAdd";
    public static const _yv:String = "containerRemove";
    public static const _0XU:String = "handlerAdd";
    public static const _1pk:String = "handlerRemove";

    public function _1Dh(_arg1:String, _arg2:DisplayObjectContainer = null, _arg3:_0XC = null) {
        super(_arg1);
        this._1Wj = _arg2;
        this._handler = _arg3;
    }
    private var _1Wj:DisplayObjectContainer;

    private var _handler:_0XC;

    public function get handler():_0XC {
        return (this._handler);
    }

    public function get container():DisplayObjectContainer {
        return (this._1Wj);
    }

    override public function clone():Event {
        return (new _1Dh(type, this._1Wj, this._handler));
    }


}
}//package _1Cn

