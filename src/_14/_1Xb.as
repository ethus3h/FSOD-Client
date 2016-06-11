// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._1Xb

package _14 {
import flash.utils.IDataInput;

public class _1Xb extends _eJ {

    public function _1Xb(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var result_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.result_ = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("INVRESULT", "result_"));
    }


}
}//package _14-

