// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._1oH

package _14 {
import flash.utils.IDataInput;

public class _1oH extends _eJ {

    public function _1oH(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var ok:Boolean;
    public var message:String;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.ok = _arg1.readBoolean();
        this.message = _arg1.readUTF();
    }

    override public function toString():String {
        return (formatToString("QUESTREDEEMRESPONSE", "ok", "message"));
    }


}
}//package _14-

