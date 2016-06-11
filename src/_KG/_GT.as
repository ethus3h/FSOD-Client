// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_KG._GT

package _KG {
import _005._08z;

import _1PM.*;

import _1RN._035;

public class _GT implements _041 {

    public function _GT(_arg1:_Ld) {
        this._4B = _arg1._sk.getInstance(_035);
        this._7l = new _08z();
    }
    private var _4B:_035;
    private var _7l:_08z;

    public function log(_arg1:Object, _arg2:uint, _arg3:int, _arg4:String, _arg5:Array = null):void {
        var _local6:String = ((((_0tC.NAME[_arg2] + " ") + _arg1) + " ") + this._7l._else(_arg4, _arg5));
        this._4B.dispatch(_local6);
    }


}
}//package _KG

