// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_u5._AK

package _u5 {
import flash.display3D.Program3D;
import flash.utils.ByteArray;

public class _AK {

    public function _AK(_arg1:Program3D) {
        this._0Ee = _arg1;
    }
    private var _0Ee:Program3D;

    public function upload(_arg1:ByteArray, _arg2:ByteArray):void {
        this._0Ee.upload(_arg1, _arg2);
    }

    public function _W0():Program3D {
        return (this._0Ee);
    }


}
}//package _u5

