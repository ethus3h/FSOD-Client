// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._03P

package _14 {
import flash.utils.IDataInput;

public class _03P extends _eJ {

    public static const _o8:int = -1;
    public static const _1Ih:int = 0;
    public static const _01l:int = 1;
    public static const _RZ:int = 2;
    public static const _1Fi:int = 3;
    public static const _0uP:int = 4;
    public static const _01v:int = 5;
    public static const _5w:int = 6;
    public static const _1AC:int = 7;

    public function _03P(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var result_:int;
    public var resultString_:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.result_ = _arg1.readInt();
        this.resultString_ = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("BUYRESULT", "result_", "resultString_"));
    }


}
}//package _14-

