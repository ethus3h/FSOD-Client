// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._0Si

package _fL {
import flash.utils.IDataOutput;

public class _0Si extends _1b1 {

    public function _0Si(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var time_:int;
    public var bulletId_:uint;
    public var targetId_:int;
    public var kill_:Boolean;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.time_);
        _arg1.writeByte(this.bulletId_);
        _arg1.writeInt(this.targetId_);
        _arg1.writeBoolean(this.kill_);
    }

    override public function toString():String {
        return (formatToString("ENEMYHIT", "time_", "bulletId_", "targetId_", "kill_"));
    }


}
}//package _fL

