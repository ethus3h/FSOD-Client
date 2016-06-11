// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0._OF

package _Z0 {
import _X4.GeneralProjectileComparison;
import _X4.PoisonComparison;
import _X4._0SC;
import _X4._0YI;
import _X4._0fZ;
import _X4._11U;
import _X4._1Lg;
import _X4._1MH;
import _X4._1Q1;
import _X4._1Zz;
import _X4._1m9;
import _X4._1xc;
import _X4._A2;
import _X4._NJ;
import _X4._fp;
import _X4._sZ;

import _gl._0An;

public class _OF {

    public function _OF() {
        var _local1:GeneralProjectileComparison = new GeneralProjectileComparison();
        var _local2:_1m9 = new _1m9();
        this.hash = {};
        this.hash[_0An._1VX] = _local1;
        this.hash[_0An._16B] = _local1;
        this.hash[_0An._1h5] = _local1;
        this.hash[_0An._MK] = new _0SC();
        this.hash[_0An._06X] = new _1Lg();
        this.hash[_0An._0Kk] = _local2;
        this.hash[_0An._Sv] = _local2;
        this.hash[_0An._06w] = _local1;
        this.hash[_0An._W4] = new _0fZ();
        this.hash[_0An._Hp] = new _fp();
        this.hash[_0An._0sG] = new _1MH();
        this.hash[_0An._1yU] = _local2;
        this.hash[_0An._0c7] = new _11U();
        this.hash[_0An._0Td] = new _1xc();
        this.hash[_0An._Qb] = _local1;
        this.hash[_0An._0GM] = new PoisonComparison();
        this.hash[_0An._JN] = new _A2();
        this.hash[_0An._0UC] = new _1Q1();
        this.hash[_0An._0He] = new _1Zz();
        this.hash[_0An._11v] = new _NJ();
        this.hash[_0An._sa] = new _sZ();
        this.hash[_0An._0Ck] = _local1;
        this.hash[_0An._Gv] = _local1;
    }
    private var hash:Object;

    public function _1qE(_arg1:XML, _arg2:XML):_04e {
        var _local3:int = int(_arg1.SlotType);
        var _local4:_0YI = this.hash[_local3];
        var _local5:_04e = new _04e();
        if (_local4 != null) {
            _local4._VG(_arg1, _arg2);
            _local5._13X = _local4._0ak;
            _local5._14 = _local4._14;
        }
        ;
        return (_local5);
    }


}
}//package _Z0

