// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0kz

package _14 {
import flash.utils.IDataInput;

public class _0kz extends _eJ {

    public function _0kz(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var success_:Boolean;
    public var errorText_:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.success_ = _arg1.readBoolean();
        this.errorText_ = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("NAMERESULT", "success_", "errorText_"));
    }


}
}//package _14-

