// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_w9._1fI

package _w9 {
import _14._eJ;

import flash.utils.IDataInput;

public class _1fI extends _eJ {

    public function _1fI(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var _is:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this._is = _arg1.readInt();
    }


}
}//package _w9

