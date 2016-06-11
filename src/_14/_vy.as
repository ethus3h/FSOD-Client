// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._vy

package _14 {
import _11j._1ST;

import flash.utils.IDataInput;

public class _vy extends _eJ {

    public function _vy(_arg1:uint, _arg2:Function) {
        this.pos_ = new _1ST();
        super(_arg1, _arg2);
    }
    public var pos_:_1ST;
    public var radius_:Number;
    public var damage_:int;
    public var effect_:int;
    public var duration_:Number;
    public var origType_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.pos_.parseFromInput(_arg1);
        this.radius_ = _arg1.readFloat();
        this.damage_ = _arg1.readUnsignedShort();
        this.effect_ = _arg1.readUnsignedByte();
        this.duration_ = _arg1.readFloat();
        this.origType_ = _arg1.readUnsignedShort();
    }

    override public function toString():String {
        return (formatToString("AOE", "pos_", "radius_", "damage_", "effect_", "duration_", "origType_"));
    }


}
}//package _14-

