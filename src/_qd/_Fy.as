// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_qd._Fy

package _qd {
import _1RN._lf;

public class _Fy implements _1yE {

    public function _Fy() {
        this._XP = {};
    }
    [Inject]
    public var _1f:_lf;
    private var _XP:Object;

    public function _0J6(_arg1:String, _arg2:int):void {
        var _local3:_06M = (this._XP[_arg1] = ((this._XP[_arg1]) || (new _06M(_arg1))));
        _local3._3k(_arg2);
        this._1f.dispatch(_local3);
    }


}
}//package _qd

