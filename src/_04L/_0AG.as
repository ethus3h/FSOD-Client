// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04L._0AG

package _04L {
import _14._eJ;

import flash.utils.IDataInput;

public class _0AG extends _eJ {

    public function _0AG(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var currentRuntime:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.currentRuntime = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("IMMINENTARENAWAVE", "currentRuntime"));
    }


}
}//package _04L

