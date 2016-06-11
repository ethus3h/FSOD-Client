// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Zj._Gi

package _0Zj {
import _03o._xq;

import _0cA._0bz;

import _0fB._0F;
import _0fB._17U;

import flash.events.Event;

public class _Gi {

    public function _Gi(_arg1:_0F, _arg2:_xq, _arg3:_0bz, _arg4:Class) {
        this._lQ = _arg1;
        this._1FV = _arg2;
        this._6y = _arg3._1L();
        this._Rc = _arg4;
        this._factory = new _1Gc(this._6y);
    }
    private var _lQ:_0F;
    private var _1Yr:Vector.<_17U>;
    private var _1FV:_xq;
    private var _6y:_0bz;
    private var _Rc:Class;
    private var _factory:_1Gc;

    private function _6S(_arg1:Class):Boolean {
        return (((!(this._Rc)) || ((_arg1 == this._Rc))));
    }

    private function _UI(_arg1:Class):Boolean {
        return (!((_arg1 == Event)));
    }

    private function _09c(_arg1:Event, _arg2:Class):void {
        this._6y.map(Event)._nR(_arg1);
        if (this._UI(_arg2)) {
            this._6y.map(((this._Rc) || (_arg2)))._nR(_arg1);
        }
        ;
    }

    private function _0PD(_arg1:Class):void {
        this._6y._g(Event);
        if (this._UI(_arg1)) {
            this._6y._g(((this._Rc) || (_arg1)));
        }
        ;
    }

    private function _n(_arg1:Event, _arg2:Class):void {
        var _local3:Object;
        var _local4:_17U = this._1FV._11w;
        while (_local4) {
            _local4._1g1();
            this._09c(_arg1, _arg2);
            _local3 = this._factory.create(_local4);
            this._0PD(_arg2);
            if (_local3) {
                this._1iO(_local4);
                _local3.execute();
            }
            ;
            _local4 = _local4.next;
        }
        ;
    }

    private function _1iO(_arg1:_17U):void {
        if (_arg1._21I) {
            this._lQ._1G4(_arg1);
        }
        ;
    }

    public function execute(_arg1:Event):void {
        var _local2:Class = (_arg1["constructor"] as Class);
        if (this._6S(_local2)) {
            this._n(_arg1, _local2);
        }
        ;
    }


}
}//package _0Zj

