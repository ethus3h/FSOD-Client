// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0N._I7

package _0N {
import _fL._1b1;

import flash.utils.IDataOutput;

public class _I7 extends _1b1 {

    public function _I7(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var currency:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.currency);
    }

    override public function toString():String {
        return (formatToString("ENTER_ARENA", "currency"));
    }


}
}//package _0N

