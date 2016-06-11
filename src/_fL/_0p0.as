// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._0p0

package _fL {
import _11j._8p;

import flash.utils.IDataOutput;

public class _0p0 extends _1b1 {

    public function _0p0(_arg1:uint, _arg2:Function) {
        this.slotObject_ = new _8p();
        super(_arg1, _arg2);
    }
    public var slotObject_:_8p;

    override public function writeToOutput(_arg1:IDataOutput):void {
        this.slotObject_.writeToOutput(_arg1);
    }

    override public function toString():String {
        return (formatToString("INVDROP", "slotObject_"));
    }


}
}//package _fL

