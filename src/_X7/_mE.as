// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X7._mE

package _X7 {
import _03u._1hp;
import _03u._BW;
import _03u._Fk;
import _03u._wP;

import _0tO._Z6;

import _10a._FU;

import _1i0._1aE;

import _GD._7t;

import _wm._vG;

public class _mE {

    [Inject]
    public var _2:_Z6;
    [Inject]
    public var update:_17k;
    [Inject]
    public var error:_1aE;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var player:_FU;
    [Inject]
    public var death:_7t;
    [Inject]
    public var model:_vG;


    public function execute():void {
        this._2.charId = this._og();
        var _local1:_Fk = new _Fk(this._2, this._z2(), this._0qZ());
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _og():int {
        if (((this.player._003()) && (this.death._0K3()))) {
            return (this.death._1jw().charId_);
        }
        ;
        return (-1);
    }

    private function _z2():_wP {
        return (new _1hp(this.update));
    }

    private function _0qZ():_wP {
        return (new _1hp(this.error, this._2));
    }


}
}//package _X7

