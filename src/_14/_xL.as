// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._xL

package _14 {
import _11j._1ST;

import flash.utils.IDataInput;

public class _xL extends _eJ {

    public function _xL(_arg1:uint, _arg2:Function) {
        this.startingPos_ = new _1ST();
        super(_arg1, _arg2);
    }
    public var bulletId_:uint;
    public var ownerId_:int;
    public var containerType_:int;
    public var startingPos_:_1ST;
    public var angle_:Number;
    public var damage_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.bulletId_ = _arg1.readUnsignedByte();
        this.ownerId_ = _arg1.readInt();
        this.containerType_ = _arg1.readInt();
        this.startingPos_.parseFromInput(_arg1);
        this.angle_ = _arg1.readFloat();
        this.damage_ = _arg1.readShort();
    }

    override public function toString():String {
        return (formatToString("SHOOT", "bulletId_", "ownerId_", "containerType_", "startingPos_", "angle_", "damage_"));
    }


}
}//package _14-

