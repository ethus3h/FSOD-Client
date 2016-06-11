// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Ql._0q-

package _0Ql {
import _1Sm._1IG;

import flash.events.Event;
import flash.events.IEventDispatcher;
import flash.utils.getQualifiedClassName;

public class _0q extends _0f9 {

    public function _0q(_arg1:IEventDispatcher, _arg2:String, _arg3:Class = null, ..._args) {
        super(_arg1, _arg2, _arg3);
        this.valueClasses = _args;
    }
    private var _vg:Function = null;

    override public function get eventClass():Class {
        return (_Rc);
    }

    override public function set eventClass(_arg1:Class):void {
        _Rc = _arg1;
    }

    override public function set valueClasses(_arg1:Array):void {
        _un = ((_arg1) ? _arg1.slice() : []);
        var _local2:int = _un.length;
        while (_local2--) {
            if (!(_un[_local2] is Class)) {
                throw (new ArgumentError((((((("Invalid valueClasses argument: " + "item at index ") + _local2) + " should be a Class but was:<") + _un[_local2]) + ">.") + getQualifiedClassName(_un[_local2]))));
            }
            ;
        }
        ;
    }

    protected function get _0iy():Function {
        return (this._vg);
    }

    public function _7A(..._args):_0q {
        var objectListOrFunction:Array = _args;
        if ((((objectListOrFunction.length == 1)) && ((objectListOrFunction[0] is Function)))) {
            this._vg = (objectListOrFunction[0] as Function);
            if (this._vg.length > 1) {
                throw (new ArgumentError((("Mapping function has " + this._vg.length) + " arguments but it needs zero or one of type Event")));
            }
            ;
        } else {
            this._vg = function ():Object {
                return (objectListOrFunction);
            };
        }
        ;
        return (this);
    }

    override public function dispatchEvent(_arg1:Event):Boolean {
        var _local4:Array;
        var _local5:Object;
        var _local6:Class;
        var _local7:int;
        var _local2:Object = this._PC(_arg1);
        var _local3:int = valueClasses.length;
        if ((_local2 is Array)) {
            _local4 = (_local2 as Array);
            _local7 = 0;
            while (_local7 < _local3) {
                _local5 = _local4[_local7];
                _local6 = valueClasses[_local7];
                if ((((_local5 === null)) || ((_local5 is _local6)))) {
                } else {
                    throw (new ArgumentError((((("Value object <" + _local5) + "> is not an instance of <") + _local6) + ">.")));
                }
                ;
                _local7++;
            }
            ;
        } else {
            if (_local3 > 1) {
                throw (new ArgumentError("Expected more than one value."));
            }
            ;
            if (!(_local2 is valueClasses[0])) {
                throw (new ArgumentError((((("Mapping returned " + getQualifiedClassName(_local2)) + ", expected ") + valueClasses[0]) + ".")));
            }
            ;
        }
        ;
        return (super.dispatchEvent(_arg1));
    }

    override protected function onNativeEvent(_arg1:Event):void {
        var _local4:Array;
        var _local2:Object = this._PC(_arg1);
        var _local3:_1IG = _0qP;
        if ((_local2 is Array)) {
            if ((((valueClasses.length == 1)) && ((valueClasses[0] == Array)))) {
                while (_local3.nonEmpty) {
                    _local3._11w.execute1(_local2);
                    _local3 = _local3._qh;
                }
                ;
            } else {
                _local4 = (_local2 as Array);
                while (_local3.nonEmpty) {
                    _local3._11w.execute(_local4);
                    _local3 = _local3._qh;
                }
                ;
            }
            ;
        } else {
            while (_local3.nonEmpty) {
                _local3._11w.execute1(_local2);
                _local3 = _local3._qh;
            }
            ;
        }
        ;
    }

    protected function _PC(_arg1:Event):Object {
        if (this._0iy != null) {
            if (this._0iy.length == 1) {
                return (this._0iy(_arg1));
            }
            ;
            return (this._0iy());
        }
        ;
        if (valueClasses.length == 0) {
            return ([]);
        }
        ;
        throw (new ArgumentError((("There are valueClasses set to be dispatched <" + valueClasses) + "> but mappingFunction is null.")));
    }


}
}//package _0Ql

