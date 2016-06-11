// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._1VB

package _14 {
import flash.utils.IDataInput;

public class _1VB extends _eJ {

    public static const _PF:int = 4;
    public static const _1Ji:int = 5;
    public static const _1gy:int = 6;
    public static const _0tL:int = 7;

    public function _1VB(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var errorId_:int;
    public var errorDescription_:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.errorId_ = _arg1.readInt();
        this.errorDescription_ = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("FAILURE", "errorId_", "errorDescription_"));
    }


}
}//package _14-

