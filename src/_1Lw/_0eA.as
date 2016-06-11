// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Lw._0eA

package _1Lw {
import _0hL._1As;

import _1PM.*;

import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

public class _0eA implements _1rc {

    private const _01p:String = _1As.create(_0eA);

    public function _0eA(_arg1:IEventDispatcher = null) {
        this._eventDispatcher = ((_arg1) || (new EventDispatcher()));
    }
    private var _eventDispatcher:IEventDispatcher;

    public function extend(_arg1:_Ld):void {
        _arg1._sk.map(IEventDispatcher)._nR(this._eventDispatcher);
    }

    public function toString():String {
        return (this._01p);
    }


}
}//package _1Lw

