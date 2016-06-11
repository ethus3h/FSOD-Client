// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TC._0fy

package _1TC {
import _14._eJ;

import flash.utils.IDataInput;

public class _0fy extends _eJ {

    public function _0fy(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var type:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.type = _arg1.readInt();
    }


}
}//package _1TC

