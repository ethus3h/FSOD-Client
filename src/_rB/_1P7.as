// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_rB._1P7

package _rB {
import _0Rk._0Vz;

import _1Sm._sy;

public class _1P7 {

    public function _1P7() {
        this._19D = new _sy();
        super();
    }
    public var _1To:int = 0;
    public var _19D:_sy;
    private var _1CV:Object;
    private var initialized:Boolean;

    public function _1Q5():Boolean {
        return (this.initialized);
    }

    public function _06D(_arg1:int):_0Vz {
        return (this._1CV[_arg1]);
    }

    public function _0YU(_arg1:int):Boolean {
        return ((_arg1 in this._1CV));
    }

    public function _14S(_arg1:Array):void {
        var _local2:_0Vz;
        this._1CV = {};
        for each (_local2 in _arg1) {
            _local2._19D.add(this._0jo);
            this._1CV[_local2.packageID] = _local2;
        }
        ;
        this.initialized = true;
        this._19D.dispatch();
    }

    public function _0BW(_arg1:int):Boolean {
        var _local2:_0Vz = this._1CV[_arg1];
        return (((_local2) && (_local2._1q6())));
    }

    public function _sf():_0Vz {
        var _local2:_0Vz;
        var _local1:_0Vz;
        for each (_local2 in this._1CV) {
            if ((((_local1 == null)) || ((_local2.priority < _local1.priority)))) {
                _local1 = _local2;
            }
            ;
        }
        ;
        return (_local2);
    }

    public function _0s9():Boolean {
        return ((((this._1To == 0)) && (!(("production".toLowerCase() == "localhost")))));
    }

    public function _vF():Boolean {
        var _local1:Object;
        for each (_local1 in this._1CV) {
            return (true);
        }
        ;
        return (false);
    }

    private function _0jo():void {
        this._19D.dispatch();
    }


}
}//package _rB

