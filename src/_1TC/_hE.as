// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TC._hE

package _1TC {
import _14._eJ;

import flash.utils.IDataInput;

public class _hE extends _eJ {

    public function _hE(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var _15w:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this._15w = _arg1.readInt();
    }


}
}//package _1TC

