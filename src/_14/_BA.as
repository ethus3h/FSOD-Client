// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._BA

package _14 {
import flash.utils.IDataInput;

public class _BA extends _eJ {

    public function _BA(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var success_:Boolean;
    public var lineBuilderJSON:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.success_ = _arg1.readBoolean();
        this.lineBuilderJSON = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("CREATEGUILDRESULT", "success_", "lineBuilderJSON"));
    }


}
}//package _14-

