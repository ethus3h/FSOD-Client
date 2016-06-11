// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bZ._1S6

package _bZ {
import _0fa._z4;

import _1Vz.*;

import _UB._1UH;
import _UB._hG;

import flash.utils.Dictionary;

public class _1S6 implements _1jz, _0pM, _20z {

    private const _1Yr:Dictionary = new Dictionary();

    public function _1S6(_arg1:_z4, _arg2:_1UH) {
        this._matcher = _arg1;
        this._handler = _arg2;
    }
    private var _matcher:_z4;
    private var _handler:_1UH;

    public function _1kd(_arg1:Class):_1WS {
        return (((this._1Fx(_arg1)) || (this._T(_arg1))));
    }

    public function _10r(_arg1:Class):_hG {
        return (this._1Yr[_arg1]);
    }

    public function _0l0(_arg1:Class):void {
        var _local2:_hG = this._1Yr[_arg1];
        delete this._1Yr[_arg1];
        this._handler._1G4(_local2);
    }

    public function _154():void {
        var _local1:_hG;
        for each (_local1 in this._1Yr) {
            delete this._1Yr[_local1._0LS];
            this._handler._1G4(_local1);
        }
        ;
    }

    private function _T(_arg1:Class):_1f8 {
        var _local2:_1f8 = new _1f8(this._matcher, _arg1);
        this._handler._de(_local2);
        this._1Yr[_arg1] = _local2;
        return (_local2);
    }

    private function _1Fx(_arg1:Class):_1f8 {
        var _local2:_1f8 = this._1Yr[_arg1];
        if (_local2) {
            _local2._1Dx();
        }
        ;
        return (_local2);
    }


}
}//package _bZ

