// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0sZ

package _14 {
import flash.utils.IDataInput;

public class _0sZ extends _eJ {

    public static const _8k:int = 0;
    public static const _1CQ:int = 1;

    public function _0sZ(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var code_:int;
    public var description_:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.code_ = _arg1.readInt();
        this.description_ = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("TRADEDONE", "code_", "description_"));
    }


}
}//package _14-

