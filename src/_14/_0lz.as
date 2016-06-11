// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0lz

package _14 {
import flash.utils.IDataInput;

public class _0lz extends _eJ {

    public function _0lz(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var _is:int;
    public var _0aw:int;
    public var _1tG:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this._is = _arg1.readInt();
        this._0aw = _arg1.readInt();
        this._1tG = _arg1.readInt();
    }


}
}//package _14-

