// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._ee

package _14 {
import _Qu._cx;

import flash.utils.IDataInput;

public class _ee extends _cx {

    public function _ee(_arg1:uint, _arg2:Function = null) {
        super(_arg1, _arg2);
    }
    public var type:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.type = _arg1.readInt();
    }


}
}//package _14-

