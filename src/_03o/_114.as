// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03o._114

package _03o {
import _0fB._0F;
import _0fB._17U;

import _14w.*;

import flash.utils.Dictionary;

public class _114 implements _0YL, _Xp {

    private const _1Yr:Dictionary = new Dictionary();

    public function _114(_arg1:_0F) {
        this._lQ = _arg1;
    }
    private var _lQ:_0F;

    public function _UN(_arg1:Class):_1zR {
        return (((this.locked(this._1Yr[_arg1])) || (this._T(_arg1))));
    }

    public function _14l(_arg1:Class):void {
        var _local2:_17U = this._1Yr[_arg1];
        ((_local2) && (this._lQ._1G4(_local2)));
        delete this._1Yr[_arg1];
    }

    public function _1qu():void {
        var _local1:_17U;
        for each (_local1 in this._1Yr) {
            this._lQ._1G4(_local1);
            delete this._1Yr[_local1.commandClass];
        }
        ;
    }

    private function _T(_arg1:Class):_vo {
        var _local2:_vo = new _vo(_arg1);
        this._lQ._de(_local2);
        this._1Yr[_arg1] = _local2;
        return (_local2);
    }

    private function locked(_arg1:_vo):_vo {
        if (!_arg1) {
            return (null);
        }
        ;
        _arg1._1Dx();
        return (_arg1);
    }


}
}//package _03o

