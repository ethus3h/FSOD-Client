// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._eJ

package _14 {
import _Qu._cx;

import flash.utils.IDataOutput;

public class _eJ extends _cx {

    public function _eJ(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }

    final override public function writeToOutput(_arg1:IDataOutput):void {
        throw (new Error((("Client should not send " + id) + " messages")));
    }


}
}//package _14-

