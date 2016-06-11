// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Ql._0f9

package _0Ql {
import _1Sm.Slot;
import _1Sm._1IG;
import _1Sm._1xK;
import _1Sm._sy;

import flash.events.Event;
import flash.events.IEventDispatcher;

public class _0f9 extends _sy implements _0ht {

    public function _0f9(_arg1:IEventDispatcher, _arg2:String, _arg3:Class = null) {
        super(((_arg3) || (Event)));
        this._yn = _arg2;
        this.eventClass = _arg3;
        this.target = _arg1;
    }
    protected var _0O:IEventDispatcher;
    protected var _0YC:String;
    protected var _Rc:Class;

    override public function set valueClasses(_arg1:Array):void {
        this.eventClass = ((((_arg1) && ((_arg1.length > 0)))) ? _arg1[0] : null);
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
        _un = [this._Rc];
    }

    override public function add(_arg1:Function):_1xK {
        return (this._1T8(_arg1));
    }

    override public function addOnce(_arg1:Function):_1xK {
        return (this._0iB(_arg1));
    }

    override public function remove(_arg1:Function):_1xK {
        var _local2:Boolean = _0qP.nonEmpty;
        var _local3:_1xK = super.remove(_arg1);
        if (_local2 != _0qP.nonEmpty) {
            this.target.removeEventListener(this._yn, this.onNativeEvent);
        }
        ;
        return (_local3);
    }

    override public function removeAll():void {
        if (this.target) {
            this.target.removeEventListener(this._yn, this.onNativeEvent);
        }
        ;
        super.removeAll();
    }

    override public function dispatch(..._args):void {
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

    public function _1T8(_arg1:Function, _arg2:int = 0):_1xK {
        return (this._002(_arg1, false, _arg2));
    }

    public function _0iB(_arg1:Function, _arg2:int = 0):_1xK {
        return (this._002(_arg1, true, _arg2));
    }

    protected function _002(_arg1:Function, _arg2:Boolean = false, _arg3:int = 0):_1xK {
        if (!this.target) {
            throw (new ArgumentError("Target object cannot be null."));
        }
        ;
        var _local4:Boolean = _0qP.nonEmpty;
        var _local5:_1xK;
        if (_0D1(_arg1, _arg2)) {
            _local5 = new Slot(_arg1, this, _arg2, _arg3);
            _0qP = _0qP.insertWithPriority(_local5);
        } else {
            _local5 = _0qP.find(_arg1);
        }
        ;
        if (_local4 != _0qP.nonEmpty) {
            this.target.addEventListener(this._yn, this.onNativeEvent, false, _arg3);
        }
        ;
        return (_local5);
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

    protected function onNativeEvent(_arg1:Event):void {
        var _local2:_1IG = _0qP;
        while (_local2.nonEmpty) {
            _local2._11w.execute1(_arg1);
            _local2 = _local2._qh;
        }
        ;
    }


}
}//package _0Ql

