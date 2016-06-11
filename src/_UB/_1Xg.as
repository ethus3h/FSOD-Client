// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_UB._1Xg

package _UB {
import flash.events.Event;

public class _1Xg extends Event {

    public static const _00N:String = "mediatorCreate";
    public static const _dj:String = "mediatorRemove";

    public function _1Xg(_arg1:String, _arg2:Object, _arg3:Object, _arg4:_hG, _arg5:_0fY) {
        super(_arg1);
        this._5K = _arg2;
        this._0Eu = _arg3;
        this._1Z5 = _arg4;
        this._factory = _arg5;
    }
    private var _5K:Object;
    private var _0Eu:Object;
    private var _1Z5:_hG;

    private var _factory:_0fY;

    public function get factory():_0fY {
        return (this._factory);
    }

    public function get mediator():Object {
        return (this._5K);
    }

    public function get view():Object {
        return (this._0Eu);
    }

    public function get mapping():_hG {
        return (this._1Z5);
    }

    override public function clone():Event {
        return (new _1Xg(type, this._5K, this._0Eu, this._1Z5, this._factory));
    }


}
}//package _UB

