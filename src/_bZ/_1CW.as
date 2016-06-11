// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bZ._1CW

package _bZ {
import _0cA._0bz;

import _0fa._z4;

import _0hL.applyHooks;
import _0hL.guardsApprove;

import _UB.*;

import flash.events.EventDispatcher;
import flash.utils.Dictionary;

public class _1CW extends EventDispatcher implements _0fY {

    private const _0bM:Dictionary = new Dictionary();

    public function _1CW(_arg1:_0bz) {
        this._6y = _arg1;
    }
    private var _6y:_0bz;

    public function _1Pb(_arg1:Object, _arg2:_hG):Object {
        return (((this._0bM[_arg1]) ? this._0bM[_arg1][_arg2] : null));
    }

    public function _ux(_arg1:Object, _arg2:Class, _arg3:Array):Array {
        var _local5:_z4;
        var _local6:Object;
        var _local7:_hG;
        var _local4:Array = [];
        for each (_local7 in _arg3) {
            _local6 = this._1Pb(_arg1, _local7);
            if (!_local6) {
                _local5 = _local7._0ON;
                this._QP(_local5, _arg2, _arg1);
                _local6 = this._0Vu(_arg1, _local7);
                this._1uR(_local5, _arg2, _arg1);
            }
            ;
            if (_local6) {
                _local4.push(_local6);
            }
            ;
        }
        ;
        return (_local4);
    }

    public function _1B9(_arg1:Object):void {
        var _local3:Object;
        var _local2:Dictionary = this._0bM[_arg1];
        if (!_local2) {
            return;
        }
        ;
        if (hasEventListener(_1Xg._dj)) {
            for (_local3 in _local2) {
                dispatchEvent(new _1Xg(_1Xg._dj, _local2[_local3], _arg1, (_local3 as _hG), this));
            }
            ;
        }
        ;
        delete this._0bM[_arg1];
    }

    public function _0MF():void {
        var _local1:Object;
        for (_local1 in this._0bM) {
            this._1B9(_local1);
        }
        ;
    }

    private function _0Vu(_arg1:Object, _arg2:_hG):Object {
        var _local3:Object = this._1Pb(_arg1, _arg2);
        if (_local3) {
            return (_local3);
        }
        ;
        if (guardsApprove(_arg2._1Oq, this._6y)) {
            _local3 = this._6y.getInstance(_arg2._0LS);
            this._6y.map(_arg2._0LS)._nR(_local3);
            applyHooks(_arg2._Ya, this._6y);
            this._6y._g(_arg2._0LS);
            this._0cL(_local3, _arg1, _arg2);
        }
        ;
        return (_local3);
    }

    private function _0cL(_arg1:Object, _arg2:Object, _arg3:_hG):void {
        this._0bM[_arg2] = ((this._0bM[_arg2]) || (new Dictionary()));
        this._0bM[_arg2][_arg3] = _arg1;
        if (hasEventListener(_1Xg._00N)) {
            dispatchEvent(new _1Xg(_1Xg._00N, _arg1, _arg2, _arg3, this));
        }
        ;
    }

    private function _QP(_arg1:_z4, _arg2:Class, _arg3:Object):void {
        var _local4:Class;
        var _local5:Vector.<Class> = this._a4(_arg1, _arg2);
        for each (_local4 in _local5) {
            this._6y.map(_local4)._nR(_arg3);
        }
        ;
    }

    private function _1uR(_arg1:_z4, _arg2:Class, _arg3:Object):void {
        var _local4:Class;
        var _local5:Vector.<Class> = this._a4(_arg1, _arg2);
        for each (_local4 in _local5) {
            if (this._6y._R(_local4)) {
                this._6y._g(_local4);
            }
            ;
        }
        ;
    }

    private function _a4(_arg1:_z4, _arg2:Class):Vector.<Class> {
        var _local3:Vector.<Class> = _arg1._165.concat(_arg1._0fw);
        if (_local3.indexOf(_arg2) == -1) {
            _local3.push(_arg2);
        }
        ;
        return (_local3);
    }


}
}//package _bZ

