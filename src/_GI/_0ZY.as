// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._0ZY

package _GI {
import _0pG._Qq;

import com.company.assembleegameclient.objects._0sh;
import com.company.assembleegameclient.objects._1kQ;

public class _0ZY {

    public function _0ZY(_arg1:XML) {
        this.id_ = _arg1.@id;
        this._1Ip = new _0sh(_arg1);
        if (_arg1.hasOwnProperty("Size")) {
            this.size_ = Number(_arg1.Size);
        }
        ;
        if (_arg1.hasOwnProperty("Z")) {
            this.z_ = Number(_arg1.Z);
        }
        ;
        if (_arg1.hasOwnProperty("Duration")) {
            this.duration_ = Number(_arg1.Duration);
        }
        ;
        if (_arg1.hasOwnProperty("Animation")) {
            this._on = new _Qq(_arg1);
        }
        ;
    }
    public var id_:String;
    public var _1Ip:_1kQ;
    public var size_:int = 100;
    public var z_:Number = 0;
    public var duration_:Number = 0;
    public var _on:_Qq = null;

}
}//package _GI

