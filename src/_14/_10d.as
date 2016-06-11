// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._10d

package _14 {
import _11j._1ST;

import flash.utils.IDataInput;

public class _10d extends _eJ {

    public static const _0Qx:int = 0;
    public static const _tC:int = 1;
    public static const _1HB:int = 2;
    public static const _0eT:int = 3;
    public static const _0gN:int = 4;
    public static const _0IX:int = 5;
    public static const _1aG:int = 6;
    public static const _0oU:int = 7;
    public static const _0DJ:int = 8;
    public static const _1ON:int = 9;
    public static const _r2:int = 10;
    public static const _0Qq:int = 11;
    public static const _qS:int = 12;
    public static const _0VV:int = 13;
    public static const _8s:int = 14;
    public static const _1Du:int = 15;
    public static const _0qH:int = 16;
    public static const _1l9:int = 17;
    public static const _1g0:int = 18;
    public static const _ko:int = 19;

    public function _10d(_arg1:uint, _arg2:Function) {
        this.pos1_ = new _1ST();
        this.pos2_ = new _1ST();
        super(_arg1, _arg2);
    }
    public var effectType_:uint;
    public var targetObjectId_:int;
    public var pos1_:_1ST;
    public var pos2_:_1ST;
    public var color_:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.effectType_ = _arg1.readUnsignedByte();
        this.targetObjectId_ = _arg1.readInt();
        this.pos1_.parseFromInput(_arg1);
        this.pos2_.parseFromInput(_arg1);
        this.color_ = _arg1.readInt();
    }

    override public function toString():String {
        return (formatToString("SHOW_EFFECT", "effectType_", "targetObjectId_", "pos1_", "pos2_", "color_"));
    }


}
}//package _14-

