// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1T._fv

package _1T {
import _19L.AGALMiniAssembler;

import flash.display3D.Context3DProgramType;
import flash.utils.ByteArray;

public class _fv extends AGALMiniAssembler {

    public function _fv() {
        var _local1:AGALMiniAssembler = new AGALMiniAssembler();
        _local1._14D(Context3DProgramType.VERTEX, (("m44 op, va0, vc0\n" + "add vt1, va1, vc4\n") + "mov v0, vt1"));
        this._1eU = _local1._qE;
    }
    private var _1eU:ByteArray;

    public function getVertexProgram():ByteArray {
        return (this._1eU);
    }


}
}//package _1T

