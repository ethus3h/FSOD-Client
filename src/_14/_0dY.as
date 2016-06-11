// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0dY

package _14 {
import _11j._1ST;

import flash.utils.IDataInput;

public class _0dY extends _eJ {

    public function _0dY(_arg1:uint, _arg2:Function) {
        this.startingPos_ = new _1ST();
        super(_arg1, _arg2);
    }
    public var bulletId_:uint;
    public var ownerId_:int;
    public var bulletType_:int;
    public var startingPos_:_1ST;
    public var angle_:Number;
    public var damage_:int;
    public var numShots_:int;
    public var angleInc_:Number;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.bulletId_ = _arg1.readUnsignedByte();
        this.ownerId_ = _arg1.readInt();
        this.bulletType_ = _arg1.readUnsignedByte();
        this.startingPos_.parseFromInput(_arg1);
        this.angle_ = _arg1.readFloat();
        this.damage_ = _arg1.readShort();
        if (_arg1.bytesAvailable > 0) {
            this.numShots_ = _arg1.readUnsignedByte();
            this.angleInc_ = _arg1.readFloat();
        } else {
            this.numShots_ = 1;
            this.angleInc_ = 0;
        }
        ;
    }

    override public function toString():String {
        return (formatToString("SHOOT", "bulletId_", "ownerId_", "bulletType_", "startingPos_", "angle_", "damage_", "numShots_", "angleInc_"));
    }


}
}//package _14-

