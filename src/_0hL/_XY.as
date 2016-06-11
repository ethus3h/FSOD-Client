// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._XY

package _0hL {
import _1PM._1es;
import _1PM._1kh;
import _1PM._1pE;

import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.utils.Dictionary;

public class _XY extends EventDispatcher implements _1pE {

    private const _0mi:Dictionary = new Dictionary();

    public function _XY(_arg1:Object) {
        this._0O = _arg1;
        this._0M2();
    }
    private var _0O:Object;
    private var _0G2:int;
    private var _20x:_18c;
    private var _yT:_18c;
    private var _Lj:_18c;
    private var _4y:_18c;

    private var _state:String = "uninitialized";

    public function get state():String {
        return (this._state);
    }

    public function get target():Object {
        return (this._0O);
    }

    public function get initialized():Boolean {
        return (((!((this._state == _1es._0b))) && (!((this._state == _1es._1Vi)))));
    }

    public function get active():Boolean {
        return ((this._state == _1es._KP));
    }

    public function get suspended():Boolean {
        return ((this._state == _1es._07U));
    }

    public function get destroyed():Boolean {
        return ((this._state == _1es._0iO));
    }

    override public function addEventListener(_arg1:String, _arg2:Function, _arg3:Boolean = false, _arg4:int = 0, _arg5:Boolean = false):void {
        _arg4 = this._007(_arg1, _arg4);
        super.addEventListener(_arg1, _arg2, _arg3, _arg4, _arg5);
    }

    public function initialize(_arg1:Function = null):void {
        this._20x.enter(_arg1);
    }

    public function suspend(_arg1:Function = null):void {
        this._yT.enter(_arg1);
    }

    public function resume(_arg1:Function = null):void {
        this._Lj.enter(_arg1);
    }

    public function destroy(_arg1:Function = null):void {
        this._4y.enter(_arg1);
    }

    public function _3m(_arg1:Function):_1pE {
        this._20x._1Xs(_arg1);
        return (this);
    }

    public function _SX(_arg1:Function):_1pE {
        this._yT._1Xs(_arg1);
        return (this);
    }

    public function _12k(_arg1:Function):_1pE {
        this._Lj._1Xs(_arg1);
        return (this);
    }

    public function _0oP(_arg1:Function):_1pE {
        this._4y._1Xs(_arg1);
        return (this);
    }

    public function _04D(_arg1:Function):_1pE {
        this.addEventListener(_1kh._02r, this._0fQ(_arg1, true));
        return (this);
    }

    public function _UK(_arg1:Function):_1pE {
        this.addEventListener(_1kh._0EY, this._0fQ(_arg1));
        return (this);
    }

    public function _1F5(_arg1:Function):_1pE {
        this.addEventListener(_1kh._Vi, this._0fQ(_arg1));
        return (this);
    }

    public function _112(_arg1:Function):_1pE {
        this.addEventListener(_1kh._2T, this._0fQ(_arg1, true));
        return (this);
    }

    public function _Dy(_arg1:Function):_1pE {
        this.addEventListener(_1kh._0zm, this._0fQ(_arg1, true));
        return (this);
    }

    public function _nX(_arg1:Function):_1pE {
        this.addEventListener(_1kh._11C, this._0fQ(_arg1));
        return (this);
    }

    public function _1cU(_arg1:Function):_1pE {
        this.addEventListener(_1kh._1EL, this._0fQ(_arg1));
        return (this);
    }

    public function _Us(_arg1:Function):_1pE {
        this.addEventListener(_1kh._0qn, this._0fQ(_arg1, true));
        return (this);
    }

    function _FK(_arg1:String):void {
        if (this._state == _arg1) {
            return;
        }
        ;
        this._state = _arg1;
    }

    function _1Ta(..._args):void {
        var _local2:String;
        for each (_local2 in _args) {
            this._0mi[_local2] = true;
        }
        ;
    }

    private function _0M2():void {
        this._20x = new _18c(_1kh._1wr, this).fromStates(_1es._0b).toStates(_1es._1Vi, _1es._KP).withEvents(_1kh._1wr, _1kh._02r, _1kh._0zm);
        this._yT = new _18c(_1kh._1bw, this).fromStates(_1es._KP).toStates(_1es._170, _1es._07U).withEvents(_1kh._1bw, _1kh._0EY, _1kh._11C).inReverse();
        this._Lj = new _18c(_1kh._0So, this).fromStates(_1es._07U).toStates(_1es._5c, _1es._KP).withEvents(_1kh._0So, _1kh._Vi, _1kh._1EL);
        this._4y = new _18c(_1kh._WG, this).fromStates(_1es._07U, _1es._KP).toStates(_1es._1Fl, _1es._0iO).withEvents(_1kh._WG, _1kh._2T, _1kh._0qn).inReverse();
    }

    private function _007(_arg1:String, _arg2:int):int {
        return ((((((_arg2 == 0)) && (this._0mi[_arg1]))) ? this._0G2++ : _arg2));
    }

    private function _0fQ(_arg1:Function, _arg2:Boolean = false):Function {
        var handler:Function = _arg1;
        var once:Boolean = _arg2;
        if (handler.length > 1) {
            throw (new Error("When and After handlers must accept 0-1 arguments"));
        }
        ;
        if (handler.length == 1) {
            return (function (_arg1:_1kh):void {
                ((once) && (IEventDispatcher(_arg1.target).removeEventListener(_arg1.type, arguments.callee)));
                handler(_arg1.type);
            });
        }
        ;
        return (function (_arg1:_1kh):void {
            ((once) && (IEventDispatcher(_arg1.target).removeEventListener(_arg1.type, arguments.callee)));
            handler();
        });
    }


}
}//package _0hL

