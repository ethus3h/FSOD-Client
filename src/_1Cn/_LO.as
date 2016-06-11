// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._LO

package _1Cn {
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.events.EventDispatcher;
import flash.utils.Dictionary;

public class _LO extends EventDispatcher {

    private const _bindings:Vector.<_5M> = new Vector.<_5M>();
    private const _la:Vector.<_5M> = new Vector.<_5M>();
    private const _bindingByContainer:Dictionary = new Dictionary();


    public function get _0L6():Vector.<_5M> {
        return (this._bindings);
    }

    public function get _PD():Vector.<_5M> {
        return (this._la);
    }

    public function _0i5(_arg1:DisplayObjectContainer):_5M {
        return ((this._bindingByContainer[_arg1] = ((this._bindingByContainer[_arg1]) || (this._2z(_arg1)))));
    }

    public function _1ze(_arg1:DisplayObjectContainer):_5M {
        var _local2:_5M = this._bindingByContainer[_arg1];
        ((_local2) && (this._0yQ(_local2)));
        return (_local2);
    }

    public function _0C9(_arg1:DisplayObject):_5M {
        var _local3:_5M;
        var _local2:DisplayObjectContainer = _arg1.parent;
        while (_local2) {
            _local3 = this._bindingByContainer[_local2];
            if (_local3) {
                return (_local3);
            }
            ;
            _local2 = _local2.parent;
        }
        ;
        return (null);
    }

    public function _0F9(_arg1:DisplayObjectContainer):_5M {
        return (this._bindingByContainer[_arg1]);
    }

    private function _2z(_arg1:DisplayObjectContainer):_5M {
        var _local3:_5M;
        var _local2:_5M = new _5M(_arg1);
        this._bindings.push(_local2);
        _local2.addEventListener(_00I._0zS, this._0XX);
        _local2.parent = this._0C9(_arg1);
        if (_local2.parent == null) {
            this._0eU(_local2);
        }
        ;
        for each (_local3 in this._bindingByContainer) {
            if (_arg1.contains(_local3.container)) {
                if (!_local3.parent) {
                    this._0Ri(_local3);
                    _local3.parent = _local2;
                } else {
                    if (!_arg1.contains(_local3.parent.container)) {
                        _local3.parent = _local2;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        dispatchEvent(new _0NX(_0NX._1Ko, _local2.container));
        return (_local2);
    }

    private function _0yQ(_arg1:_5M):void {
        var _local3:_5M;
        delete this._bindingByContainer[_arg1.container];
        var _local2:int = this._bindings.indexOf(_arg1);
        this._bindings.splice(_local2, 1);
        _arg1.removeEventListener(_00I._0zS, this._0XX);
        if (!_arg1.parent) {
            this._0Ri(_arg1);
        }
        ;
        for each (_local3 in this._bindingByContainer) {
            if (_local3.parent == _arg1) {
                _local3.parent = _arg1.parent;
                if (!_local3.parent) {
                    this._0eU(_local3);
                }
                ;
            }
            ;
        }
        ;
        dispatchEvent(new _0NX(_0NX._yv, _arg1.container));
    }

    private function _0eU(_arg1:_5M):void {
        this._la.push(_arg1);
        dispatchEvent(new _0NX(_0NX._0dn, _arg1.container));
    }

    private function _0Ri(_arg1:_5M):void {
        var _local2:int = this._la.indexOf(_arg1);
        this._la.splice(_local2, 1);
        dispatchEvent(new _0NX(_0NX._9r, _arg1.container));
    }

    private function _0XX(_arg1:_00I):void {
        this._0yQ((_arg1.target as _5M));
    }


}
}//package _1Cn

