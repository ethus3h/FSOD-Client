// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0m1

package _14 {
import flash.utils.IDataInput;

public class _0m1 extends _eJ {

    public function _0m1(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var name_:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.name_ = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("TRADEREQUESTED", "name_"));
    }


}
}//package _14-

