// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1T._10Q

package _1T {
import _19L.AGALMiniAssembler;

import flash.display3D.Context3DProgramType;
import flash.utils.ByteArray;

public class _10Q {

    public function _10Q() {
        var _local1:AGALMiniAssembler = new AGALMiniAssembler();
        _local1._14D(Context3DProgramType.FRAGMENT, (((((("tex ft1, v0, fs0 <2d>\n" + "mul ft1.x, ft1.x, fc2.x\n") + "mul ft1.y, ft1.y, fc2.y\n") + "mul ft1.z, ft1.z, fc2.z\n") + "mul ft1.w, ft1.w, fc2.w\n") + "add ft1, ft1, fc3\n") + "mov oc, ft1"));
        this._1eU = _local1._qE;
    }
    private var _1eU:ByteArray;

    public function getVertexProgram():ByteArray {
        return (this._1eU);
    }


}
}//package _1T

