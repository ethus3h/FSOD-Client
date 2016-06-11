// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Ql._ZQ

package _0Ql {
import _1Sm.Slot;
import _1Sm._1IG;
import _1Sm._1xK;

import flash.errors.IllegalOperationError;
import flash.events.Event;
import flash.events.IEventDispatcher;

public class _ZQ implements _0ht {

    public function _ZQ(_arg1:IEventDispatcher = null, _arg2:String = "", _arg3:Class = null) {
        this._0qP = _1IG.NIL;
        this.target = _arg1;
        this._yn = _arg2;
        this.eventClass = _arg3;
    }
    protected var _0O:IEventDispatcher;
    protected var _0YC:String;
    protected var _Rc:Class;
    protected var _un:Array;
    protected var _0qP:_1IG;

    public function get _yn():String {
        return (this._0YC);
    }

    public function set _yn(_arg1:String):void {
        this._0YC = _arg1;
    }

    public function get eventClass():Class {
        return (this._Rc);
    }

    public function set eventClass(_arg1:Class):void {
        this._Rc = ((_arg1) || (Event));
        this._un = [this._Rc];
    }

    [ArrayElementType(elementType="Class")]
    public function get valueClasses():Array {
        return (this._un);
    }

    public function set valueClasses(_arg1:Array):void {
        this.eventClass = ((((_arg1) && ((_arg1.length > 0)))) ? _arg1[0] : null);
    }

    public function get _0jq():uint {
        return (this._0qP.length);
    }

    public function get target():IEventDispatcher {
        return (this._0O);
    }

    public function set target(_arg1:IEventDispatcher):void {
        if (_arg1 == this._0O) {
            return;
        }
        ;
        if (this._0O) {
            this.removeAll();
        }
        ;
        this._0O = _arg1;
    }

    public function add(_arg1:Function):_1xK {
        return (this._1T8(_arg1));
    }

    public function _1T8(_arg1:Function, _arg2:int = 0):_1xK {
        return (this._002(_arg1, false, _arg2));
    }

    public function addOnce(_arg1:Function):_1xK {
        return (this._0iB(_arg1));
    }

    public function _0iB(_arg1:Function, _arg2:int = 0):_1xK {
        return (this._002(_arg1, true, _arg2));
    }

    public function remove(_arg1:Function):_1xK {
        var _local2:_1xK = this._0qP.find(_arg1);
        if (!_local2) {
            return (null);
        }
        ;
        this._0O.removeEventListener(this._0YC, _local2.execute1);
        this._0qP = this._0qP._149(_arg1);
        return (_local2);
    }

    public function removeAll():void {
        var _local1:_1IG = this._0qP;
        while (_local1.nonEmpty) {
            this.target.removeEventListener(this._0YC, _local1._11w.execute1);
            _local1 = _local1._qh;
        }
        ;
        this._0qP = _1IG.NIL;
    }

    public function dispatch(..._args):void {
        if (null == _args) {
            throw (new ArgumentError("Event object expected."));
        }
        ;
        if (_args.length != 1) {
            throw (new ArgumentError("No more than one Event object expected."));
        }
        ;
        this.dispatchEvent((_args[0] as Event));
    }

    protected function _002(_arg1:Function, _arg2:Boolean = false, _arg3:int = 0):_1xK {
        var _local4:_1xK;
        if (!this.target) {
            throw (new ArgumentError("Target object cannot be null."));
        }
        ;
        if (this._0D1(_arg1, _arg2)) {
            _local4 = new Slot(_arg1, this, _arg2, _arg3);
            this._0qP = this._0qP.prepend(_local4);
            this._0O.addEventListener(this._0YC, _local4.execute1, false, _arg3);
            return (_local4);
        }
        ;
        return (this._0qP.find(_arg1));
    }

    protected function _0D1(_arg1:Function, _arg2:Boolean):Boolean {
        if (!this._0qP.nonEmpty) {
            return (true);
        }
        ;
        var _local3:_1xK = this._0qP.find(_arg1);
        if (_local3) {
            if (_local3.once != _arg2) {
                throw (new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first."));
            }
            ;
            return (false);
        }
        ;
        return (true);
    }

    public function dispatchEvent(_arg1:Event):Boolean {
        if (!this.target) {
            throw (new ArgumentError("Target object cannot be null."));
        }
        ;
        if (!_arg1) {
            throw (new ArgumentError("Event object cannot be null."));
        }
        ;
        if (!(_arg1 is this.eventClass)) {
            throw (new ArgumentError((((("Event object " + _arg1) + " is not an instance of ") + this.eventClass) + ".")));
        }
        ;
        if (_arg1.type != this._yn) {
            throw (new ArgumentError((((("Event object has incorrect type. Expected <" + this._yn) + "> but was <") + _arg1.type) + ">.")));
        }
        ;
        return (this.target.dispatchEvent(_arg1));
    }


}
}//package _0Ql

