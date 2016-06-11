// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._18c

package _0hL {
import _1PM._1kh;

public class _18c {

    private const _0bA:Vector.<String> = new Vector.<String>();
    private const _1p2:MessageDispatcher = new MessageDispatcher();
    private const _callbacks:Array = [];

    public function _18c(_arg1:String, _arg2:_XY) {
        this._name = _arg1;
        this._10w = _arg2;
    }
    private var _name:String;
    private var _10w:_XY;
    private var _1OK:String;
    private var _finalState:String;
    private var _preTransitionEvent:String;
    private var _transitionEvent:String;
    private var _postTransitionEvent:String;
    private var _1A9:Boolean;

    public function fromStates(..._args):_18c {
        var _local2:String;
        for each (_local2 in _args) {
            this._0bA.push(_local2);
        }
        ;
        return (this);
    }

    public function toStates(_arg1:String, _arg2:String):_18c {
        this._1OK = _arg1;
        this._finalState = _arg2;
        return (this);
    }

    public function withEvents(_arg1:String, _arg2:String, _arg3:String):_18c {
        this._preTransitionEvent = _arg1;
        this._transitionEvent = _arg2;
        this._postTransitionEvent = _arg3;
        ((this._1A9) && (this._10w._1Ta(_arg1, _arg2, _arg3)));
        return (this);
    }

    public function inReverse():_18c {
        this._1A9 = true;
        this._10w._1Ta(this._preTransitionEvent, this._transitionEvent, this._postTransitionEvent);
        return (this);
    }

    public function _1Xs(_arg1:Function):_18c {
        this._1p2._0eZ(this._name, _arg1);
        return (this);
    }

    public function enter(_arg1:Function = null):void {
        var initialState:String;
        var callback = _arg1;
        if (this._10w.state == this._finalState) {
            ((callback) && (safelyCallBack(callback, null, this._name)));
            return;
        }
        ;
        if (this._10w.state == this._1OK) {
            ((callback) && (this._callbacks.push(callback)));
            return;
        }
        ;
        if (this._x6()) {
            this.reportError("Invalid transition", [callback]);
            return;
        }
        ;
        initialState = this._10w.state;
        ((callback) && (this._callbacks.push(callback)));
        this.setState(this._1OK);
        this._1p2._1d7(this._name, function (_arg1:Object):void {
            var _local3:Function;
            if (_arg1) {
                setState(initialState);
                reportError(_arg1, _callbacks);
                return;
            }
            ;
            dispatch(_preTransitionEvent);
            dispatch(_transitionEvent);
            setState(_finalState);
            var _local2:Array = _callbacks.concat();
            _callbacks.length = 0;
            for each (_local3 in _local2) {
                safelyCallBack(_local3, null, _name);
            }
            ;
            dispatch(_postTransitionEvent);
        }, this._1A9);
    }

    private function _x6():Boolean {
        return ((((this._0bA.length > 0)) && ((this._0bA.indexOf(this._10w.state) == -1))));
    }

    private function setState(_arg1:String):void {
        ((_arg1) && (this._10w._FK(_arg1)));
    }

    private function dispatch(_arg1:String):void {
        if (((_arg1) && (this._10w.hasEventListener(_arg1)))) {
            this._10w.dispatchEvent(new _1kh(_arg1));
        }
        ;
    }

    private function reportError(_arg1:Object, _arg2:Array = null):void {
        var _local4:_1kh;
        var _local5:Function;
        var _local3:Error = (((_arg1 is Error)) ? (_arg1 as Error) : new Error(_arg1));
        if (this._10w.hasEventListener(_1kh.ERROR)) {
            _local4 = new _1kh(_1kh.ERROR);
            _local4.error = _local3;
            this._10w.dispatchEvent(_local4);
            if (_arg2) {
                for each (_local5 in _arg2) {
                    ((_local5) && (safelyCallBack(_local5, _local3, this._name)));
                }
                ;
                _arg2.length = 0;
            }
            ;
        } else {
            throw (_local3);
        }
        ;
    }


}
}//package _0hL

