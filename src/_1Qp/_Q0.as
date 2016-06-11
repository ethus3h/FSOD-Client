// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Qp._Q0

package _1Qp {
import flash.events.Event;

public class _Q0 extends Event {

    public static const _183:String = "preMappingCreate";
    public static const _st:String = "postMappingCreate";
    public static const _Nt:String = "preMappingChange";
    public static const _0Cr:String = "postMappingChange";
    public static const _02a:String = "postMappingRemove";
    public static const _0qV:String = "mappingOverride";

    public function _Q0(_arg1:String, _arg2:Class, _arg3:String, _arg4:_at) {
        super(_arg1);
        this._0pc = _arg2;
        this._eU = _arg3;
        this.mapping = _arg4;
    }
    public var _0pc:Class;
    public var _eU:String;
    public var mapping:_at;

    override public function clone():Event {
        return (new _Q0(type, this._0pc, this._eU, this.mapping));
    }


}
}//package _1Qp

