// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0JT

package _14 {
import flash.utils.IDataInput;

public class _0JT extends _eJ {

    public function _0JT(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var name_:String;
    public var guildName_:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.name_ = _arg1.readUTF();
        this.guildName_ = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("INVITEDTOGUILD", "name_", "guildName_"));
    }


}
}//package _14-

