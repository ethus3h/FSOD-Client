// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Sm._0N3

package _1Sm {
import flash.errors.IllegalOperationError;
import flash.utils.getQualifiedClassName;

public class _0N3 implements _0Jk {

    public function _0N3(..._args) {
        this._0qP = _1IG.NIL;
        super();
        this.valueClasses = (((((_args.length == 1)) && ((_args[0] is Array)))) ? _args[0] : _args);
    }
    protected var _un:Array;
    protected var _0qP:_1IG;

    [ArrayElementType(elementType="Class")]
    public function get valueClasses():Array {
        return (this._un);
    }

    public function set valueClasses(_arg1:Array):void {
        this._un = ((_arg1) ? _arg1.slice() : []);
        var _local2:int = this._un.length;
        while (_local2--) {
            if (!(this._un[_local2] is Class)) {
                throw (new ArgumentError((((((("Invalid valueClasses argument: " + "item at index ") + _local2) + " should be a Class but was:<") + this._un[_local2]) + ">.") + getQualifiedClassName(this._un[_local2]))));
            }
            ;
        }
        ;
    }

    public function get _0jq():uint {
        return (this._0qP.length);
    }

    public function addOnce(_arg1:Function):_1xK {
        return (this._1Pu(_arg1, true));
    }

    public function remove(_arg1:Function):_1xK {
        var _local2:_1xK = this._0qP.find(_arg1);
        if (!_local2) {
            return (null);
        }
        ;
        this._0qP = this._0qP._149(_arg1);
        return (_local2);
    }

    public function removeAll():void {
        this._0qP = _1IG.NIL;
    }

    public function dispatch(..._args):void {
        var _local2:int = this._un.length;
        var _local3:int = _args.length;
        if (_local3 < _local2) {
            throw (new ArgumentError(((((("Incorrect number of arguments. " + "Expected at least ") + _local2) + " but received ") + _local3) + ".")));
        }
        ;
        var _local4:int;
        while (_local4 < _local2) {
            if ((((_args[_local4] is this._un[_local4])) || ((_args[_local4] === null)))) {
            } else {
                throw (new ArgumentError((((("Value object <" + _args[_local4]) + "> is not an instance of <") + this._un[_local4]) + ">.")));
            }
            ;
            _local4++;
        }
        ;
        var _local5:_1IG = this._0qP;
        if (_local5.nonEmpty) {
            while (_local5.nonEmpty) {
                _local5._11w.execute(_args);
                _local5 = _local5._qh;
            }
            ;
        }
        ;
    }

    protected function _1Pu(_arg1:Function, _arg2:Boolean = false):_1xK {
        var _local3:_1xK;
        if (this._0D1(_arg1, _arg2)) {
            _local3 = new Slot(_arg1, this, _arg2);
            this._0qP = this._0qP.prepend(_local3);
            return (_local3);
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
        if (!_local3) {
            return (true);
        }
        ;
        if (_local3.once != _arg2) {
            throw (new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first."));
        }
        ;
        return (false);
    }


}
}//package _1Sm

