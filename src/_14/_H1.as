// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._H1

package _14 {
import flash.utils.IDataInput;

public class _H1 extends _eJ {

    public function _H1(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var cleanPasswordStatus:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.cleanPasswordStatus = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("PASSWORDPROMPT", "cleanPasswordStatus"));
    }


}
}//package _14-

