// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._1b1

package _fL {
import _Qu._cx;

import flash.utils.IDataInput;

public class _1b1 extends _cx {

    public function _1b1(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }

    final override public function parseFromInput(_arg1:IDataInput):void {
        throw (new Error((("Client should not receive " + id) + " messages")));
    }


}
}//package _fL

