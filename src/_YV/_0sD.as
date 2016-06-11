// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_YV._0sD

package _YV {
import _03u._1hp;
import _03u._BW;
import _03u._Fk;
import _03u._wP;

import _1i0._nB;

import _Ny._jA;

import _U1.CharacterSelectionAndNewsScreen;

import _Vb.ErrorDialog;

import __Nj._M4;

public class _0sD {

    private const _0dy:String = "Unable to verify age";

    [Inject]
    public var _2:_jA;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _p2:_nB;
    [Inject]
    public var _nU:_M4;


    public function execute():void {
        var _local1:_Fk = new _Fk(this._2);
        _local1._1Pr(this._PZ());
        _local1._kJ(this._zR());
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _PZ():_wP {
        return (new _1hp(this._p2, new CharacterSelectionAndNewsScreen()));
    }

    private function _zR():_wP {
        return (new _1hp(this._nU, new ErrorDialog(this._0dy)));
    }


}
}//package _YV

